import 'package:biboo/model/Categoty.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Navigationbar.dart';
import '../../config/BiString.dart';
import '../../config/Palette.dart';
import '../Login/Login.dart';
import '../Login/LoginBizbook.dart';

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  int page = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: [
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/image/onboard.png',
                  fit: BoxFit.fill,
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: Colors.transparent.withOpacity(0.5),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.55),
                        const Text(
                          'Khám phá\nthư viện sách nói',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: "Bold",
                              letterSpacing: 0.75,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        // ElevatedButton(

                        //   onPressed:  (){
                        //     if(page == 2){
                        //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                        //       // Navigator.pushNamedAndRemoveUntil(context, PageRoutes.mainPage, (route) => false,arguments: 0);
                        //     }else{
                        //       setState(() {
                        //         page ++;
                        //         controller.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                        //       });
                        //     }
                        //   },
                        //   child: const Text('TIẾP TỤC',style: TextStyle(
                        //     color: Color(0xffF7F7FC),
                        //     fontWeight: FontWeight.w700,
                        //       fontStyle: FontStyle.normal,
                        //       letterSpacing: 0.75,
                        //       fontSize: 15,
                        //       fontFamily: "Bold"
                        //   ),
                        //     textAlign: TextAlign.center,
                        //   ),
                        //   style: ButtonStyle(
                        //     minimumSize:
                        //     MaterialStateProperty.all(const Size(303, 56)),
                        //     shape: MaterialStateProperty.all<
                        //         RoundedRectangleBorder>(
                        //       RoundedRectangleBorder(

                        //         borderRadius: BorderRadius.circular(40),
                        //         // side: const BorderSide(color: Colors.red),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 59),
                            child: Container(
                              height: 56,
                              width: 303,
                              margin: const EdgeInsets.only(bottom: 16),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 10),
                              decoration: BoxDecoration(
                                color: Color(0xff3D40C6),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'TIẾP TỤC',
                                    style: TextStyle(
                                        color: Color(0xffF7F7FC),
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.75,
                                        fontSize: 15,
                                        fontFamily: "Bold"),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()));
                          },
                          child: Text(
                            'Bỏ qua bước này',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: "Bold",
                                letterSpacing: 0.75,
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                color: Color(0xffFFFFFF)),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/image/onboard2.png',
                  fit: BoxFit.fill,
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: Colors.transparent.withOpacity(0.5),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.55),
                        const Text(
                          'Đa dạng chủ đề\nmuôn vàn tri thức',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: "Bold",
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 31,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 59),
                            child: Container(
                              height: 56,
                              width: 303,
                              margin: const EdgeInsets.only(bottom: 16),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 10),
                              decoration: BoxDecoration(
                                color: Color(0xff3D40C6),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'TIẾP TỤC',
                                    style: TextStyle(
                                        color: Color(0xffF7F7FC),
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.75,
                                        fontSize: 15,
                                        fontFamily: "Bold"),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()));
                          },
                          child: Text(
                            'Bỏ qua bước này',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: "Bold",
                                letterSpacing: 0.75,
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                color: Color(0xffFFFFFF)),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/image/onboard3.png',
                  fit: BoxFit.fill,
                ),
                Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: Colors.transparent.withOpacity(0.5),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.55),
                        const Text(
                          'Hàng ngàn cuốn sách\ntrong tầm tay',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Bold",
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 59),
                            child: Container(
                              height: 56,
                              width: 303,
                              margin: const EdgeInsets.only(bottom: 16),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 10),
                              decoration: BoxDecoration(
                                color: Color(0xff3D40C6),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'BẮT ĐẦU NGAY',
                                    style: TextStyle(
                                        color: Color(0xffF7F7FC),
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.75,
                                        fontSize: 15,
                                        fontFamily: "Bold"),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()));
                          },
                          child: Text(
                            'Bỏ qua bước này',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: "Bold",
                                letterSpacing: 0.75,
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                color: Color(0xffFFFFFF)),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeOutCirc,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
