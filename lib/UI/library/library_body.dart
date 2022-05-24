import 'package:biboo/UI/library/allbook.dart';
import 'package:biboo/config/Palette.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Widget/listSelectionHome.dart';
import '../../gen/assets.gen.dart';
import 'listunlockedBook.dart';

class libraryBook extends StatefulWidget {
  const libraryBook({Key? key}) : super(key: key);

  @override
  _libraryBookState createState() => _libraryBookState();
}

class _libraryBookState extends State<libraryBook>
    with SingleTickerProviderStateMixin {
  late TabController _tab1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tab1 = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tab1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7FC),
      body: Container(
        padding: EdgeInsets.only(right: 20, left: 24, top: 39),
        child: Column(
          children: [
            Container(
              height: getProportionateScreenWidth(157),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffFCFCFC),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mục tiêu đọc sách",
                          style: TextStyle(
                              fontSize: 17,
                              letterSpacing: 0.25,
                              fontFamily: "bold",
                              fontWeight: FontWeight.w700,
                              color: Color(0xff262338)),
                        ),
                        SizedBox(
                          height: getProportionateScreenWidth(5),
                        ),
                        Text(
                          "Trang sách đã đọc\ntrong ngày hôm nay",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: 'Regular',
                              fontSize: 13,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6E7191),
                              letterSpacing: 0.25),
                        ),
                        SizedBox(
                          height: getProportionateScreenWidth(16),
                        ),
                        Container(
                          width: getProportionateScreenWidth(144),
                          height: getProportionateScreenWidth(37.77),
                          decoration: BoxDecoration(
                              color: Color(0xffF7F2FF),
                              borderRadius: BorderRadius.circular(85)),
                          child: Center(
                            child: Text(
                              "THAY ĐỔI MỤC TIÊU",
                              style: TextStyle(
                                  color: Color(0xff6E7191),
                                  letterSpacing: 0.22,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  fontFamily: "Regular"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CircularPercentIndicator(
                      backgroundColor: Palette.input,
                      radius: 120,
                      lineWidth: 10,
                      animation: true,
                      linearGradient: LinearGradient(
                          colors: [
                            Color(0xff5F2EEA),
                            Color(0xffE359F9),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      circularStrokeCap: CircularStrokeCap.round,
                      animationDuration: 1000,
                      percent: 0.4,
                      center: Text(
                        "24/30",
                        style: TextStyle(fontFamily: 'Bold', fontSize: 23.21),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 39,
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: getProportionateScreenWidth(42),
                decoration: BoxDecoration(
                  color: Color(0xffF1F1FB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: TabBar(
                    unselectedLabelColor: Color(0xff6E7191),
                    controller: _tab1,
                    labelColor: Color(0xff14142B),
                    indicatorWeight: 2,
                    indicator: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8)),
                    tabs: [
                      Tab(
                        child: Text(
                          "SÁCH ĐÃ MỞ KHOÁ",
                          style: TextStyle(
                              letterSpacing: 0.25,
                              fontFamily: "Medium",
                              fontSize: getProportionateScreenWidth(13)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "SÁCH QUAN TÂM",
                          style: TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Medium",
                              fontSize: 13,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              height: getProportionateScreenWidth(43),
              width: getProportionateScreenWidth(327),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffEFF0F6),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Tìm kiếm sách",
                    hintStyle: TextStyle(
                      fontFamily: 'Regular',
                      letterSpacing: 0.75,
                      color: Color(0xff6E7191),
                      fontSize: getProportionateScreenWidth(17),
                    ),
                    icon: Assets.icons.search.svg(
                        height: getProportionateScreenWidth(16),
                        width: getProportionateScreenWidth(16)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                child: TabBarView(
                    controller: _tab1,
                    children: [listunlockedBook(), Text("Adf")]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
