part of 'validators.dart';
abstract class FormValidator {
  static String? validator({required String? input, required String label, required ValidatorTypes type, String? errMsg, int minLength = 4}) {
    errMsg = errMsg ?? "Invalid $label";

    switch(input) {
      case "":
        return type.emptyMessage.replaceAll("[label]", label);
      case String _ when minLength != 0 && input.length <= minLength:
        return type.minimumLength;
      case String _ when type.regExp.hasMatch(input):
        return null;
      default:
        return type.errorMessage.replaceAll("[label]", label);
    }
  }
}