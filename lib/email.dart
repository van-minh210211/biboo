import 'package:biboo/config/BiString.dart';
import 'package:formz/formz.dart';

import '../../../base_error.dart';
enum EmailError { invalid, empty, exist, duplicate }

class Email extends FormzInput<String, EmailError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$',
  );

  @override
  EmailError? validator(String value) {
    if (value == BaseError.emailDuplicate) {
      return EmailError.duplicate;
    }
    if (value.isEmpty) {
      return EmailError.empty;
    }
    if (value == 'testqwer_6868@gmail.com') {
      return EmailError.exist;
    }
    return _emailRegExp.hasMatch(value) ? null : EmailError.invalid;
  }
}

extension EmailExplanation on EmailError {
  String? get name {
    switch (this) {
      case EmailError.empty:
        return BaseError.emailEmpty;
      case EmailError.invalid:
        return BaseError.emailError;
      case EmailError.exist:
        return BaseError.emailExists;
      case EmailError.duplicate:
        return TextString.nullValue;
      default:
        return null;
    }
  }
}
