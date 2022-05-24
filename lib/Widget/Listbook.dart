import 'package:biboo/UI/Home/all.dart';
import 'package:biboo/Widget/CustomBook.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listbook extends StatelessWidget {
  const Listbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(280),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.only(left: 4),
          shrinkWrap: true,
          itemCount: 16,
          itemBuilder: (context, index) {
            return Custombook();
          }),
    );
  }
}
