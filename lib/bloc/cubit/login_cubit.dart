import 'package:biboo/api/ILoginService.dart';
import 'package:biboo/api/api.dart';
import 'package:biboo/model/Usermodle.dart';
import 'package:biboo/model/login_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final TextEditingController email;
  final TextEditingController pass;
  final GlobalKey<FormState> formKey;
  final ILoginService service;
  bool isLoginFail = false;
  bool isLoading = false;
  LoginCubit(this.formKey, this.email, this.pass, {required this.service})
      : super(LoginState());

  Future<void> Summit() async {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      final data = await service.login(
          UserModel(email: email.text.trim(), password: pass.text.trim()));
      if (data is LoginModel) {
        emit(LoginComplete(data));
      }
    } else {
      isLoginFail = true;
      emit(LoginValidateState(isLoginFail));
    }
  }
}
