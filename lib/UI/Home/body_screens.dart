import 'package:biboo/UI/Selection/Selection.dart';
import 'package:biboo/Widget/CustomListGoodBook.dart';
import 'package:biboo/Widget/listTheMost.dart';
import 'package:biboo/Widget/searchbook.dart';
import 'package:biboo/config/Palette.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/model/Categoty.dart';

import 'package:biboo/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../Widget/ListGoodBook.dart';
import '../../Widget/Listbook.dart';
import '../../Widget/listSelectionHome.dart';
import '../../config/BiString.dart';
import '../Category/Category.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
 
  List<Widget> slide = [
    ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        "assets/image/slide.png",
        width: 400,
        height: 192,
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        "assets/image/slide1.png",
        width: 400,
        height: 192,
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        "assets/image/slide1.png",
        width: 400,
        height: 192,
        fit: BoxFit.cover,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(left: 24),
        color: Color(0xffF7F7FC),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 32,
            ),
            Searchbook(),
            SizedBox(
              height: 32,
            ),
            List3(
              context,
            ),
            SizedBox(
              height: 40,
            ),
            List2(context),
            SizedBox(
              height: 40,
            ),
            List4(context),
            SizedBox(height: 40),
            List5(context),
            SizedBox(
              height: 40,
            ),
            List6(context),
            SizedBox(
              height: 40,
            ),
            CarouselSlider(
              items: slide,
              // [
              //   Container(
              //     margin: EdgeInsets.symmetric(horizontal: 14),
              //     decoration: BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage("assets/image/slide.png",))),
              //   )
              // ],
              options: CarouselOptions(
                  height: getProportionateScreenWidth(190),
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.92,
                  enableInfiniteScroll: true),
            ),
            SizedBox(
              height: 55,
            ),
            List7(context),
          ]),
        ),
      ),
    );
  }
}

Container List3(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 24),
    width: double.infinity,
    child: Column(children: [
      Row(
        children: [
          Text(
            'Gợi ý cho bạn',
            style: TextStyle(
                color: Color(0xff262338),
                fontSize: getProportionateScreenWidth(20),
                fontFamily: "Bold",
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
      const SizedBox(
        height: 24,
      ),
      Listbook(),
    ]),
  );
}

Container List4(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 25),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sách hay phải đọc",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontFamily: 'Bold',
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 24,
        ),
        ListGoodbook()
      ],
    ),
  );
}

Container List5(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 25),
    width: double.infinity,
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Text(
              "Danh mục",
              style: TextStyle(
                  fontFamily: "Bold",
                  color: Color(0xff262338),
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
              textAlign: TextAlign.left,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Category()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 24.5),
              child: Text(
                "Xem tất cả",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Regular",
                    color: Color(0xff3D40C6),
                    letterSpacing: 0.25,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 32,
      ),
      listSelection()
    ]),
  );
}

Container List6(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 27),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nghe nhiều nhất",
          style: TextStyle(
              fontFamily: 'Bold',
              color: Color(0xff262338),
              fontSize: getProportionateScreenWidth(20)),
        ),
        SizedBox(
          height: 24,
        ),
        listTheMost()
      ],
    ),
  );
}

Container List7(BuildContext context) {
  return Container(
    child: Column(children: [
      Container(
        margin: EdgeInsets.only(left: 24, right: 24.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Bán hàng & Marketing",
              style: TextStyle(
                  color: Color(0xff262338),
                  fontSize: getProportionateScreenWidth(20),
                  fontFamily: "Bold"),
              textAlign: TextAlign.left,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Xem tất cả",
                style: TextStyle(
                    fontFamily: "Regular",
                    fontSize: getProportionateScreenWidth(13),
                    letterSpacing: 0.25,
                    color: Color(0xff3D40C6)),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 24,
      ),
      Container(
        margin: EdgeInsets.only(left: 24),
        child: Listbook(),
      )
    ]),
  );
}

Container List2(BuildContext context) {
  return Container(
    // margin: EdgeInsets.only(right: 12, left: 12),
    height: getProportionateScreenWidth(218),
    width: getProportionateScreenWidth(353),
    decoration: BoxDecoration(
        // color: Colors.amber,
        color: Color(0xffFCFCFC),
        borderRadius: BorderRadius.all(Radius.circular(12))),
    child: Row(
      children: [
        // Image.asset(
        //   "assets/image/504.png",
        //   width: getProportionateScreenWidth(120),
        //   height: getProportionateScreenHeight(192),
        // ),
        Container(
          margin: EdgeInsets.all(12),

          // height: getProportionateScreenHeight(265),
          // width: getProportionateScreenWidth(144),
          child: Image.asset(
            "assets/image/504.png",
            // color: Color(0xffE5FFF2),
            width: getProportionateScreenWidth(130),
            height: getProportionateScreenWidth(200),
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 14, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getProportionateScreenWidth(30),
                  width: getProportionateScreenWidth(136),
                  decoration: BoxDecoration(
                    color: Color(0xffE5FFF2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Đang xem gần đây",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(13),
                          fontFamily: "Regular",
                          color: Color(0xff00994D),
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                const Text(
                  "Barack Obama và sự nghiệp - The Audaciá maadfa",
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "Bold",
                      fontSize: 17,
                      // fontWeight: FontWeight.w700,
                      color: Color(0xff262338),
                      overflow: TextOverflow.ellipsis,
                      letterSpacing: 0.25,
                      fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Barack Obama",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Regular',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.25,
                      color: Color(0xff6E7191)),
                ),
                SizedBox(
                  height: 17,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    LinearPercentIndicator(
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        padding: EdgeInsets.zero,
                        lineHeight: getProportionateScreenWidth(7)!,
                        animation: true,
                        animationDuration: 500,
                        percent: 0.29,
                        backgroundColor: Color(0xffEFF0F6),
                        linearGradient: LinearGradient(
                          colors: [
                            Color(0xffC566FF),
                            Color(0xff5C00B9),
                          ],
                          begin: Alignment.centerLeft,
                        )
                        // linearGradientBackgroundColor: LinearGradient(
                        //   colors: [
                        //     Color(0xffC566FF),
                        //     Color(0xff5C00B9),
                        //   ],
                        //   begin: Alignment.centerLeft,
                        //   end: Alignment.centerRight
                        // ) ,
                        ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "29%",
                      textScaleFactor: 1.21,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(9),
                          fontFamily: "SemiBold",
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.25,
                          color: Color(0xffA0A3BD),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenWidth(13),
                ),
                InkWell(
                  onTap: null,
                  child: Container(
                    height: getProportionateScreenWidth(40),
                    width: getProportionateScreenWidth(175),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(color: Color(0xff00CC67), width: 2.5)),
                    child: Center(
                      child: Text(
                        "TIẾP TỤC",
                        style: TextStyle(
                          fontFamily: "Bold",
                          fontSize: getProportionateScreenWidth(15),
                          // fontWeight: FontWeight.w700,
                          letterSpacing: 0.75,
                          color: Color(0xff00994D),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
