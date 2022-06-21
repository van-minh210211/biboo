import 'package:auto_size_text/auto_size_text.dart';
import 'package:biboo/config/Palette.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class listTheMost extends StatelessWidget {
  const listTheMost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: 680,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return ItemBook();
          }),
      // ),
    );
  }
}

class ItemBook extends StatelessWidget {
  const ItemBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              "assets/image/504.png",
              fit: BoxFit.cover,
              width: getProportionateScreenWidth(128),
              height: 192,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(24),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(30),
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
                        width: getProportionateScreenWidth(8),
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: double.infinity,
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
                    "Barack Obama và sự nghiệp - The Audaciad àd",
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        height: 1.3,
                        fontSize: 17,
                        fontFamily: "Bold",
                        color: Color(0xff262338),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 8,
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
                    height: getProportionateScreenWidth(12),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Assets.icons.icStar.svg(
                            width: getProportionateScreenWidth(19.27),
                            height: getProportionateScreenWidth(19.27)),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "4.2",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0xffA0A3BD),
                            letterSpacing: 0.41,
                            fontWeight: FontWeight.w600,
                            fontFamily: "SemiBold"),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(9),
                      ),
                      Text(
                        "(1231 lượt đọc)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Regular",
                            fontSize: 13,
                            color: Color(0xff6E7191),
                            letterSpacing: 0.25,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(height: 13),
                  InkWell(
                    onTap: () {
                      print("ads");
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xff3D40C6), width: 2)),
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
      ),
    );
  }
}
