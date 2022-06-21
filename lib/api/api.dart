import 'dart:convert';

import 'package:biboo/model/Usermodle.dart';

import 'ILoginService.dart';
import 'package:biboo/base_url.dart';
import 'package:biboo/env.dart';
import 'package:biboo/model/login_response.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Sign extends ILoginService {
  Sign(Dio dio) : super(dio);

  @override
  Future<LoginModel> login(UserModel model) async {
    
    // {required String Username, required String password}
    dio.interceptors.add(PrettyDioLogger());
    final fomap = {
      'username': model.email,
      'password': model.password,
      'grant_type': 'password',
      'client_id': 'mobile',
    };
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final response = await dio.post(
      "https://sso.mcbooks.vn/auth/realms/MCBOOK/protocol/openid-connect/token",
      data: fomap,
    );

    if (response.statusCode == 200) {
      return LoginModel.fromJson(response.data);
    } else {
      throw Exception(" tai khoan mat khau sai ");
    }
  }
}
