import 'package:audio_service/audio_service.dart';
import 'package:biboo/UI/Login/LoginBizbook.dart';
import 'package:biboo/UI/Player/audioHandler.dart';
import 'package:biboo/UI/Player/commom.dart';
import 'package:biboo/UI/Splash.dart';
import 'package:biboo/base.dart';
import 'package:biboo/bloc/audio_cubit/audio_cubit.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';

import 'UI/Player/music_player.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
    androidStopForegroundOnPause: true,
  );
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}
// void main() {
//   // runApp(const MyApp());

//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MyApp(), // Wrap your app
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AudioCubit>(create: (context) => AudioCubit(AudioPlayer()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // scrollBehavior: CustomScrollBehavior(),
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splash(),
      ),
    );
  }
}


// class CustomScrollBehavior extends MaterialScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//       BuildContext context, Widget child, ScrollableDetails details) {
//     return child;
//   }
// }

