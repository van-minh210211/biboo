import 'package:biboo/config/BiString.dart';
import 'package:formz/formz.dart';
import '../../../base_error.dart';

enum PasswordError { invalid, empty }

class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp = RegExp(r'^[A-Za-z\d@$!%*?&]{6,}$');

  @override
  PasswordError? validator(String value) {
    if (value.isEmpty) {
      return PasswordError.empty;
    }
    return _passwordRegExp.hasMatch(value) ? null : PasswordError.invalid;
  }
}

extension PasswordExplanation on PasswordError {
  String? get name {
    switch (this) {
      case PasswordError.empty:
        return TextString.nullValue;
      case PasswordError.invalid:
        return BaseError.passLoginError;
      default:
        return null;
    }
  }
}
