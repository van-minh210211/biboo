part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    this.username = '',
   this.password = '',
  });
final String username;
  final String password;
   LoginState copyWith ({
   String? username,
   String? password,
 }){
   return LoginState(
     username: username?? this.username,
     password: password?? this.password
   );
 }
  @override
  List<Object> get props => [
    username,
    password
  ];

}

class LoginInitial extends LoginState {}

class LoginComplete extends LoginState {
  final LoginModel model;

  LoginComplete(this.model);
}

class LoginValidateState extends LoginState {
  final bool isValidate;

  LoginValidateState(this.isValidate);
}

class LoginLoadingState extends LoginState {
  final bool isLoading;

  LoginLoadingState(this.isLoading);
}