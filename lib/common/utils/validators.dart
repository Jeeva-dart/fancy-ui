library validators;
part 'form_validator.dart';

sealed class ValidatorTypes {
  final RegExp regExp;
  final String emptyMessage = "Please enter [label]";
  final String errorMessage = "Invalid [label]";
  final String minimumLength = "Please enter minimum length";
  const ValidatorTypes(this.regExp);
}

final class ValidatorText extends ValidatorTypes {
  ValidatorText() : super(RegExp(r'^[a-zA-Z0-9._%+-]{4,}$'));
}

final class ValidatorEmail extends ValidatorTypes {
  ValidatorEmail() : super(RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'));
  
  @override
  String get errorMessage => "Please enter valid email address"; 
}

final class ValidatorPassword extends ValidatorTypes {
  ValidatorPassword() : super(RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$%\^&\*])[A-Za-z\d!@#\$%\^&\*]{8,}$'));

  @override
  String get errorMessage => "Weak password add more combination";
}