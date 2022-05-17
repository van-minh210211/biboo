import 'package:biboo/UI/Login/PassNew/PassNew.dart';
import 'package:biboo/config/BiString.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../../../config/Palette.dart';
import '../../../gen/assets.gen.dart';
class ForgotPassWord2 extends StatefulWidget {
  const ForgotPassWord2({Key? key}) : super(key: key);

  @override
  _ForgotPassWord2State createState() => _ForgotPassWord2State();
}

class _ForgotPassWord2State extends State<ForgotPassWord2> {
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
                           text: TextString.ForgotPassWord,style: TextStyle(fontFamily: 'Bold',fontSize: 28)
                         )),
                            SizedBox(
                              height: 16,
                            ),
                            Text(TextString.content2,style: TextStyle(color:Palette.white,fontSize: 15,fontFamily: 'Regular'),),
                             SizedBox(height: 40,),
                             Padding(
                               padding: const EdgeInsets.only(right: 12.0),
                               child: Column(
                                    children: [
                                      Container(
                                        width: 400,
                                        height: 56,
                                        decoration: BoxDecoration(
                                            color: Palette.offwhite,
                                            borderRadius: BorderRadius.circular(22)
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
                                              width: 241,
                                              height: 56,
                                              decoration: BoxDecoration(
                                                color: Palette.offwhite,
                                                borderRadius: BorderRadius.circular(22),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(22, 3, 22, 1),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: TextString.ma,
                                                    hintStyle: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Regular'
                                                    )
                                                  ),

                                                ),
                                              ),
                                            ),
                                            Text("Gửi lại",style: TextStyle(fontSize: 15, fontFamily: 'Bold',color: Palette.white ),)

                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 32,
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Passnew()));
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
                                            borderRadius: BorderRadius.circular(40),
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
