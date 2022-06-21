import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() { 
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    _init();
  }

  Future<void> _init() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);

    String url =
        'https://assets.mixkit.co/music/preview/mixkit-trip-hop-vibes-149.mp3';
    audioPlayer.setSourceUrl(url);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(20),
            //   child: Image.asset(
            //     'assets/image/1.jpg',
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // const SizedBox(
            //   height: 32,
            // ),
            // Text("Chương 02: Lý do khiến bạn chưa thành c.. "),
            // SizedBox(
            //   height: 32,
            // ),
            // Text("Phần 01: Thành công đến trong tay"),
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
                // activeColor: Colors.amber,
                inactiveColor: Colors.grey,
                thumbColor: Color(0xff3D40C6),
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {
                  final position = Duration(seconds: value.toInt());
                  await audioPlayer.seek(position);

                  await audioPlayer.resume();
                }),

            CircleAvatar(
              radius: 35,
              child: IconButton(
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                iconSize: 50,
                onPressed: () async {
                  if (isPlaying) {
                    await audioPlayer.pause();
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  } else {
                    await audioPlayer.resume();
                    // final Source a = ;

                    // audioPlayer.p
                    // audioPlayer.play(url);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
