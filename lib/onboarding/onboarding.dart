
import 'package:biboo/UI/Home/body_screens.dart';
import 'package:biboo/UI/Login/Login.dart';
import 'package:biboo/onboarding/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  
  int page = 0;
  PageController controller = PageController(initialPage: 0);


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // PreferenceManager.setBool(PreferenceManager.isFirstLogin,false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Image.asset(
          //     'assets/image/onboard.png',
          //     width: 500,
          //     fit: BoxFit.fill
          // ),
          // Container(
          //   padding: EdgeInsets.fromLTRB(220,100,50,50),
          //   child: SizedBox(
          //     height: 13,
          //     width: 42,
          //     child: ListView.separated(
          //       itemCount: 4,
          //       shrinkWrap: false,
          //       scrollDirection: Axis.horizontal,
          //       primary: true,
          //       separatorBuilder: (context, index) => const SizedBox(width: 4,),
          //       itemBuilder: (context, index) {
          //         return   Container(
          //           alignment: Alignment.center,
          //           width: 13,
          //           height: 15,
          //           decoration: BoxDecoration(
          //               color: page == index ? Color(0xff4FABE8) : Color(0xffA9D6F4),
          //               borderRadius: BorderRadius.circular(50)
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (value) {
                        setState(() {
                          page = value;
                        });
                      },
                      children: [
                        Stack(
                          children: [
                            Center(
                              child:  Image.asset("assets/image/onboard.png",fit:BoxFit.cover,),
                            ),
                            Center(
                              child: Center(child: Text("Khám phá thư viện sach mới"),)
                              // child: Text("BIBOO",style: TextStyle(color: Colors.white,fontSize: 62),),
                            ),
                            Container(
                              height: 60,
                              width: double.infinity,
                              margin: EdgeInsets.all(40),
                              color: Theme.of(context).primaryColor,
                              child: FlatButton(
                                child: Text("Tiếp tục"),
                                onPressed:  (){
                                  if(page == 2){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                                    // Navigator.pushNamedAndRemoveUntil(context, PageRoutes.mainPage, (route) => false,arguments: 0);
                                  }else{
                                    setState(() {
                                      page ++;
                                      controller.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                                    });
                                  }
                                },
                                color: Theme.of(context).primaryColor,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: double.infinity,
                              margin: EdgeInsets.all(100),
                              color: Theme.of(context).primaryColor,
                              child: FlatButton(
                                child: Text("bỏ qua"),
                                onPressed:  (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeBody()));
                                },
                                color: Theme.of(context).primaryColor,
                                textColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Center(
                              child:  Image.asset("assets/image/onboard2.png",fit:BoxFit.fill,),
                            ),
                            Center(
                              child: Image.asset("assets/image/Biboo1.png"),
                              // child: Text("BIBOO",style: TextStyle(color: Colors.white,fontSize: 62),),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  margin: EdgeInsets.all(40),
                                  color: Theme.of(context).primaryColor,
                                  child: FlatButton(
                                    child: Text("Tiếp tục"),
                                    onPressed:  (){
                                      if(page == 2){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                                        // Navigator.pushNamedAndRemoveUntil(context, PageRoutes.mainPage, (route) => false,arguments: 0);
                                      }else{
                                        setState(() {
                                          page ++;
                                          controller.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                                        });
                                      }
                                    },
                                    color: Theme.of(context).primaryColor,
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  margin: EdgeInsets.all(100),
                                  color: Theme.of(context).primaryColor,
                                  child: FlatButton(
                                    child: Text("bỏ qua"),
                                    onPressed:  (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeBody()));
                                    },
                                    color: Theme.of(context).primaryColor,
                                    textColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                        Stack(
                children: [
                  Center(
                    child:  Image.asset("assets/image/onboard3.png",fit:BoxFit.fill,),
                  ),
                  Center(
                    child: Image.asset("assets/image/Biboo1.png"),
                    // child: Text("BIBOO",style: TextStyle(color: Colors.white,fontSize: 62),),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        margin: EdgeInsets.all(40),
                        color: Theme.of(context).primaryColor,
                        child: FlatButton(
                          child: Text("Tiếp tục"),
                          onPressed:  (){
                            if(page == 2){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                              // Navigator.pushNamedAndRemoveUntil(context, PageRoutes.mainPage, (route) => false,arguments: 0);
                            }else{
                              setState(() {
                                page ++;
                                controller.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                              });
                            }
                          },
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        margin: EdgeInsets.all(100),
                        color: Theme.of(context).primaryColor,
                        child: FlatButton(
                          child: Text("bỏ qua"),
                          onPressed:  (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeBody()));
                          },
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),


                        // OnboardingScreen1( tittle: "Khám phá\nthư viện sách nói",Image: 'assets/image/image1.png',
                        // ),
                        // OnboardingScreen1( tittle: "Đa dạng chủ đề\nMuôn vàn tri thức",Image: 'assets/image/Biboo1.png',
                        //  ),
                        // OnboardingScreen1( tittle: "Hàng ngàn cuốn sách\n trong tầm tay ",Image: 'assets/image/image1.png',
                        //   ),
                      ],
                      controller: controller,
                    ),

                  ),


                  // NormalButton(
                  //   height: 40,
                  //   width: context.getWidth()-50,
                  //   text: "Tiếp tục",
                  //   action: (){
                  //     if(page == 2){
                  //       Navigator.pushNamedAndRemoveUntil(context, PageRoutes.mainPage, (route) => false,arguments: 0);
                  //     }else{
                  //       setState(() {
                  //         page ++;
                  //         controller.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                  //       });
                  //     }
                  //   },
                  // ),
                  // InkWell(
                  //   onTap: (){
                  //   },
                  //   child: Text("Bỏ qua bước này",style: TextStyle(color: Colors.white,fontSize: 23),),
                  // )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

