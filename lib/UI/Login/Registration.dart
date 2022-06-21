import 'package:biboo/UI/Login/LoginBizbook.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../Widget/BackgroupImage.dart';
import '../../config/BiString.dart';
import '../../config/Palette.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
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
                        padding: EdgeInsets.only(top: 27, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Assets.icons.ic_back.svg(),
                            SizedBox(
                              height: 30,
                            ),
                            RichText(
                                text: TextSpan(
                              text: TextString.createAccount,
                              style: TextStyle(
                                  fontFamily: 'Bold',
                                  color: Color(0xffFCFCFC),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28),
                            )),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              TextString.createBiz,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Regular',
                                  letterSpacing: 0.75,
                                  color: Color(0xffEFF0F7)),
                            )
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: 222,
                    child: Container(
                      height: 522,
                      width: MediaQuery.of(context).size.width - 20,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 15,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 44),
                            padding: EdgeInsets.only(left: 14, right: 16),
                            child: Column(
                              children: [
                                Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                      color: Color(0xffEFF0F7),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(22, 4, 22, 1),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: TextString.createemail,
                                          hintStyle: TextStyle(
                                              fontFamily: 'Regular',
                                              fontSize: 15,
                                              color: Color(0xff6E7191),
                                              letterSpacing: 0.75,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                      color: Palette.input,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(22, 4, 22, 1),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: TextString.createname,
                                          hintStyle: TextStyle(
                                              fontFamily: 'Regular',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.75)),
                                    ),
                                  ),
                                ),
                                // SizedBox(
                                //   height: 24,
                                // ),
                                Container(
                                  margin: EdgeInsets.only(top: 24),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 24),
                                        width: 250,
                                        height: 56,
                                        decoration: BoxDecoration(
                                          color: Palette.input,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              22, 3, 22, 1),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: TextString.createpass,
                                                hintStyle: TextStyle(
                                                    fontFamily: 'Regular')),
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                          "assets/image/CircleButton.png")
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 24),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 24),
                                        width: 250,
                                        height: 56,
                                        decoration: BoxDecoration(
                                          color: Palette.input,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              22, 3, 22, 1),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    TextString.createcofim,
                                                hintStyle: TextStyle(
                                                    fontFamily: 'Regular')),
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                          "assets/image/CircleButton.png")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 49,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 25),
                                  decoration: BoxDecoration(
                                    color: Palette.blue,
                                    borderRadius: BorderRadius.circular(96),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        TextString.createnaccount,
                                        style: TextStyle(
                                            color: Palette.white,
                                            fontSize: 15,
                                            fontFamily: 'Bold'),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${TextString.ACC}?',
                                      style: TextStyle(
                                          fontFamily: 'SemiBold', fontSize: 15),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             LoginBizbook(widget.)));
                                        },
                                        child: Text(
                                          TextString.login,
                                          style:
                                              TextStyle(fontFamily: 'SemiBold'),
                                        ))
                                  ],
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
}
