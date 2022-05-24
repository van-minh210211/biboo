import 'package:biboo/UI/Detail/Detail.dart';
import 'package:biboo/UI/Detail/Introduce.dart';
import 'package:flutter/material.dart';

// class Intro_Detail extends StatelessWidget {
class Intro_Detail extends StatefulWidget {
  const Intro_Detail({Key? key}) : super(key: key);

  @override
  State<Intro_Detail> createState() => _Intro_DetailState();
}

class _Intro_DetailState extends State<Intro_Detail>
    with TickerProviderStateMixin {
  late TabController _controller;
  late int _index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _index = 0;
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              physics: NeverScrollableScrollPhysics(),
              headerSliverBuilder: (context, isScolled) {
                return [
                  SliverAppBar(
                    collapsedHeight: 620,
                    expandedHeight: 60,
                    flexibleSpace: Detail(),
                  ),
                  SliverPersistentHeader(
                    delegate: MyDelegate(TabBar(
                      labelPadding: const EdgeInsets.symmetric(
                        vertical: 7,
                        horizontal: 18,
                      ),
                      automaticIndicatorColorAdjustment: false,
                      indicatorColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      isScrollable: true,
                      controller: _controller,
                      labelColor: Color(0xff262338),
                      unselectedLabelColor: Color(0xffA0A3BD),
                      onTap: (int index) {
                        setState(() {
                          _index = index;
                        });
                      },
                      tabs: [
                        Tab(
                          child: Column(
                            children: [
                              Text(
                                'Giới thiệu',
                                style:
                                    TextStyle(fontSize: 20, fontFamily: 'Bold'),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                height: 4,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: _index == 0
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
                                'Đánh giá',
                                style:
                                    TextStyle(fontSize: 20, fontFamily: 'Bold'),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                height: 4,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: _index == 1
                                        ? Color(0xff3D40C6)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(4)),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                    floating: true,
                    pinned: true,
                  )
                ];
              },
              body: Container(
                child: Container(
                  child: TabBarView(
                      controller: _controller,
                      children: [Introduce(), Text("asdf")]),
                ),
              )),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.transparent,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          child: tabBar),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
