import 'package:biboo/UI/Home/body_screens.dart';
import 'package:flutter/material.dart';

import '../UI/Search/Search.dart';
import '../Widget/ListentheMost.dart';
import 'gen/assets.gen.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selec = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const appbar(),
    const searchBook(),
    const searchBook(),
    searchBook(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[selec],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontFamily: "Regular"),
            unselectedLabelStyle: TextStyle(fontFamily: "Regular"),
            unselectedFontSize: 13,
            selectedFontSize: 13,
            backgroundColor: Color(0xffFCFCFC),
            currentIndex: selec,
            selectedItemColor: Color(0xff3D40C6),
            onTap: (index) => setState(() => selec = index),
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Assets.icons.icHome.svg(
                      color:
                          selec == 0 ? Color(0xff3D40C6) : Color(0xff6E7191)),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Assets.icons.ic_seachb.svg(
                      color:
                          selec == 1 ? Color(0xff3D40C6) : Color(0xff6E7191)),
                ),
                label: "Tìm kiếm",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Assets.icons.card.svg(
                      color:
                          selec == 2 ? Color(0xff3D40C6) : Color(0xff6E7191)),
                ),
                label: "Giỏ hàng",
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Assets.icons.icProfile.svg(
                        color:
                            selec == 3 ? Color(0xff3D40C6) : Color(0xff6E7191)),
                  ),
                  label: "Cá nhân")
            ]),
      ),
      // bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
