enum AuthErrorCode {
  unknown,
  invalidCredentials,
  invalidEmail,
  weakPassword,
  emailAlreadyInUse,
}

enum ValidationErrorCode {
  unknown,
  emptyFields,
  invalidEmail,
  weakPassword,
  passwordsDoNotMatch,
}

class AuthException implements Exception {
  final AuthErrorCode code;
  final String? originalMessage;

  AuthException({this.code = AuthErrorCode.unknown, this.originalMessage});
}

class ValidationException implements Exception {
  final ValidationErrorCode code;

  ValidationException({this.code = ValidationErrorCode.unknown});
}
