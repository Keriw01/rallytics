import 'package:flutter/widgets.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/generated/l10n.dart';

AuthErrorCode mapFirebaseErrorCode(String firebaseCode) {
  switch (firebaseCode) {
    case 'user-not-found':
    case 'wrong-password':
    case 'invalid-credential':
      return AuthErrorCode.invalidCredentials;
    case 'invalid-email':
      return AuthErrorCode.invalidEmail;
    case 'weak-password':
      return AuthErrorCode.weakPassword;
    case 'email-already-in-use':
      return AuthErrorCode.emailAlreadyInUse;
    default:
      return AuthErrorCode.unknown;
  }
}

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
      return l10n.errorGeneric;
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
    case ValidationErrorCode.unknown:
      return l10n.errorGeneric;
    case ValidationErrorCode.passwordsDoNotMatch:
      return l10n.validationErrorPasswordsDoNotMatch;
    case ValidationErrorCode.emptyFields:
      return l10n.validationErrorEmptyFields;
    case ValidationErrorCode.invalidEmail:
      return l10n.validationErrorInvalidEmail;
    case ValidationErrorCode.weakPassword:
      return l10n.validationErrorWeakPassword;
  }
}
