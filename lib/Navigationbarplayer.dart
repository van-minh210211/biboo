import 'package:biboo/UI/Home/body_screens.dart';
import 'package:biboo/UI/Player/music_player.dart';

import 'package:biboo/main.dart';
import 'package:flutter/material.dart';

import '../UI/Search/Search.dart';
import '../Widget/ListentheMost.dart';
import 'gen/assets.gen.dart';

class Playerbar extends StatefulWidget {
  const Playerbar({Key? key}) : super(key: key);

  @override
  _PlayerbarState createState() => _PlayerbarState();
}

class _PlayerbarState extends State<Playerbar> {
  int selec = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const PlayerMusic(),
    const PlayerMusic(),
    const PlayerMusic(),
    const PlayerMusic(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[selec],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontFamily: "Regular"),
            unselectedLabelStyle: TextStyle(fontFamily: "Regular"),
            unselectedFontSize: 13,
            selectedFontSize: 13,
            elevation: 100,
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
                label: "Mục lục",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Assets.icons.ic_seachb.svg(
                      color:
                          selec == 1 ? Color(0xff3D40C6) : Color(0xff6E7191)),
                ),
                label: "Hẹn giờ",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Assets.icons.card.svg(
                      color:
                          selec == 2 ? Color(0xff3D40C6) : Color(0xff6E7191)),
                ),
                label: "Ebook",
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Assets.icons.icProfile.svg(
                        color:
                            selec == 3 ? Color(0xff3D40C6) : Color(0xff6E7191)),
                  ),
                  label: "Tốc độ")
            ]),
      ),
      // bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
