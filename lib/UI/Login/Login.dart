import 'package:biboo/UI/Login/Registration.dart';
import 'package:biboo/Widget/BackgroupImage.dart';
import 'package:biboo/UI/Login/LoginBizbook.dart';
import 'package:biboo/config/BiString.dart';
import 'package:biboo/config/Palette.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';

import '../../Widget/ListentheMost.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        BackgroudImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: getProportionateScreenWidth(22)!),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              TextString.title,
                              style: TextStyle(
                                  color: Color(0xffFCFCFC),
                                  fontSize: 30,
                                  fontFamily: "Bold",
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          Text(
                            TextString.next,
                            style: TextStyle(
                                color: Color(0xffFCFCFC),
                                letterSpacing: 0.75,
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                fontFamily: "Regular"),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(130),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 50),
                  //   child: Container(
                  //     margin: const EdgeInsets.only(bottom: 15),
                  //     alignment: Alignment.center,
                  //     padding:  EdgeInsets.symmetric(
                  //         horizontal: 70,
                  //         vertical: 15
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: Palette.bgBlueButton,
                  //       borderRadius: BorderRadius.circular(40),
                  //     ),
                  //     child:   Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.only(right: 1),
                  //               child: Assets.icons.icFacebook.svg(),
                  //
                  //         ),
                  //         Text(
                  //           BiString.facebook,
                  //           style: TextStyle(color: Palette.white,fontFamily: 'Bold'),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: getProportionateScreenWidth(303),
                      height: getProportionateScreenWidth(56),
                      margin: EdgeInsets.only(
                          bottom: getProportionateScreenWidth(16)!),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(24)!),
                      decoration: BoxDecoration(
                        color: Color(0xff4666D5),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: getProportionateScreenWidth(16)!),
                            child: Assets.icons.icFacebook.svg(),
                          ),
                          Text(
                            TextString.facebook,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Bold",
                                fontSize: 18.4,
                                letterSpacing: 0.75,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffF7F7FC)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(303),
                    height: getProportionateScreenWidth(56),
                    margin: EdgeInsets.only(bottom: 16),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(27)!,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffEFF0F7),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: getProportionateScreenWidth(16)!),
                          child: Assets.icons.icGoogle.svg(),
                        ),
                        Text(
                          TextString.google,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Bold",
                              fontSize: 18.4,
                              letterSpacing: 0.75,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff4E4B66)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(303),
                    height: getProportionateScreenWidth(56),
                    margin: EdgeInsets.only(bottom: 80),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(24)!,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: getProportionateScreenWidth(14)!),
                          child: Assets.icons.icApple.svg(
                              height: getProportionateScreenWidth(26),
                              width: getProportionateScreenWidth(26)),
                        ),
                        Text(
                          TextString.apple,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Bold",
                              letterSpacing: 0.75,
                              fontWeight: FontWeight.w700,
                              fontSize: 18.4,
                              color: Color(0xff4E4B66)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginBizbook()));
                    },
                    child: Container(
                      width: getProportionateScreenWidth(303),
                      height: getProportionateScreenWidth(56),
                      // margin: const EdgeInsets.only(bottom: 16),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(22)!,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff3D40C6),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            TextString.User,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xffFCFCFC),
                                fontSize: 18,
                                letterSpacing: 0.75,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Bold"),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    child: Text('${TextString.name}?',
                        style: TextStyle(
                            color: Color(0xffFCFCFC),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            letterSpacing: 0.75,
                            fontFamily: "SemiBold")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registration()));
                        },
                        child: Text(
                          "Đăng ký",
                          style: TextStyle(
                              color: Color(0xff00C7FF),
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.75,
                              fontFamily: "Bold"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        "tài khoản Bizbooks",
                        style: TextStyle(
                            color: Color(0xffFCFCFC),
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.75,
                            fontFamily: 'SemiBold'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
