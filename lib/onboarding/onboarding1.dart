
import 'package:biboo/config/Palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class OnboardingScreen1 extends StatefulWidget {
  String tittle;
  String Image;


  OnboardingScreen1({Key? key, required this.tittle,required this.Image,}) : super(key: key);
  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(

        padding: const EdgeInsets.only(top: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.tittle, textAlign:TextAlign.center,style:
            TextStyle(color: Palette.white,fontSize: 28,fontFamily: 'Bold',height: 28/17),
              ),
           Expanded(child:  Image.asset(widget.Image,fit: BoxFit.cover,width: double.infinity,))
          ],
        ),
      ),
    );
  }
}


