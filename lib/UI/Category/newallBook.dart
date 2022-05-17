import 'package:flutter/material.dart';

class allnewbook extends StatelessWidget {
  const allnewbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE5E5E5),
      height: double.infinity,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.zero,
        mainAxisSpacing: 4,
        crossAxisSpacing: 2,
        childAspectRatio: 0.5,
        children: List.generate(12, (index) => customallbook()),
      ),
    );
  }
}

class customallbook extends StatelessWidget {
  const customallbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          child: Image.asset(
            "assets/image/imageBook.png",
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "Can they do that tomorow?",
          style: TextStyle(fontFamily: 'Bold', fontSize: 15),
          // textAlign: TextAlign.center,
          maxLines: 2,
          // style: McFont.textXSmallBold.ash,
        ),
        Text(
          "John Wick",
          style: TextStyle(fontFamily: 'Regular', fontSize: 13),
          // textAlign: TextAlign.center,
          maxLines: 1,
          // style: McFont.textXSmallBold.ash,
        ),
      ]),
    );
  }
}
