import 'package:biboo/UI/Player/commom.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Playing extends StatelessWidget {
  const Playing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
       color: Colors.red,
        boxShadow: [
        BoxShadow(offset: Offset(0, -1), color: Colors.black12, blurRadius: 1)
      ]),
      child: InkWell(
        onTap: () {},
        child: 
           Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(7),
                     child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://i2.wp.com/media.designs.vn/public/media/media/picture/30-07-2013/bia_sach_dep_thiet_ke_bia_sach_34.jpg",
                  width: 36,
                  height: 54,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
                ),
                
              ],
            )
          
        
      ),
    );
  }
}
