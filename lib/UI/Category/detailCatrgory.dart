import 'package:biboo/Widget/Listbook.dart';
import 'package:biboo/Widget/listTheMost.dart';
import 'package:biboo/config/Palette.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../library/listunlockedBook.dart';

class detailCategory extends StatefulWidget {
  const detailCategory({Key? key}) : super(key: key);

  @override
  _detailCategoryState createState() => _detailCategoryState();
}

class _detailCategoryState extends State<detailCategory>
    with TickerProviderStateMixin {
  late TabController controllerListDetail;
  late int index2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerListDetail = TabController(length: 4, vsync: this);
    index2 = 0;
  }

  @override
  void dispose() {
    controllerListDetail.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.line,
      body: Container(
        padding: EdgeInsets.only(top: 35),
        // margin: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: TabBar(
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                controller: controllerListDetail,
                labelColor: Color(0xff262338),
                unselectedLabelColor: Color(0xffA0A3BD),
                onTap: (int index) {
                  setState(() {
                    index2 = index;
                  });
                },
                tabs: [
                  Tab(
                    child: Column(
                      children: [
                        Text(
                          "Gia đình sức khởe",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 4,
                          width: 165,
                          decoration: BoxDecoration(
                              color: index2 == 0
                                  ? Color(0xff3D40C6)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Text(
                          "Gia đình sức khởe",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 4,
                          width: 165,
                          decoration: BoxDecoration(
                              color: index2 == 1
                                  ? Color(0xff3D40C6)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Text(
                          "Gia đình sức khởe",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 4,
                          width: 165,
                          decoration: BoxDecoration(
                              color: index2 == 2
                                  ? Color(0xff3D40C6)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Text(
                          "Gia đình sức khởe",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 4,
                          width: 165,
                          decoration: BoxDecoration(
                              color: index2 == 3
                                  ? Color(0xff3D40C6)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 340,
                child: TabBarView(
                  controller: controllerListDetail,
                  children: [
                    const Listdetail(),
                    Text("asdf"),
                    Text("Asdf"),
                    Text("afd"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Listdetail extends StatefulWidget {
  const Listdetail({Key? key}) : super(key: key);

  @override
  _ListdetailState createState() => _ListdetailState();
}

class _ListdetailState extends State<Listdetail> {
  List<Widget> slide1 = [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Image.asset(
        "assets/image/slide.png",
        // width: 430,
        // height: 168,
        fit: BoxFit.fitWidth,
      ),
    ),
    Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Image.asset(
          "assets/image/slide.png",
          // width: 430,
          // height: 168,
          fit: BoxFit.fitWidth,
        )),
    Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Image.asset(
          "assets/image/slide.png",
          // width: 430,
          // height: 168,
        )),
    Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Image.asset(
          "assets/image/slide.png",
          // width: 430,
          // height: 168,
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.line,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Gia đình và sức khởe",
                  style: TextStyle(
                      fontFamily: "Bold",
                      fontSize: 24,
                      color: Color(0xff262338),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  viewportFraction: 0.9,
                ),
                itemCount: slide1.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    height: 190,
                    width: MediaQuery.of(context).size.width,
                    child: slide1[index],
                  );
                },
              ),
              SizedBox(
                height: 34,
              ),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Gợi ý cho bạn",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff262338),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Bold"),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Listbook(),
              ),
              SizedBox(
                height: 37,
              ),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Sách hay phải đọc",
                  style: TextStyle(fontFamily: "Bold", fontSize: 20),
                ),
              ),
              SizedBox(height: 24),
              Container(padding: EdgeInsets.only(left: 24), child: Listbook()),
              SizedBox(
                height: 37,
              ),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Nghe nhiều nhất",
                  style: TextStyle(fontFamily: "Bold", fontSize: 20),
                ),
              ),
              SizedBox(
                height: 24,
              ),

              Container(
                  padding: EdgeInsets.only(left: 24), child: listTheMost()),
              SizedBox(
                height: 12,
              ),
              Text(
                "Tất cả cá sách",
                style: TextStyle(fontFamily: "Bold", fontSize: 20),
              ),
              SizedBox(
                height: 12,
              ),
              // listunlockedBook()
            ],
          ),
        ),
      ),
    );
  }
}
