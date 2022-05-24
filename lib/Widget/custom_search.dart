import 'package:biboo/config/Palette.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      height: getProportionateScreenWidth(40),
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
          color: Palette.input, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Tìm kiếm chủ đề",
              hintStyle: TextStyle(fontFamily: 'Regular', fontSize: 17),
              icon: Assets.icons.search.svg(),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
