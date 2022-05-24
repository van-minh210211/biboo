import 'dart:async';

import 'package:biboo/UI/Intro_slide.dart';
import 'package:biboo/UI/Login/Login.dart';
import 'package:biboo/UI/Onboard/Onboard.dart';
import 'package:biboo/onboarding/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Loginpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueAccent, Colors.purpleAccent])),
        child: Stack(
          children: [
            Center(
              child: Image.asset("assets/image/BGBook.png"),
            ),
            Center(
              child: Image.asset("assets/image/Biboo1.png"),
              // child: Text("BIBOO",style: TextStyle(color: Colors.white,fontSize: 62),),
            )
          ],
        ),
      ),
    );
  }
}
