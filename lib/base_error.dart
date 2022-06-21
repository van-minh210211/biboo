class BaseError {
  const BaseError._();

  static String anotherError = 'Xảy ra lỗi.';
  static String loginError = 'Email hoặc mật khẩu không chính xác';
  static String textFieldIsEmpty = 'Không được để trống';
  static String passlError = 'Mật khẩu phải có ít nhất 6 ký tự và không dấu';

  static String nameError = 'Sai định dạng tên';
  static String phoneNumberError = 'Sai số điện thoại';
  static String rePasswordError = 'Nhập lại mật khẩu không trùng'
      ' với mật khẩu đã nhập.';
  static String emailRepeat = 'Email không chính xác';

  static String registerError = 'Email đã tồn tại';
  static String rePasswordFails = 'Mật khẩu tối thiểu 6 chữ số';

  // OTP
  static String otpError = 'Mã xác nhận không chính xác';
  static String otpInvalid = 'Mã xác nhận bao gồm 6 ký tự';

  // Email
  static String emailEmpty = '*Vui lòng điền đầy đủ thông tin';
  static String emailError = 'Sai định dạng email';
  static String emailExists = 'Email đã tồn tại trong hệ thống';
  static String emailExistsForgotPass = 'Email không tồn tại trong hệ thống. '
      'Vui lòng đăng kí tài khoản';
  static String emailDuplicate = 'DuplicateEmail';

  // Form name
  static String nameEmpty = 'Vui lòng điền đầy đủ thông tin để đăng ký';
  static String nameInvalid = 'Họ và tên không nhập quá 30 ký tự';

  // Form error login with account
  static String formFieldEmptyLogin = 'Vui lòng điền đầy đủ thông tin';
  static String passLoginError = 'Mật khẩu từ 6-15 kí tự. '
      'Vui lòng kiểm tra lại';
}
