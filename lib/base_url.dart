import 'package:biboo/env.dart';

class BaseURL {
  const BaseURL._();
  //api account
  static String kLoginWithAccount =
      '${ENV.kSSOURL}/auth/realms/${ENV.realm}/protocol/openid-connect/token';
}