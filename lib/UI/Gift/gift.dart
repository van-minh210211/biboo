import 'package:biboo/UI/library/listunlockedBook.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';

import '../../config/Palette.dart';

class gift extends StatefulWidget {
  const gift({Key? key}) : super(key: key);

  @override
  _giftState createState() => _giftState();
}

class _giftState extends State<gift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xF6F6FB),
        body: Container(
          padding: EdgeInsets.only(left: 24, top: 24, right: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x143D40C6),

                      blurRadius: 40,
                      offset: Offset(0, 12), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Row(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(138),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.only(
                        //       bottomLeft: Radius.circular(14),
                        //       topLeft:  Radius.circular(12)
                        //   ),
                        // ),

                        child: Image.asset(
                          "assets/image/Gift.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 14),
                          height: getProportionateScreenWidth(138),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 20, left: 20),
                                child: Text(
                                  "Mã quà tặng",
                                  style: TextStyle(
                                      fontFamily: "Bold",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Color(0xff262338)),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(8),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  "Mở khóa sách để nhận quà tặng",
                                  style: TextStyle(
                                      fontFamily: "Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Color(0xff6E7191),
                                      letterSpacing: 0.25),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20, left: 20),
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Color(0xffFCFCFC),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Color(0xffD9DBE9), width: 1)),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  child: TextField(
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Nhập mã quà tặng',
                                        hintStyle: TextStyle(
                                            fontFamily: "SemiBold",
                                            // letterSpacing: 0.6,
                                            fontSize: 12,
                                            color: Color(0xffA0A3BD)),
                                        // icon: Assets.icons.lock.svg(),
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12, top: 12, bottom: 12),
                                          child: Assets.icons.lock.svg(),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Expanded(child: listunlockedBook())
            ],
          ),
        ));
  }
}
