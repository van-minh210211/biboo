import 'package:biboo/config/Palette.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class listTheMost extends StatelessWidget {
  const listTheMost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23),
      height: getProportionateScreenHeight(192),
      width: getProportionateScreenHeight(327),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context, index) {
            return ItemBook();
          }),
    );
  }
}

class ItemBook extends StatelessWidget {
  const ItemBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/image/504.png",
          fit: BoxFit.fill,
          width: getProportionateScreenHeight(128),
          height: getProportionateScreenHeight(192),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 29,
                      decoration: BoxDecoration(
                          color: Color(0xffFF4C4D),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        "#1",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffFCFCFC),
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.25,
                          fontFamily: "Regular",
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenHeight(130),
                        decoration: BoxDecoration(
                            color: Color(0xffEFF0F7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Phát triển tài chính',
                            style: TextStyle(
                                fontFamily: "Regular",
                                fontSize: 13,
                                color: Color(0xff6E7191),
                                letterSpacing: 0.25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Barack Obama và sự nghiệp - The Audaci obama",
                  maxLines: 2,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      height: 1.3,
                      fontSize: 15,
                      fontFamily: "Bold",
                      color: Color(0xff262338),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Barack Obama ",
                  style: TextStyle(
                      fontFamily: "Regular",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA0A3BD),
                      letterSpacing: 0.25,
                      fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Container(
                      width: getProportionateScreenWidth(20),
                      height: getProportionateScreenHeight(20),
                      child: Assets.icons.icStarYellow.svg(),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "4.2",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffA0A3BD),
                          letterSpacing: 0.41,
                          fontWeight: FontWeight.w600,
                          fontFamily: "SemiBold"),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "(1231 lượt đọc)",
                      style: TextStyle(
                          fontFamily: "Regular",
                          fontSize: 13,
                          color: Color(0xff6E7191),
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(height: 17),
                InkWell(
                  onTap: () {
                    print("ads");
                  },
                  child: Container(
                    height: getProportionateScreenHeight(40),
                    width: getProportionateScreenHeight(175),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Color(0xff3D40C6), width: 2)),
                    child: Center(
                        child: Text(
                      "XEM SÁCH",
                      style: TextStyle(
                          color: Color(0xff3C0594),
                          fontSize: 15,
                          fontFamily: "Bold",
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    )),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
