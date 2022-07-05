import 'package:biboo/UI/Player/music_player.dart';
import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

import '../../UI/Player/a.dart';

import 'audio_state.dart';

class AudioCubit extends Cubit<AudioState> {
  AudioCubit(this.audioPlayer) : super(AudioState(player: audioPlayer));
  final AudioPlayer audioPlayer;

  void init() async {
    print('ok');
    await state.player.setUrl(
        'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    state.player.playerStateStream.listen((state) {
      if (state.playing) {
        print('play');
        changeState(true);
      } else {
        print('no play');
        pause();
      }
      switch (state.processingState) {
        case ProcessingState.idle:
          print('');
          break;
        case ProcessingState.loading:
          print('');

          break;
        case ProcessingState.buffering:
          print('');

          break;
        case ProcessingState.ready:
          print('');

          break;
        case ProcessingState.completed:
          print('');
      }
    });
    await state.player.play();
  }

  void stop() {
    state.player.stop();
  }

  void pause() {
    audioPlayer.pause();
  }

  void play() {
    state.player.play();
  }

  void seekToSeconds(int second) {
    Duration newDuration = Duration(seconds: second);
    audioPlayer.seek(newDuration);
  }

  void changeState(bool isPlay) {
    emit(AudioState(
      isPlaying: isPlay,
      player: audioPlayer,
    ));
  }

  Duration get duration =>
      state.player.duration ?? const Duration(milliseconds: 1);

  Future<void> changePositionPlayer(double value) async {
    if (duration.inSeconds >= 0) {
      final position = value * duration.inSeconds;
      // ignore: unawaited_futures
      state.player.seek(Duration(seconds: position.round()));
      // ignore: unawaited_futures
    }
  }

  Stream<PositionData> get positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          state.player.positionStream,
          state.player.bufferedPositionStream,
          state.player.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));
}
