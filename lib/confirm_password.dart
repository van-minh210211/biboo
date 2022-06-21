import 'package:biboo/config/BiString.dart';
import 'package:formz/formz.dart';

import '../../../base_error.dart';


enum ConfirmedPasswordValidationError {
  empty,
  mismatch,
}

class ConfirmPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  const ConfirmPassword.pure({this.password = ''}) : super.pure('');

  const ConfirmPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return ConfirmedPasswordValidationError.empty;
    }
    return password == value ? null : ConfirmedPasswordValidationError.mismatch;
  }
}

extension Explanation on ConfirmedPasswordValidationError {
  String? get name {
    switch (this) {
      case ConfirmedPasswordValidationError.empty:
        return TextString.nullValue;
      case ConfirmedPasswordValidationError.mismatch:
        return BaseError.rePasswordError;
      default:
        return null;
    }
  }
}
