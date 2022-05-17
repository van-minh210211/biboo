import 'package:biboo/UI/Home/body_screens.dart';
import 'package:biboo/Widget/BackgroupImage.dart';
import 'package:biboo/Widget/custom_search.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Navigationbar.dart';
import '../../config/BiString.dart';
import '../../config/Palette.dart';
import '../../model/Theme.dart';
import '../Category/detailCatrgory.dart';
import '../Login/Forgot_password/Forgot_password2.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: Color(0xE5E5E5),
      body: Container(
        padding: EdgeInsets.only(left: 24, right: 24, top: 55),
        color: Color(0xffF7F7FC),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: "Chọn chủ đề",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Bold',
                        fontSize: 28))),
            SizedBox(
              height: 27,
            ),
            Text(
              "Hãy lựa chọn ít nhất \n03 chủ đề bạn quan tâm",
              style: TextStyle(
                  height: 1.1,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Bold',
                  color: Colors.black),
            ),
            SizedBox(
              height: 32,
            ),
            Search(),
            SizedBox(
              height: 46,
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 3,
                  padding: EdgeInsets.all(9),
                  children: List.generate(
                      data.length,
                      (index) => ListSelection(
                            theme1: data[index],
                          ))),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Bottom()));
              },
              child: Container(
                height: getProportionateScreenWidth(56),
                width: getProportionateScreenWidth(323),
                // margin: const EdgeInsets.only(bottom: 25),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xff3D40C6),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TextString.createcontinue,
                      style: TextStyle(
                          color: Palette.white,
                          fontSize: 15,
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Bold'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 37,
            )
            // SizedBox(height: 32,)
          ],
        ),
      ),
    );
  }
}

class ListSelection extends StatelessWidget {
  const ListSelection({Key? key, required this.theme1}) : super(key: key);
  final Theme2 theme1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => detailCategory()));
      },
      child: Column(
        children: [
          Container(
            width: 52,
            height: 52,
            child: SvgPicture.asset(theme1.Imagee),
            // child: Assets.icons.iconl.svg(),
          ),
          SizedBox(
            height: 31,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              theme1.Title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Bold',
                  color: Color(0xffA0A3BD),
                  fontSize: 13,
                  letterSpacing: 0.25),
            ),
          ),
        ],
      ),
    );
  }
}
