import 'package:biboo/Widget/ListGoodBook.dart';
import 'package:biboo/Widget/Listbook.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../config/Palette.dart';

class Introduce extends StatefulWidget {
  const Introduce({Key? key}) : super(key: key);

  @override
  State<Introduce> createState() => _IntroduceState();
}

class _IntroduceState extends State<Introduce> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 24, right: 23, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Thời lượng",
                              style: TextStyle(
                                  letterSpacing: 0.75,
                                  fontFamily: "Bold",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff262338)),
                            ),
                            Text(
                              "20 tiếng 45 phút",
                              style: TextStyle(
                                  letterSpacing: 0.75,
                                  fontFamily: "Regular",
                                  fontSize: 15,
                                  color: Color(0xff4E4B66)),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Số trang",
                              style: TextStyle(
                                  letterSpacing: 0.75,
                                  fontFamily: "Bold",
                                  fontSize: 15,
                                  color: Color(0xff262338)),
                            ),
                            Text(
                              "203 trang",
                              style: TextStyle(
                                  letterSpacing: 0.75,
                                  fontFamily: "Regular",
                                  fontSize: 15,
                                  color: Color(0xff4E4B66)),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Thể loại",
                              style: TextStyle(
                                  letterSpacing: 0.75,
                                  fontFamily: "Bold",
                                  fontSize: 15,
                                  color: Color(0xff262338)),
                            ),
                            Text(
                              "Tiểu thuyết",
                              style: TextStyle(
                                  letterSpacing: 0.75,
                                  fontFamily: "Regular",
                                  fontSize: 15,
                                  color: Color(0xff4E4B66)),
                            )
                          ]),
                    ),
                    Text(
                      "Giới thiệu về cuốn sách",
                      style: TextStyle(
                          letterSpacing: 0.75,
                          fontFamily: "Bold",
                          fontSize: 15,
                          color: Color(0xff262338)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // Text("The war against Voldemor is not going well, even the Muggles have been affecte Dumbledore is absent from Hogwarts for long stretc hes of time,  and the Order of the Phoenix has alread.. ",
                    //   style: TextStyle(
                    //       fontSize: 14,
                    //       overflow: TextOverflow.ellipsis,
                    //       letterSpacing: 0.25
                    //   ),
                    //   maxLines: 4,
                    //
                    // ),

                    ReadMoreText(
                      'The war against Voldemor is not going well, even the Muggles have been affected. Dumbledore is absent from Hogwarts for long stretc hes of time,  and the Order of the Phoenix has aLreadlk asdfawefasdfaewfasdfaMinhd'
                      'The war against Voldemor is not going well, even the Muggles have been affecte Dumbledore is absent from Hogwarts for long stretc hes of time,  and the Order of the Phoenix has ALread asdfawefasdfaewfasdfaMinhd'
                      'The war against Voldemor is not going well, even the Muggles have been affecte Dumbledore is absent from Hogwarts for long stretc hes of time,  and the Order of the Phoenix has ALread asdfawefasdfaewfasdfaMinhd'
                      'The war against Voldemor is not going well, even the Muggles have been affecte Dumbledore is absent from Hogwarts for long stretc hes of time,  and the Order of the Phoenix has ALread asdfawefasdfaewfasdfaMinhd'
                      'The war against Voldemor is not going well, even the Muggles have been affecte Dumbledore is absent from Hogwarts for long stretc hes of time,  and the Order of the Phoenix has ALread asdfawefasdfaewfasdfaMinhd',
                      trimLines: 4,
                      textAlign: TextAlign.left,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Xem thêm',
                      trimExpandedText: 'Thu gọn',
                      lessStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          fontFamily: "SemiBold",
                          color: Color(0xff00C7FF)),
                      style: TextStyle(
                          fontSize: 13,
                          letterSpacing: 0.25,
                          height: 1.6,
                          fontFamily: "Regular",
                          color: Color(0xff4E4B66)),
                      moreStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 13,
                          color: Color(0xff00C7FF),
                          fontWeight: FontWeight.w600,
                          fontFamily: "SemiBold"),
                    ),
                    SizedBox(
                      height: 12,
                    ),

                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        collapsedIconColor: Color(0xff262338),
                        iconColor: Color(0xff262338),
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Chương 01: Bàn về kế hoạch cuộc sống tr.",
                          maxLines: 1,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        children: [
                          Container(
                            height: getProportionateScreenWidth(120),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Assets.icons.down.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Đoạn 1 : Lời mở đầu",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 32),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              border: Border.all(
                                                  color: Color(0xff00C7FF),
                                                  width: 2)),
                                          child: Center(
                                              child: Text(
                                            "Đọc Ebook",
                                            style: TextStyle(
                                                letterSpacing: 0.25,
                                                fontSize: 13,
                                                fontFamily: "Bold",
                                                color: Color(0xff007099)),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(12),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0xff3D40C6),
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 15,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    print("adf");
                                                  },
                                                  child:
                                                      Assets.icons.Play.svg()),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Nghe Audio",
                                                style: TextStyle(
                                                    letterSpacing: 0.25,
                                                    fontSize: 13,
                                                    fontFamily: "Bold",
                                                    color: Color(0xffFCFCFC)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(160),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.ph.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(270),
                                        child: Text(
                                          "Đoạn 02: Bàn về kế hoạch cuộc đời và cách kiến tạo lên bản đánh giá chất lượng công việc",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16, right: 33),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width:
                                              getProportionateScreenWidth(121),
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              border: Border.all(
                                                  color: Color(0xff00C7FF),
                                                  width: 2)),
                                          child: Center(
                                              child: Text(
                                            "Đọc Ebook",
                                            style: TextStyle(
                                                letterSpacing: 0.25,
                                                fontSize: 13,
                                                fontFamily: "Bold",
                                                color: Color(0xff007099)),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(12),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width:
                                              getProportionateScreenWidth(145),
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0xff3D40C6),
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width:
                                                    getProportionateScreenWidth(
                                                        15),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    print("adf");
                                                  },
                                                  child:
                                                      Assets.icons.Play.svg()),
                                              SizedBox(
                                                width: 12,
                                              ),
                                              Text(
                                                "Nghe Audio",
                                                style: TextStyle(
                                                    letterSpacing: 0.25,
                                                    fontSize: 13,
                                                    fontFamily: "Bold",
                                                    color: Color(0xffFCFCFC)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(140),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffFFF8F2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Mua ngay sách điện tử để mở khóa toàn bộ nội dung cuốn sách",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(22),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 28, right: 29),
                                  child: Row(
                                    children: [
                                      Text(
                                        " Giá 299.000đ",
                                        style: TextStyle(
                                            color: Color(0xff00CC67),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(20),
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFF4C4D),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.cardw
                                                .svg(width: 16, height: 16),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "MUA NGAY",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(100),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.Lock.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Đoạn 03: Sản phẩm khiến bạn chưa thành công trong công việc kinh doanh của mình.",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: CircularPercentIndicator(
                                          progressColor: Color(0xff00C7FF),
                                          backgroundColor: Color(0xffEFF0F6),
                                          radius: 28,
                                          lineWidth: 3,
                                          animation: true,
                                          // linearGradient: LinearGradient(
                                          //     colors: [
                                          //       Color(0xff5F2EEA),
                                          //       Color(0xffE359F9),
                                          //     ],
                                          //     begin: Alignment.topCenter,
                                          //     end: Alignment.bottomCenter),
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          animationDuration: 1000,
                                          percent: 0.4,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Tổng kết chương 01",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(20),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(160),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe miễn phí",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Ôn luyện kiến thức chương 01",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 45),
                                  child: Row(
                                    children: [
                                      Text(
                                        "0/10 CÂU",
                                        style: TextStyle(
                                            color: Color(0xffA0A3BD),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(45),
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(157),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.book
                                                .svg(width: 13, height: 13),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Làm bài ngay",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        collapsedIconColor: Color(0xff262338),
                        iconColor: Color(0xff262338),
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Chương 02 : Bàn về tu dương",
                          maxLines: 1,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 15,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        children: [
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Assets.icons.down.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Đoạn 1 : Lời mở đầu",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(20),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: (145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe Audio",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(160),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.ph.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Đoạn 02: Bàn về kế hoạch cuộc đời và cách kiến tạo lên bản đánh giá chất lượng công việc",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe Audio",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(140),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffFFF8F2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Mua ngay sách điện tử để mở khóa toàn bộ nội dung cuốn sách",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        " Giá 299.000đ",
                                        style: TextStyle(
                                            color: Color(0xff00CC67),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFF4C4D),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.card
                                                .svg(width: 13, height: 13),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "MUA NGAY",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(100),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.Lock.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Đoạn 03: Sản phẩm khiến bạn chưa thành công trong công việc kinh doanh của mình.",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: CircularPercentIndicator(
                                          progressColor: Color(0xff00C7FF),
                                          backgroundColor: Color(0xffEFF0F6),
                                          radius: 28,
                                          lineWidth: 3,
                                          animation: true,
                                          // linearGradient: LinearGradient(
                                          //     colors: [
                                          //       Color(0xff5F2EEA),
                                          //       Color(0xffE359F9),
                                          //     ],
                                          //     begin: Alignment.topCenter,
                                          //     end: Alignment.bottomCenter),
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          animationDuration: 1000,
                                          percent: 0.4,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Tổng kết chương 01",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(20),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(160),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe miễn phí",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Ôn luyện kiến thức chương 01",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        "0/10 CÂU",
                                        style: TextStyle(
                                            color: Color(0xffA0A3BD),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: 45,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(157),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.card
                                                .svg(width: 13, height: 13),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Làm bài ngay",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        collapsedIconColor: Color(0xff262338),
                        iconColor: Color(0xff262338),
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Chương 03: Bàn về ý thức nguy cấp trong bádf",
                          maxLines: 1,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        children: [
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Assets.icons.down.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Đoạn 1 : Lời mở đầu",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(20),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe Audio",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(160),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.ph.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Đoạn 02: Bàn về kế hoạch cuộc đời và cách kiến tạo lên bản đánh giá chất lượng công việc",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe Audio",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(140),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffFFF8F2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Mua ngay sách điện tử để mở khóa toàn bộ nội dung cuốn sách",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        " Giá 299.000đ",
                                        style: TextStyle(
                                            color: Color(0xff00CC67),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFF4C4D),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.card
                                                .svg(width: 13, height: 13),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "MUA NGAY",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(100),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.Lock.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Đoạn 03: Sản phẩm khiến bạn chưa thành công trong công việc kinh doanh của mình.",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: CircularPercentIndicator(
                                          progressColor: Color(0xff00C7FF),
                                          backgroundColor: Color(0xffEFF0F6),
                                          radius: 28,
                                          lineWidth: 3,
                                          animation: true,
                                          // linearGradient: LinearGradient(
                                          //     colors: [
                                          //       Color(0xff5F2EEA),
                                          //       Color(0xffE359F9),
                                          //     ],
                                          //     begin: Alignment.topCenter,
                                          //     end: Alignment.bottomCenter),
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          animationDuration: 1000,
                                          percent: 0.4,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Tổng kết chương 01",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(20),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(160),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe miễn phí",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Ôn luyện kiến thức chương 01",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        "0/10 CÂU",
                                        style: TextStyle(
                                            color: Color(0xffA0A3BD),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: 45,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(157),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.card
                                                .svg(width: 13, height: 13),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Làm bài ngay",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        collapsedIconColor: Color(0xff262338),
                        iconColor: Color(0xff262338),
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Chương 04: Bàn về tâm thế khởi nghiệp",
                          maxLines: 1,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 15,
                              fontFamily: "Bold",
                              color: Color(0xff262338)),
                        ),
                        children: [
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Assets.icons.down.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Đoạn 1 : Lời mở đầu",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(20),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe Audio",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(160),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.ph.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Đoạn 02: Bàn về kế hoạch cuộc đời và cách kiến tạo lên bản đánh giá chất lượng công việc",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe Audio",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(140),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffFFF8F2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Mua ngay sách điện tử để mở khóa toàn bộ nội dung cuốn sách",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        " Giá 299.000đ",
                                        style: TextStyle(
                                            color: Color(0xff00CC67),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(145),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFF4C4D),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.card
                                                .svg(width: 13, height: 13),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "MUA NGAY",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(100),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.icons.Lock.svg(),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Đoạn 03: Sản phẩm khiến bạn chưa thành công trong công việc kinh doanh của mình.",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: CircularPercentIndicator(
                                          progressColor: Color(0xff00C7FF),
                                          backgroundColor: Color(0xffEFF0F6),
                                          radius: 28,
                                          lineWidth: 3,
                                          animation: true,
                                          // linearGradient: LinearGradient(
                                          //     colors: [
                                          //       Color(0xff5F2EEA),
                                          //       Color(0xffE359F9),
                                          //     ],
                                          //     begin: Alignment.topCenter,
                                          //     end: Alignment.bottomCenter),
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          animationDuration: 1000,
                                          percent: 0.4,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Tổng kết chương 01",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            letterSpacing: 0.75,
                                            color: Color(0xff14142B)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(20),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 121,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: Border.all(
                                                color: Color(0xff00C7FF),
                                                width: 2)),
                                        child: Center(
                                            child: Text(
                                          "Đọc Ebook",
                                          style: TextStyle(
                                              letterSpacing: 0.25,
                                              fontSize: 13,
                                              fontFamily: "Bold",
                                              color: Color(0xff007099)),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(160),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff3D40C6),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  print("adf");
                                                },
                                                child: Assets.icons.Play.svg()),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Nghe miễn phí",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: getProportionateScreenWidth(120),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0x66E3F7FF),
                                      Color(0x66FFD8C3),
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 280,
                                        child: Text(
                                          "Ôn luyện kiến thức chương 01",
                                          style: TextStyle(
                                              height: 1.3,
                                              fontSize: 15,
                                              fontFamily: "Bold",
                                              letterSpacing: 0.75,
                                              color: Color(0xff14142B)),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenWidth(25),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        "0/10 CÂU",
                                        style: TextStyle(
                                            color: Color(0xffA0A3BD),
                                            fontSize: 15,
                                            fontFamily: "Bold"),
                                      ),
                                      SizedBox(
                                        width: 45,
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(157),
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 22,
                                            ),
                                            Assets.icons.card
                                                .svg(width: 13, height: 13),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Làm bài ngay",
                                              style: TextStyle(
                                                  letterSpacing: 0.25,
                                                  fontSize: 13,
                                                  fontFamily: "Bold",
                                                  color: Color(0xffFCFCFC)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(42),
              ),
              Container(
                margin: EdgeInsets.only(left: 24),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nội dung tương tự",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff262338),
                            fontFamily: "Bold"),
                      )
                    ]),
              ),
              SizedBox(
                height: 24,
              ),
              // Container(
              //     margin: EdgeInsets.only(left: 24), child: ListGoodbook())
            ],
          ),
        ),
      ),
    );
  }
}
