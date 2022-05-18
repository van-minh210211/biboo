import 'package:biboo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        leading: Container(
          width: 29,
          height: 29,
          child: IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/icons/back_black.svg")),
        ),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: Container(
              width: 109,
              height: 31,
              decoration: BoxDecoration(
                  color: Color(0xff00CC67),
                  borderRadius: BorderRadius.circular(24)),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/icons/back_black.svg"))
        ],
      ),
      body: Container(color: Color(0xffFFFFFF)),
    );
  }
}
