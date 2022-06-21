import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../config/Palette.dart';


class ShimmerBookLoading extends StatelessWidget {
  const ShimmerBookLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          child: Shimmer.fromColors(
            baseColor: Palette.gray.withOpacity(0.25),
            highlightColor: Palette.white.withOpacity(0.7),
            child: Column(
              children: [
                Container(
                  width: getProportionateScreenHeight(112),
                  height: getProportionateScreenHeight(150),
                  decoration: BoxDecoration(
                    color: Palette.bgAvatar.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  width: getProportionateScreenHeight(112),
                  height: getProportionateScreenHeight(16),
                  decoration: BoxDecoration(
                    color: Palette.gray.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  width: getProportionateScreenHeight(112),
                  height: getProportionateScreenHeight(10),
                  decoration: BoxDecoration(
                    color: Palette.gray.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  width: getProportionateScreenHeight(112),
                  height: getProportionateScreenHeight(16),
                  decoration: BoxDecoration(
                    color: Palette.gray.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
