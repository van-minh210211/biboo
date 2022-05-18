import 'package:biboo/UI/Home/all.dart';
import 'package:biboo/config/Palette.dart';
import 'package:biboo/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListGoodBook extends StatelessWidget {
  const CustomListGoodBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      width: getProportionateScreenHeight(130),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: CachedNetworkImage(
              imageUrl:
                  "https://i2.wp.com/media.designs.vn/public/media/media/picture/30-07-2013/bia_sach_dep_thiet_ke_bia_sach_34.jpg",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Barack Obama và sự nghiệp",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: "Bold",
              fontSize: 15,
              color: Color(0xff262338),
              fontWeight: FontWeight.w700,
              letterSpacing: 0.75,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Barack Obama ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 15,
                fontFamily: "Regular",
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
                fontStyle: FontStyle.normal,
                color: Color(0xffA0A3BD)),
          )
        ],
      ),
    );
  }
}
