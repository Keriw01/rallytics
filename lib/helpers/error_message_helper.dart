import 'package:flutter/widgets.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/generated/l10n.dart';

String getErrorMessage(BuildContext context, Object code) {
  if (code is AuthErrorCode) {
    return _getAuthErrorMessage(context, code);
  }

  if (code is ValidationErrorCode) {
    return _getValidationErrorMessage(context, code);
  }

  return S.of(context).errorGeneric;
}

String _getAuthErrorMessage(BuildContext context, AuthErrorCode code) {
  final l10n = S.of(context);

  switch (code) {
    case AuthErrorCode.unknown:
      throw l10n.errorGeneric;
    case AuthErrorCode.invalidCredentials:
      return l10n.authErrorInvalidCredentials;
    case AuthErrorCode.invalidEmail:
      return l10n.authErrorInvalidEmail;
    case AuthErrorCode.weakPassword:
      return l10n.authErrorWeakPassword;
    case AuthErrorCode.emailAlreadyInUse:
      return l10n.authErrorEmailInUse;
  }
}

String _getValidationErrorMessage(
  BuildContext context,
  ValidationErrorCode code,
) {
  final l10n = S.of(context);

  switch (code) {
    case ValidationErrorCode.passwordsDoNotMatch:
      return l10n.authErrorPasswordsDoNotMatch;

    case ValidationErrorCode.emptyFields:
      throw UnimplementedError();
    case ValidationErrorCode.invalidEmail:
      throw UnimplementedError();
    case ValidationErrorCode.weakPassword:
      throw UnimplementedError();
    case ValidationErrorCode.unknown:
  }
  return l10n.errorGeneric;
}
