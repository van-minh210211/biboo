import 'package:badges/badges.dart';
import 'package:biboo/Navigationbarplayer.dart';
import 'package:biboo/UI/Player/music_player.dart';
// import 'package:biboo/UI/Player/test.dart';
import 'package:biboo/Widget/ListentheMost.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/main.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/BiString.dart';
import '../Home/body_screens.dart';
import '../Player/a.dart';
import '../library/library_body.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> with TickerProviderStateMixin {
  late TabController controller;
  late int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
    index = 0;
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:
          // NestedScrollView()
          Stack(
        children: [
          Container(
            width: double.infinity,
            height: 658,
            decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //       color: Color(0x3360989F),
                //       spreadRadius: 10,
                //       blurRadius: 20)
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
                        Container(
                            padding: EdgeInsets.all(6),
                            width: 109,
                            height: 31,
                            decoration: BoxDecoration(
                                color: Color(0xff00CC67),
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              children: [
                                Assets.icons.book.svg(),
                                SizedBox(
                                  width: 2,
                                ),
                                Center(
                                  child: Text(
                                    "MUA SÁCH IN",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xffF2FCFF),
                                        fontFamily: "Bold"),
                                  ),
                                ),
                              ],
                            )),
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
                    // Expanded(
                    //   child: InkWell(
                    //       onTap: () {
                    //         print("e");
                    //       },
                    //       child: Badge(
                    //         padding: EdgeInsets.zero,
                    //         badgeColor: Color(0xff00CC67),
                    //         badgeContent: Text("10"),
                    //       )
                    //       // child: Assets.icons.card.svg(width: 30, height: 30)),
                    //       ),
                    // ),
                    // Container(
                    //   child: GestureDetector(
                    //     onTap: null,
                    //     child: SizedBox(
                    //       width: 30,
                    //       height: 22,
                    //       child: Assets.icons.card.svg(
                    //         fit: BoxFit.fitHeight,
                    //       ),
                    //     ),
                    //   ),
                    // )
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
                height: 20,
              ),
              Image.asset("assets/image/4.png"),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                  width: 110,
                  child: Text(
                    " The Swallows",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Bold",
                        color: Color(0xff1F1F1F)),
                  )),
              SizedBox(
                height: 14,
              ),
              Text("Lisa Lutz"),
              SizedBox(
                height: getProportionateScreenHeight(12),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Playerbar()));
                },
                child: Container(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56),
                  margin: EdgeInsets.only(left: 24, right: 24),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(27)!,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff3D40C6),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      ("NGHE AUDIO MIỄN PHÍ"),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Bold",
                          fontSize: 15,
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffF7F7FC)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(12),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(56),
                margin: EdgeInsets.only(left: 24, right: 24),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(27)!,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff00C7FF),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    ("ĐỌC THỬ"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Bold",
                        fontSize: 15,
                        letterSpacing: 0.75,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffF2FCFF)),
                  ),
                ),
              ),

              // Container(
              //   child: Container(
              //     child: TabBarView(
              //         controller: controller,
              //         children: [Text("Adfsa"), Text("asdf")]),
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
