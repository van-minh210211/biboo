import 'package:biboo/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../config/Palette.dart';
import '../Selection/Selection.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffFCFCFC),
        padding: EdgeInsets.only(left: 27, right: 21, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.icons.back.svg(),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                "Danh mục",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff262338),
                  fontFamily: "Bold",
                ),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Container(
              height: 40,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffEFF0F7),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Tìm kiếm danh mục",
                    hintStyle: TextStyle(
                        fontFamily: 'Regular',
                        letterSpacing: 0.75,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                    icon: Assets.icons.search.svg(color: Color(0xff6E7191)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 46,
            ),
            // Expanded(
            //   child: GridView.count(
            //       crossAxisCount: 3,
            //       children: List.generate(9, (index) => ListSelection())),
            // ),
          ],
        ),
      ),
    );
  }
}
