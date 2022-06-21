import 'package:biboo/UI/Category/detailCatrgory.dart';
import 'package:biboo/UI/Selection/Selection.dart';
import 'package:biboo/Widget/BackgroupImage.dart';
import 'package:biboo/Widget/CustomMultiple.dart';
import 'package:biboo/bloc/cubit/login_cubit.dart';
import 'package:biboo/gen/assets.gen.dart';
import 'package:biboo/size_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../api/api.dart';
import '../../config/BiString.dart';
import '../../config/Palette.dart';
import 'Forgot_password/Forgot_password.dart';

class LoginBizbook extends StatefulWidget {
  @override
  _LoginBizbookState createState() => _LoginBizbookState();
}

class _LoginBizbookState extends State<LoginBizbook> {
  final String baseUrl =
      'https://sso.mcbooks.vn/auth/realms/MCBOOK/protocol/openid-connect/token';
  late final Dio _dio;
  bool _switchValue = false;
  bool ispass = true;
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return
        BlocProvider(
      create: (context) => LoginCubit(
        formKey,
        email,
        pass,
        service: Sign(Dio(BaseOptions(baseUrl: baseUrl))),
      ),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginComplete) {
            state.navigate(context);
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              BackgroudImage(),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Form(
                  key: formKey,
                  autovalidateMode: autovalidateMode(state),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(child: Assets.icons.ic_back.svg()),
                              SizedBox(
                                height: 12,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: TextString.login,
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Color(0xffFCFCFC),
                                        fontFamily: "Bold",
                                        fontWeight: FontWeight.w700,
                                      ))),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "Đăng nhập sử dụng tài khoản Bizbooks1",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffEFF0F7),
                                    fontFamily: 'Regular',
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          // width: double.infinity,355
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 522,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.white),

                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [
                                    Text(
                                      "Tài Khoản BizBooks",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Bold",
                                          color: Color(0xff262338),
                                          fontSize: 28),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(19),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: email,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return ' Vui lòng nhập một địa chỉ email hợp lệ';
                                        }
                                        if (!RegExp(
                                                r'[a-zA-Z0-9\+\.\_\%\-\+]{1,256}\@[a-zA-Z0-9]'
                                                r'[a-zA-Z0-9\-]{0,64}(\.[a-zA-Z0-9][a-zA-Z0-9\-]{0,25})+')
                                            .hasMatch(value)) {
                                          return " Vui lòng nhập một địa chỉ email hợp lệ";
                                        }
                                        return null;
                                      },
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(
                                            0xff262338,
                                          ),
                                          fontFamily: "Regular"),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              gapPadding: 1,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          // errorBorder: OutlineInputBorder(
                                          //     borderSide: BorderSide(
                                          //         width: 1,
                                          //         color: Color(0xffFF4C4D)),
                                          //     borderRadius: BorderRadius.all(
                                          //         Radius.circular(16))),
                                          filled: true,
                                          fillColor: Palette.input,
                                          hintText: 'Email đăng nhập',
                                          hintStyle: TextStyle(
                                              fontSize: 15,
                                              letterSpacing: 0.75,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6E7191),
                                              fontFamily: "Regular")),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenWidth(14),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.only(right: 24),
                                            width: double.infinity,
                                            // height:
                                            //     getProportionateScreenWidth(56),
                                            child: TextFormField(
                                              validator: (value) {
                                                // add your custom validation here.
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Mật khẩu ít nhất 6  ký tự';
                                                }
                                                if (value.length <= 5) {
                                                  return 'Mật khẩu ít nhất 6  ký tự';
                                                }
                                                return null;
                                              },
                                              controller: pass,
                                              obscureText: ispass,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(
                                                    0xff262338,
                                                  ),
                                                  fontFamily: "Regular"),
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  16))),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                16)),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              width: 1,
                                                              color: Color(
                                                                  0xffFF4C4D)),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          16))),
                                                  // errorBorder: OutlineInputBorder(
                                                  //     borderSide: BorderSide(
                                                  //         width: 1,
                                                  //         color:
                                                  //             Color(0xffFF4C4D)),
                                                  //     borderRadius:
                                                  //         BorderRadius.all(
                                                  //             Radius.circular(
                                                  //                 16))),
                                                  filled: true,
                                                  fillColor: Palette.input,
                                                  hintText: 'Mật khẩu',
                                                  hintStyle: TextStyle(
                                                      fontSize: 15,
                                                      letterSpacing: 0.75,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Regular")),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: _testpass,
                                            child: Container(
                                              height: 56,
                                              width: 56,
                                              child: IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: _testpass,
                                                  icon: ispass
                                                      ? Assets.icons.sHow.svg()
                                                      : Assets.icons.sHow1
                                                          .svg()),
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenWidth(35),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Ghi nhớ đăng nhập",
                                              style: TextStyle(
                                                  fontFamily: 'Regular',
                                                  letterSpacing: 0.75,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        FlutterSwitch(
                                          activeColor: Color(0xff00C7FF),
                                          inactiveColor: Color(0xffD9DBE9),
                                          width: 64,
                                          padding: 1,
                                          height: 32,
                                          valueFontSize: 100.0,
                                          toggleSize: 31.0,
                                          value: _switchValue,
                                          onToggle: (val) {
                                            setState(() {
                                              _switchValue = val;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenWidth(25),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotPassWord()));
                                      },
                                      child: Text(
                                        "Quên mật khẩu?",
                                        style: TextStyle(
                                            fontFamily: "Bold",
                                            fontSize: 15,
                                            letterSpacing: 0.75,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenWidth(34),
                                    ),
                                    // Padding(
                                    //   padding: EdgeInsets.symmetric(horizontal: 32),

                                    BlocBuilder<LoginCubit, LoginState>(
                                      builder: (context, state) {
                                        return InkWell(
                                          onTap: () {
                                            context.read<LoginCubit>().Summit();
                                          },

                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: ((context) =>
                                          //             Selection())));

                                          child: Container(
                                            height:
                                                getProportionateScreenWidth(56),
                                            width: getProportionateScreenWidth(
                                                323),
                                            margin: const EdgeInsets.only(
                                                bottom: 31),
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: Color(0xff3D40C6),
                                              borderRadius:
                                                  BorderRadius.circular(96),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "ĐĂNG NHẬP",
                                                  style: TextStyle(
                                                    color: Color(0xffF7F7FC),
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            15),
                                                    fontFamily: "Bold",
                                                    letterSpacing: 0.75,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _testpass() {
    setState(() {
      ispass = !ispass;
    });
  }
}

AutovalidateMode autovalidateMode(LoginState state) => state
        is LoginValidateState
    ? (state.isValidate ? AutovalidateMode.always : AutovalidateMode.disabled)
    : AutovalidateMode.disabled;

extension LoginCompleteExtension on LoginComplete {
  void navigate(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Selection(),
    ));
  }
}
