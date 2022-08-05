mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;
  bool isEmpty(String text) => text.isEmpty || text == "null";
  bool isEmailValid(String email) {
    final RegExp emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    return emailValid.hasMatch(email);
  }

  bool isPhoneValid(String phone) {
    final RegExp phoneValid = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

    return phoneValid.hasMatch(phone);
  }
}
