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
      margin: EdgeInsets.only(right: 24.5),
      height: getProportionateScreenHeight(785),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
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
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            child: Image.asset(
              "assets/image/504.png",
              fit: BoxFit.cover,
              width: getProportionateScreenWidth(130),
              height: getProportionateScreenHeight(240),
            ),
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
                        height: getProportionateScreenHeight(35),
                        width: getProportionateScreenWidth(30),
                        decoration: BoxDecoration(
                            color: Color(0xffFF4C4D),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "#1",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
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
                      Container(
                        height: getProportionateScreenHeight(35),
                        width: getProportionateScreenWidth(134),
                        decoration: BoxDecoration(
                            color: Color(0xffEFF0F7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Kinh tế và tài chính',
                            style: TextStyle(
                                fontFamily: "Regular",
                                fontSize: getProportionateScreenWidth(13),
                                color: Color(0xff6E7191),
                                letterSpacing: 0.25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Barack Obama và sự nghiệp - The Audaci obama",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        height: 1.3,
                        fontSize: getProportionateScreenWidth(17),
                        fontFamily: "Bold",
                        color: Color(0xff262338),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Barack Obama ",
                    style: TextStyle(
                        fontFamily: "Regular",
                        fontSize: 16,
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
                        width: getProportionateScreenWidth(23),
                        height: getProportionateScreenHeight(23),
                        child: Assets.icons.icStarYellow.svg(),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        "4.2",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
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
                            fontSize: getProportionateScreenWidth(13),
                            color: Color(0xff6E7191),
                            letterSpacing: 0.25,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      print("ads");
                    },
                    child: Container(
                      height: getProportionateScreenWidth(40),
                      width: getProportionateScreenWidth(175),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xff3D40C6), width: 2)),
                      child: Center(
                          child: Text(
                        "XEM SÁCH",
                        style: TextStyle(
                            color: Color(0xff3C0594),
                            fontSize: getProportionateScreenWidth(15),
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
      ),
    );
  }
}
