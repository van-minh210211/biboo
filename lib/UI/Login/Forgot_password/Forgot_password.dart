import 'package:biboo/config/BiString.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../config/Palette.dart';
import '../../../gen/assets.gen.dart';
import 'Forgot_password2.dart';
class ForgotPassWord extends StatefulWidget {
  const ForgotPassWord({Key? key}) : super(key: key);

  @override
  _ForgotPassWordState createState() => _ForgotPassWordState();
}

class _ForgotPassWordState extends State<ForgotPassWord> {
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
                    top: 0,
                    right: 0,
                    left: 0,
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
                            RichText(
                                text: TextSpan(
                                    text: TextString.ForgotPassWord,style: TextStyle(fontFamily: 'Bold',fontSize: 28)
                                )),
                            SizedBox(
                              height: 16,
                            ),
                            Text(TextString.content,style: TextStyle(color: Palette.white,fontSize: 15,fontFamily: 'Regular'),),
                            SizedBox(height: 40,),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Column(
                                children: [
                                  Container(
                                    height: 56,
                                    decoration: BoxDecoration(
                                        color: Palette.offwhite,
                                        borderRadius: BorderRadius.circular(16)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(22, 4, 22, 1),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: TextString.emailcreate,
                                          hintStyle: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Regular'
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassWord2()));
                                    },

                                      child: Container(
                                        height: 56,
                                        // margin: const EdgeInsets.only(bottom: 25),
                                        alignment: Alignment.center,
                                        padding:  EdgeInsets.symmetric(
                                            horizontal: 50,
                                            vertical: 15
                                        ),
                                        decoration: BoxDecoration(
                                          color: Palette.blue,
                                          borderRadius: BorderRadius.circular(96),
                                        ),
                                        child:   Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              TextString.createcontinue,
                                              style: TextStyle(color: Palette.white,fontSize: 15,fontFamily: 'Bold'),
                                            )
                                          ],
                                        ),
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
