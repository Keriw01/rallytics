import 'package:rallytics/core/error/error_codes.dart';

class AuthException implements Exception {
  final AuthErrorCode code;
  final String? originalMessage;

  AuthException({this.code = AuthErrorCode.unknown, this.originalMessage});
}

class ValidationException implements Exception {
  final ValidationErrorCode code;

  ValidationException({this.code = ValidationErrorCode.unknown});
}

class PaymentException implements Exception {
  final PaymentErrorCode code;
  final String? originalMessage;

  PaymentException({
    this.code = PaymentErrorCode.unknown,
    this.originalMessage,
  });
}
