import 'package:biboo/UI/Home/all.dart';
import 'package:biboo/Widget/CustomBook.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listbook extends StatelessWidget {
  const Listbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(270),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.only(left: 4),
          itemCount: 16,
          itemBuilder: (context, index) {
            return Custombook();
          }),
    );
  }
}
