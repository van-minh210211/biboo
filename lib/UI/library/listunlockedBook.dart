import 'package:biboo/UI/Home/all.dart';
import 'package:biboo/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../config/Palette.dart';

class listunlockedBook extends StatelessWidget {
  const listunlockedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getProportionateScreenHeight(200),
      // width: getProportionateScreenWidth(110),
      child: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.zero,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.4,
        children: List.generate(31, (index) => listall()),
      ),
    );
  }
}

class listall extends StatelessWidget {
  const listall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            imageUrl:
                "https://i2.wp.com/media.designs.vn/public/media/media/picture/30-07-2013/bia_sach_dep_thiet_ke_bia_sach_34.jpg",
            // width: double.infinity,
            // fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "Barack Obama và sự nghiệp",
          style: TextStyle(
              height: 1.1,
              fontFamily: 'Bold',
              letterSpacing: 0.25,
              fontSize: 13),
          // textAlign: TextAlign.center,
          maxLines: 2,
          // style: McFont.textXSmallBold.ash,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          "John Wick",
          style: TextStyle(
              fontFamily: 'Regular',
              fontSize: getProportionateScreenWidth(9),
              letterSpacing: 0.25),
          // textAlign: TextAlign.center,
          maxLines: 1,
          // style: McFont.textXSmallBold.ash,
        ),
      ]),
    );
  }
}
