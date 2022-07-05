import 'package:biboo/UI/Home/body_screens.dart';
import 'package:biboo/UI/Player/a.dart';
import 'package:biboo/UI/Player/music_player.dart';
import 'package:biboo/Widget/BackgroupImage.dart';
import 'package:biboo/Widget/custom_search.dart';
import 'package:biboo/bloc/audio_cubit/audio_cubit.dart';
import 'package:biboo/bloc/audio_cubit/audio_state.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Navigationbar.dart';
import '../../config/BiString.dart';
import '../../config/Palette.dart';
import '../../model/Theme.dart';
import '../Category/detailCatrgory.dart';
import '../Login/Forgot_password/Forgot_password2.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        // backgroundColor: Color(0xE5E5E5),
        body: Container(
      padding: EdgeInsets.only(left: 24, right: 24, top: 55),
      color: Color(0xffF7F7FC),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: "Chọn chủ đề",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Bold',
                      fontSize: 28))),
          SizedBox(
            height: 27,
          ),
          Text(
            "Hãy lựa chọn ít nhất \n03 chủ đề bạn quan tâm",
            style: TextStyle(
                height: 1.1,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'Bold',
                color: Colors.black),
          ),

          SizedBox(
            height: 32,
          ),
          Search(),
          SizedBox(
            height: 46,
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                padding: EdgeInsets.all(4),
                children: List.generate(
                    data.length,
                    (index) => ListSelection(
                          theme1: data[index],
                        ))),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bottom()));
            },
            child: Container(
              height: getProportionateScreenWidth(56),
              width: double.infinity,
              // margin: const EdgeInsets.only(bottom: 25),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xff3D40C6),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TextString.createcontinue,
                    style: TextStyle(
                        color: Palette.white,
                        fontSize: 15,
                        letterSpacing: 0.75,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Bold'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 37,
          )
          // SizedBox(height: 32,)
        ],
      ),
    ));
  }
}

class ListSelection extends StatelessWidget {
  const ListSelection({Key? key, required this.theme1}) : super(key: key);
  final Theme2 theme1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => detailCategory()));
      },
      child: Column(
        children: [
          Container(
            width: getProportionateScreenHeight(52),
            height: getProportionateScreenHeight(52),
            child: SvgPicture.asset(theme1.Imagee),
            // child: Assets.icons.iconl.svg(),
          ),
          SizedBox(
            height: 31,
          ),
          SizedBox(
            width: 96,
            child: Text(
              theme1.Title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Bold',
                  color: Color(0xffA0A3BD),
                  fontSize: 13,
                  letterSpacing: 0.25),
            ),
          ),
        ],
      ),
    );
  }
}

class ViewSlider extends StatelessWidget {
  const ViewSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioCubit, AudioState>(
      builder: (context, state) {
        print(state.isPlaying);
        return Visibility(
          visible: state.isPlaying == true,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xffF7F2FF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14))),
            child: StreamBuilder<PositionData>(
              stream: context.read<AudioCubit>().positionDataStream,
              builder: (_, snapshot) {
                final positionData = snapshot.data;
                final duration = positionData?.duration.inMicroseconds ?? 1;
                final position = positionData?.position.inMicroseconds ?? 0;
                return Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1),
                        child: Image.asset(
                          "assets/image/504.png",
                          width: getProportionateScreenWidth(36),
                          height: 54,

                          // width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        // child: CachedNetworkImage(
                        //   imageUrl:
                        //       "https://i2.wp.com/media.designs.vn/public/media/media/picture/30-07-2013/bia_sach_dep_thiet_ke_bia_sach_34.jpg",
                        //   width: getProportionateScreenWidth(128),
                        //   height: getProportionateScreenWidth(192),
                        //   // width: double.infinity,
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Chuong 1 : ly do kien banj",
                            style: TextStyle(fontSize: 15, fontFamily: "Bold"),
                          ),
                          SizedBox(
                            height: 23,
                            child: Container(
                              margin: EdgeInsets.zero,
                              child: Slider(
                                onChanged: context
                                    .read<AudioCubit>()
                                    .changePositionPlayer,
                                onChangeEnd: context
                                    .read<AudioCubit>()
                                    .changePositionPlayer,
                                value: position > 0 && position <= duration
                                    ? position / duration
                                    : 0.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                        // onTap: context.read<PlayerScreenCubit>().playAudio,
                        onTap: null,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff3D40C6),
                          radius: 20,
                          child: IconButton(
                            icon: const Icon(
                              Icons.pause,
                              size: 20,
                              color: Colors.white,
                            ),
                            iconSize: 50.0,
                            onPressed: context.read<AudioCubit>().pause,
                          ),
                        )),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
