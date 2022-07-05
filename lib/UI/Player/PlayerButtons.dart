// player_buttons.dart

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:just_audio/just_audio.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons(this._audioPlayer, {Key? key}) : super(key: key);

  final AudioPlayer _audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatTime(position)),
              Text(formatTime(duration - position))
            ],
          ),
        ),
        Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) async {
              final position = Duration(seconds: value.toInt());
              await _audioPlayer.seek(position);
            }),
        // StreamBuilder<bool>(
        //   stream: _audioPlayer.shuffleModeEnabledStream,
        //   builder: (context, snapshot) {
        //     return _shuffleButton(context, snapshot.data ?? false);
        //   },
        // ),
        // StreamBuilder<SequenceState>(
        //   stream: _audioPlayer.sequenceState,
        //   builder: (_, __) {
        //     return _previousButton();
        //   },
        // ),
        StreamBuilder<PlayerState>(
          stream: _audioPlayer.playerStateStream,
          builder: (_, snapshot) {
            final playerState = snapshot.data;
            return _playPauseButton(playerState!);
          },
        ),
        // StreamBuilder<SequenceState>(
        //   stream: _audioPlayer.sequenceStateStream,
        //   builder: (_, __) {
        //     return _nextButton();
        //   },
        // ),
        // StreamBuilder<LoopMode>(
        //   stream: _audioPlayer.loopModeStream,
        //   builder: (context, snapshot) {
        //     return _repeatButton(context, snapshot.data ?? LoopMode.off);
        //   },
        // ),
      ],
    );
  }

  Widget _playPauseButton(PlayerState playerState) {
    final processingState = playerState?.processingState;
    if (processingState == ProcessingState.buffering) {
      return Container(
        margin: EdgeInsets.all(8.0),
        width: 64.0,
        height: 64.0,
        child: CircularProgressIndicator(),
      );
    } else if (_audioPlayer.playing != true) {
      return IconButton(
        icon: Icon(Icons.play_arrow),
        iconSize: 64.0,
        onPressed: _audioPlayer.play,
      );
    } else if (processingState != ProcessingState.completed) {
      return IconButton(
        icon: Icon(Icons.pause),
        iconSize: 64.0,
        onPressed: _audioPlayer.pause,
      );
    } else {
      return IconButton(
        icon: Icon(Icons.replay),
        iconSize: 64.0,
        onPressed: () => _audioPlayer.seek(Duration.zero,
            index: _audioPlayer.effectiveIndices?.first),
      );
    }
  }
}

Duration position = Duration.zero;
Duration duration = Duration.zero;
String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(':');
}
