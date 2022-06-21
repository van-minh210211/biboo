import 'package:biboo/model/Usermodle.dart';
import 'package:biboo/model/login_response.dart';
import 'package:dio/dio.dart';


abstract class ILoginService {
  final Dio dio ;

  ILoginService(this.dio);
  Future<LoginModel> login(UserModel model);
}

