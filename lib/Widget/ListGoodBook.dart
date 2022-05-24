import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomListGoodBook.dart';

class ListGoodbook extends StatelessWidget {
  const ListGoodbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(280),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) => CustomListGoodBook()),
    );
  }
}
