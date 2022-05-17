import 'package:biboo/UI/library/listunlockedBook.dart';
import 'package:flutter/material.dart';

import '../../config/Palette.dart';
import '../../gen/assets.gen.dart';
class searchBook extends StatefulWidget {
  const searchBook({Key? key}) : super(key: key);

  @override
  _searchBookState createState() => _searchBookState();
}

class _searchBookState extends State<searchBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.line,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("Tìm  kiếm",style: TextStyle(fontSize: 28,fontFamily: "bold"),),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
              decoration: BoxDecoration(
                  color: Palette.input,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Assets.icons.icClose.svg(),
                  ),
                    hintText: "Tìm kiếm tên sách, danh mục...",
                    helperStyle: TextStyle(fontFamily: 'Regular',fontSize: 17,),
                    icon: Assets.icons.search.svg(),
                    border: InputBorder.none
                ),
              ),
            ),
            Expanded(child: listunlockedBook())
          ],
        ),
      ),
    );
  }
}
