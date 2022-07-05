import 'package:biboo/bloc/audio_cubit/audio_state.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

import '../../bloc/audio_cubit/audio_cubit.dart';

class PositionData {
  PositionData(this.position, this.bufferedPosition, this.duration);

  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class PlayerMusic extends StatefulWidget {
  const PlayerMusic({Key? key}) : super(key: key);

  @override
  State<PlayerMusic> createState() => _PlayerMusicState();
}

class _PlayerMusicState extends State<PlayerMusic> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<AudioCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: getProportionateScreenWidth(419),
                decoration: BoxDecoration(

                    // ],
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/image/png4.png",
                        ),
                        fit: BoxFit.fill)),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      left: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child: Assets.icons.ic_blackb.svg()),
                        SizedBox(
                          width: getProportionateScreenHeight(139),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              child: GestureDetector(
                                onTap: null,
                                child: SizedBox(
                                  width: 30,
                                  height: 22,
                                  child: Assets.icons.card.svg(
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: getProportionateScreenHeight(12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 130, top: 40),
                        child: Center(
                          child: Image.asset("assets/image/cd.png"),
                        ),
                      ),
                      Center(
                        child: Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Color(0x4D60989F),
                                  blurRadius: 20,
                                  offset: Offset(0, 20)
                                  // changes position of shadow
                                  ),
                            ]),
                            child: Image.asset("assets/image/image3.png")),
                        // child: Text("BIBOO",style: TextStyle(color: Colors.white,fontSize: 62),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  StreamBuilder<PositionData>(
                      stream: context.read<AudioCubit>().positionDataStream,
                      builder: (_, snapshot) {
                        final positionData = snapshot.data;
                        return Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                positionData?.position.durationPlayer() ??
                                    '0:00',
                              ),
                              Text(
                                positionData?.duration.durationPlayer() ??
                                    '0:00',
                              ),
                            ],
                          ),
                        );
                      }),
                  StreamBuilder<PositionData>(
                    stream: context.read<AudioCubit>().positionDataStream,
                    builder: (_, snapshot) {
                      final positionData = snapshot.data;
                      final duration =
                          positionData?.duration.inMicroseconds ?? 1;
                      final position =
                          positionData?.position.inMicroseconds ?? 0;
                      return Slider(
                        min: 0,

                        onChanged: (s) {
                          context.read<AudioCubit>().seekToSeconds(s.toInt());
                        },
                        // onChangeEnd:
                        //     context.read<AudioCubit>().changePositionPlayer,
                        value: position > 0 && position <= duration
                            ? position / duration
                            : 0.0,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            // color: Palette.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  // onTap: context.read<PlayerScreenCubit>().skip30second,
                  onTap: context.read<AudioCubit>().stop,
                  child: const Icon(
                    Icons.replay_30_outlined,
                    size: 50,
                    // color: Palette.label,
                  ),
                ),
                InkWell(
                  // onTap: context.read<PlayerScreenCubit>().preAudio,
                  onTap: context.read<AudioCubit>().pause,
                  child: const Icon(
                    Icons.skip_previous,
                    size: 50,
                    // color: Palette.label,
                  ),
                ),
                // _PlayButtonWidget(),
                // InkWell(
                //     // onTap: context.read<PlayerScreenCubit>().playAudio,
                //     onTap: null,
                //     child: CircleAvatar(
                //       backgroundColor: Color(0xff3D40C6),
                //       radius: 35,
                //       child: IconButton(
                //         icon: const Icon(
                //           Icons.play_arrow,
                //           color: Colors.white,
                //         ),
                //         iconSize: 50.0,
                //         onPressed: context.read<AudioCubit>().play,
                //       ),
                //     )),

                BlocConsumer<AudioCubit, AudioState>(
                  listener: (context , state){},
                  builder: (context , state){
                    return IconButton(
                     icon: Icon((state is AudioState)? Icons.pause : Icons.abc),
                     onPressed: (){
                      if(state is AudioState){
                        context.read<AudioCubit>().play();
                      }else {
                        context.read<AudioCubit>().pause();
                      }
                     },);
                  }, 
                  ),
                InkWell(

                  // onTap: context.read<PlayerScreenCubit>().nextAudio,
                  onTap: null,
                  child: const Icon(
                    Icons.skip_next,
                    size: 50,
                    // color: Palette.label,
                  ),
                ),
                InkWell(
                  // onTap: context.read<PlayerScreenCubit>().forward30second,
                  onTap: null,
                  child: const Icon(
                    Icons.forward_30_outlined,
                    size: 50,
                    // color: Palette.label,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  const ControlButtons(this.player, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Opens volume slider dialog
          Assets.icons.replay.svg(),
          Assets.icons.replay.svg(color: Colors.red),

          /// This StreamBuilder rebuilds whenever the player state changes, which
          /// includes the playing/paused state and also the
          /// loading/buffering/ready state. Depending on the state we show the
          /// appropriate button or loading indicator.
          StreamBuilder<PlayerState>(
            stream: player.playerStateStream,
            builder: (context, snapshot) {
              final playerState = snapshot.data;
              final processingState = playerState?.processingState;
              final playing = playerState?.playing;
              if (processingState == ProcessingState.buffering) {
              } else if (playing != true) {
                return CircleAvatar(
                  backgroundColor: Color(0xff3D40C6),
                  radius: 35,
                  child: IconButton(
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    iconSize: 50.0,
                    onPressed: player.play,
                  ),
                );
              } else if (processingState != ProcessingState.completed) {
                return CircleAvatar(
                  backgroundColor: Color(0xff3D40C6),
                  radius: 35,
                  child: IconButton(
                    icon: const Icon(
                      Icons.pause,
                      color: Colors.white,
                    ),
                    iconSize: 50.0,
                    onPressed: player.pause,
                  ),
                );
              }
              return Container();
            },
          ),
          Assets.icons.replay.svg(),
          Assets.icons.replay.svg(),

          // Opens speed slider dialog
          // StreamBuilder<double>(
          //   stream: player.speedStream,
          //   builder: (context, snapshot) => IconButton(
          //     icon: Text("${snapshot.data?.toStringAsFixed(1)}x",
          //         style: const TextStyle(fontWeight: FontWeight.bold)),
          //     onPressed: () {
          //       showSliderDialog(
          //         context: context,
          //         title: "Adjust speed",
          //         divisions: 10,
          //         min: 0.5,
          //         max: 1.5,
          //         value: player.speed,
          //         stream: player.speedStream,
          //         onChanged: player.setSpeed,
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}

extension DurationExtension on Duration {
  String durationPlayer() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    if (twoDigits(inHours.remainder(60)) != '00') {
      final twoDigitHour = twoDigits(inHours.remainder(60));
      final twoDigitMinutes = twoDigits(inMinutes.remainder(60));
      final twoDigitSeconds = twoDigits(inSeconds.remainder(60));
      return '$twoDigitHour:$twoDigitMinutes:$twoDigitSeconds';
    }
    final twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }
}
