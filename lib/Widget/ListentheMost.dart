// ignore_for_file: unused_local_variable

import 'package:biboo/UI/Gift/gift.dart';
import 'package:biboo/UI/library/library_body.dart';
import 'package:biboo/config/Palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../UI/Home/body_screens.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> with TickerProviderStateMixin {
  late TabController controller;
  late int index1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    index1 = 0;
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Hello world");
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Container(
            color: Color(0xffF7F7FC),
            padding: EdgeInsets.only(top: 55),
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  controller: controller,
                  labelColor: Color(0xff262338),
                  unselectedLabelColor: Color(0xffA0A3BD),
                  onTap: (int index) {
                    setState(() {
                      index1 = index;
                    });
                  },
                  tabs: [
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Column(
                          children: [
                            Text(
                              "Tất cả",
                              style: TextStyle(
                                fontFamily: 'Bold',
                                fontSize: 33,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 4,
                              width: 88,
                              decoration: BoxDecoration(
                                  color: index1 == 0
                                      ? Color(0xff3D40C6)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          Text(
                            "Thư viện",
                            style: TextStyle(fontFamily: 'Bold', fontSize: 33),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            height: 4,
                            width: 123,
                            decoration: BoxDecoration(
                                color: index1 == 1
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
                            'Quà tặng',
                            style: TextStyle(fontSize: 33, fontFamily: 'Bold'),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            height: 4,
                            width: 140,
                            decoration: BoxDecoration(
                                color: index1 == 2
                                    ? Color(0xff3D40C6)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(4)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      controller: controller,
                      children: [
                        HomeBody(),
                        libraryBook(),
                        gift(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
// class CircleTabIndeicator extends Decoration{
//    double radius;
//    final Color color;
//    CircleTabIndeicator ({required this.radius, required this.color});
//    @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
//     // TODO: implement createBoxPainter
//     return _CirclePainter(radius:radius,color: color);
//   }
// }
//
// class _CirclePainter  extends  BoxPainter{
//   final double radius ;
//   final Color color;
//   _CirclePainter({ required this.radius,required this.color});
//    @override
//   void paint(Canvas canvas, Offset offset,
//   ImageConfiguration configuration) {
//     Paint _paint = Paint();
//     // TODO: implement paint
//     //  late Paint _paint;
//      _paint.color = color;
//      _paint= _paint ..isAntiAlias=true;
//      final Offset circleOffset = Offset(configuration.size!.width/2,2);
//     // canvas.drawCircle(offset+circleOffset, radius, _paint);
//   }
// }

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;
  final Color color;
  final double radius;
  final double indicatorHeight;

  CircleTabIndicator({
    required this.color,
    required this.radius,
    required this.indicatorHeight,
  }) : _painter = _CirclePainter(color, radius, indicatorHeight);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;
  final double indicatorHeight;

  _CirclePainter(Color color, this.radius, this.indicatorHeight)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Rect rect = Offset(
            offset.dx, ((configuration.size?.height ?? 0) - indicatorHeight)) &
        Size((configuration.size?.width ?? 0), indicatorHeight);
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: Radius.circular(radius),
            topLeft: Radius.circular(radius)),
        _paint);
  }
}
