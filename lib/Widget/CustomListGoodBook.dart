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
      width: getProportionateScreenWidth(128),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: null,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(
                imageUrl:
                    "https://i2.wp.com/media.designs.vn/public/media/media/picture/30-07-2013/bia_sach_dep_thiet_ke_bia_sach_34.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Can they do that tomorrow?",
            textAlign: TextAlign.start,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              height: 1.2,
              fontFamily: "Bold",
              fontSize: getProportionateScreenWidth(15),
              color: Color(0xff262338),
              fontWeight: FontWeight.w700,
              letterSpacing: 0.75,
            ),
            maxLines: 2,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Barack Obama ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 13,
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
