import 'dart:math';

import 'package:biboo/UI/Detail/Detail.dart';
import 'package:biboo/UI/Detail/Introduce.dart';
import 'package:biboo/UI/Detail/NestedScrollView.dart';
import 'package:biboo/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../config/Palette.dart';

class Custombook extends StatefulWidget {
  Custombook({
    required this.avatar,
    required this.name,
    required this.authors,
    
  });
  final String avatar, name, authors;
  @override
  State<Custombook> createState() => _CustombookState();
}

class _CustombookState extends State<Custombook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      width: getProportionateScreenWidth(128),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(4),
      // ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Intro_Detail()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl:widget.avatar,
                      // "https://i2.wp.com/media.designs.vn/public/media/media/picture/30-07-2013/bia_sach_dep_thiet_ke_bia_sach_34.jpg",
                  width: getProportionateScreenWidth(128),
                  height: 192,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              widget.name,
              // "Can they do that tomorrow?",
              style: TextStyle(
                fontFamily: "Bold",
                color: Color(0xff262338),
                fontSize: 15,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.75,
              ),

              // textAlign: TextAlign.center,
              maxLines: 2,
              // style: McFont.textXSmallBold.ash,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
            widget.authors,
              // "John Wick",
              style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 13,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                  color: Color(0xffA0A3BD)),
              // textAlign: TextAlign.center,

              maxLines: 1,
              // style: McFont.textXSmallBold.ash,
            ),
          ]),
    );
  }
}
