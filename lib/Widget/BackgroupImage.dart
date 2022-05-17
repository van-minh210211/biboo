import 'package:flutter/material.dart';

class BackgroudImage extends StatefulWidget {
  const BackgroudImage({Key? key}) : super(key: key);

  @override
  _BackgroudImageState createState() => _BackgroudImageState();
}

class _BackgroudImageState extends State<BackgroudImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ShaderMask(
      shaderCallback: (bounds) => LinearGradient(colors: [
        Color(0x050505),
        Color(0xf020202),
      ], begin: Alignment.topCenter, end: Alignment.center)
          .createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/image/login.png',
          ),
          fit: BoxFit.fill,

          // colorFilter: ColorFilter.mode(Colors.black45,
          //     BlendMode.darken),
        )),
      ),
    ));
  }
}
