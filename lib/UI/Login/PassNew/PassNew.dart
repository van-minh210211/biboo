import 'package:flutter/material.dart';
import '../../../config/Palette.dart';
import '../../../gen/assets.gen.dart';
import 'package:biboo/config/BiString.dart';
class Passnew extends StatefulWidget {
  const Passnew({Key? key}) : super(key: key);

  @override
  _PassnewState createState() => _PassnewState();
}

class _PassnewState extends State<Passnew> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Image.asset(
            'assets/image/forgot_password.png',
            width: 450,
            fit: BoxFit.fill
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned(
                  top: 0,right: 0,left: 0,
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.only(top:61,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Assets.icons.ic_back.svg(),
                          ),
                          RichText(text: TextSpan(
                              text: TextString.NewPassWord,style: TextStyle(fontFamily: 'Bold',fontSize: 28)
                          )),
                          SizedBox(
                            height: 16,
                          ),
                          Text(TextString.content3,style: TextStyle(color:Palette.white,fontSize: 15,fontFamily: 'Regular'),),
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 400,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 24),
                                        width: 300,
                                        height: 56,
                                        decoration: BoxDecoration(
                                          color: Palette.input,
                                          borderRadius: BorderRadius.circular(22),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(22, 3, 22, 1),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: TextString.createpass,
                                                hintStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Regular'
                                                )
                                            ),

                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/image/CircleButton.png"),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Container(
                                  height: 56,
                                  width: 400,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 24),
                                        width: 300,
                                        height: 56,
                                        decoration: BoxDecoration(
                                          color: Palette.input,
                                          borderRadius: BorderRadius.circular(22),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(22, 3, 22, 1),
                                          child: TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: TextString.createpass,
                                                hintStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Regular'
                                                )
                                            ),

                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/image/CircleButton.png"),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 32,
                                ),

                                Container(
                                  height: 56,
                                  margin: const EdgeInsets.only(bottom: 35),
                                  alignment: Alignment.center,
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: 50,
                                      vertical: 15
                                  ),
                                  decoration: BoxDecoration(
                                    color: Palette.blue,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child:   Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        TextString.createnewpasss,
                                        style: TextStyle(color: Palette.white,fontSize: 15,fontFamily: 'Bold'),
                                      )
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}