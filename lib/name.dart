import 'package:formz/formz.dart';
import '../../../base_error.dart';

enum NameError { empty, tooLong }

class Name extends FormzInput<String, NameError> {
  const Name.pure([String value = '']) : super.pure(value);
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameError? validator(String value) {
    if (value.isEmpty) {
      return NameError.empty;
    }
    return value.length < 30 ? null : NameError.tooLong;
  }
}

extension NameExplanation on NameError {
  String? get name {
    switch (this) {
      case NameError.empty:
        return BaseError.nameEmpty;
      case NameError.tooLong:
        return BaseError.nameInvalid;
      default:
        return null;
    }
  }
}
