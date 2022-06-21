import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 24),
                child: Shimmer.fromColors(
                  baseColor: Color(0xFFEBEBF4),
                  highlightColor: Color(0xFFF4F4F4),
                  child: Column(
                    children: [
                      Container(
                        width: getProportionateScreenWidth(128),
                        height: 192,
                        decoration: BoxDecoration(
                            color: Color(0xFFEBEBF4),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 128,
                        height: 24,
                        decoration: BoxDecoration(
                            color: Color(0xFFEBEBF4),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 128,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Color(0xFFEBEBF4),
                            borderRadius: BorderRadius.circular(4)),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
