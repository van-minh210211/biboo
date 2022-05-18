import 'package:biboo/UI/Selection/Selection.dart';
import 'package:biboo/Widget/BackgroupImage.dart';
import 'package:biboo/Widget/CustomMultiple.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../config/BiString.dart';
import '../../config/Palette.dart';
import 'Forgot_password/Forgot_password.dart';

class LoginBizbook extends StatefulWidget {
  const LoginBizbook({Key? key}) : super(key: key);

  @override
  _LoginBizbookState createState() => _LoginBizbookState();
}

class _LoginBizbookState extends State<LoginBizbook> {
  bool _switchValue = false;
  bool ispass = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        BackgroudImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      child: Container(
                        padding: EdgeInsets.only(top: 61, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Assets.icons.ic_back.svg(),
                            SizedBox(
                              height: 12,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: TextString.login,
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Color(0xffFCFCFC),
                                      fontFamily: "Bold",
                                      fontWeight: FontWeight.w700,
                                    ))),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Đăng nhập sử dụng tài khoản Bizbooks",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffEFF0F7),
                                  fontFamily: 'Regular',
                                  letterSpacing: 0.75,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: getProportionateScreenWidth(200),
                    child: Container(
                      height: getProportionateScreenWidth(450),
                      width: getProportionateScreenWidth(355),
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(10)!,
                          right: getProportionateScreenWidth(10)!),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: getProportionateScreenWidth(43)!),
                            child: Column(
                              children: [
                                Text(
                                  "Tài Khoản BizBooks",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Bold",
                                      color: Color(0xff262338),
                                      fontSize: 28),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 29),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                  height: getProportionateScreenWidth(56),
                                  width: getProportionateScreenWidth(325),
                                  decoration: BoxDecoration(
                                      color: Color(0xffEFF0F7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(24, 9, 22, 1),
                                    child: TextField(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(
                                            0xff262338,
                                          ),
                                          fontFamily: "Regular"),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Email đăng nhập',
                                          hintStyle: TextStyle(
                                              fontSize: 17,
                                              letterSpacing: 0.75,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6E7191),
                                              fontFamily: "Regular")),
                                    ),
                                  ),
                                ),

                                // Container(
                                //   decoration: BoxDecoration(
                                //     color: Palette.line,
                                //     borderRadius: BorderRadius.circular(12)
                                //   ),
                                //   child: TextField(
                                //     decoration: InputDecoration(
                                //         enabledBorder: OutlineInputBorder(
                                //           borderSide:BorderSide(color: Palette.black),
                                //           borderRadius: BorderRadius.circular(12),
                                //
                                //         ),
                                //         focusedBorder: OutlineInputBorder(
                                //           borderSide:BorderSide(color: Palette.black),
                                //           borderRadius: BorderRadius.circular(12),
                                //         ),
                                //         hintText: 'Mât khẩu'
                                //     ),
                                //   ),
                                // ),
                                Container(
                                  margin: EdgeInsets.only(top: 24),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 24),
                                        width: getProportionateScreenWidth(241),
                                        height: getProportionateScreenWidth(56),
                                        decoration: BoxDecoration(
                                          color: Palette.input,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              24, 9, 22, 1),
                                          child: TextField(
                                            obscureText: ispass,
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(
                                                  0xff262338,
                                                ),
                                                fontFamily: "Regular"),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Mật khẩu',
                                                hintStyle: TextStyle(
                                                    fontSize: 15,
                                                    letterSpacing: 0.75,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Regular")),
                                          ),
                                        ),
                                      ),

                                      InkWell(
                                          onTap: _testpass,
                                          child: Container(
                                            width: 72,
                                            height: 72,
                                            child: IconButton(
                                                onPressed: _testpass,
                                                icon: ispass
                                                    ? Assets.icons.sHow.svg()
                                                    : Assets.icons.sHow1.svg()),
                                          ))
                                      // Image.asset(
                                      //     "assets/image/CircleButton.png")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 36,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Ghi nhớ đăng nhập",
                                          style: TextStyle(
                                              fontFamily: 'Regular',
                                              letterSpacing: 0.75,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    FlutterSwitch(
                                      activeColor: Color(0xff00C7FF),
                                      inactiveColor: Color(0xffD9DBE9),
                                      width: getProportionateScreenWidth(64)!,
                                      padding: 2,
                                      height: getProportionateScreenWidth(32)!,
                                      valueFontSize: 100.0,
                                      toggleSize: 35.0,
                                      value: _switchValue,
                                      onToggle: (val) {
                                        setState(() {
                                          _switchValue = val;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPassWord()));
                                  },
                                  child: Text(
                                    "Quên mật khẩu?",
                                    style: TextStyle(
                                        fontFamily: "Bold",
                                        fontSize: 15,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                // Padding(
                                //   padding: EdgeInsets.symmetric(horizontal: 32),

                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Selection()));
                                  },
                                  child: Container(
                                    height: getProportionateScreenWidth(56),
                                    width: getProportionateScreenWidth(323),
                                    margin: const EdgeInsets.only(bottom: 31),
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xff3D40C6),
                                      borderRadius: BorderRadius.circular(96),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ĐĂNG NHẬP",
                                          style: TextStyle(
                                            color: Color(0xffF7F7FC),
                                            fontSize:
                                                getProportionateScreenWidth(15),
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            )),
      ],
    );
  }

  void _testpass() {
    setState(() {
      ispass = !ispass;
    });
  }
}
