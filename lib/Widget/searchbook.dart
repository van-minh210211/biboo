import 'package:biboo/config/Palette.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';

class Searchbook extends StatefulWidget {
  const Searchbook({Key? key}) : super(key: key);

  @override
  _SearchbookState createState() => _SearchbookState();
}

class _SearchbookState extends State<Searchbook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(327),
      height: getProportionateScreenWidth(40),
      // margin: EdgeInsets.only(left: 24, right: 24.5),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xffEFF0F6),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Tìm kiếm sách",
              hintStyle: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: getProportionateScreenWidth(17),
                  color: Color(0xff6E7191)),
              icon: Assets.icons.search.svg(
                  width: getProportionateScreenWidth(16),
                  height: getProportionateScreenWidth(16)),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
