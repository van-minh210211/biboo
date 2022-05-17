import 'package:biboo/model/Categoty.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../gen/assets.gen.dart';

class listSelection extends StatelessWidget {
  const listSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(250),
      child: GridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: 4,
        childAspectRatio: 0.26,
        mainAxisSpacing: 3,

        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 10,
        // physics: NeverScrollableScrollPhysics(),
        children: List.generate(
            Data.length,
            (index) => list(
                  category1: Data[index],
                )),
      ),
    );
  }
}

class list extends StatelessWidget {
  const list({Key? key, required this.category1});
  final Category1 category1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Container(
                width: getProportionateScreenWidth(46),
                height: getProportionateScreenWidth(42),
                child: SvgPicture.asset(category1.Imagee),
                // child: Assets.icons.iconl.svg(),
              ),
              SizedBox(
                width: 19.44,
              ),
              SizedBox(
                width: 110,
                child: Text(
                  category1.Title,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      height: 1.1,
                      // overflow: TextOverflow.ellipsis,
                      fontFamily: "Bold",
                      color: Color(0xff4E4B66),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25,
                      fontSize: 13),
                ),
              ),
            ],
          )),
    );
  }
}
