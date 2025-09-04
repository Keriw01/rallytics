import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:rallytics/core/error/error_codes.dart';
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

String getErrorMessage(BuildContext context, ErrorCode code) {
  if (code is AuthErrorCode) {
    return _getAuthErrorMessage(context, code);
  }

  if (code is ValidationErrorCode) {
    return _getValidationErrorMessage(context, code);
  }

  if (code is PaymentErrorCode) {
    return _getPaymentErrorMessage(context, code);
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
    case AuthErrorCode.configurationError:
      return l10n.authErrorConfiguration;
    case AuthErrorCode.facebookAuthFailed:
      return l10n.authErrorFacebookFailed;
    case AuthErrorCode.facebookAuthCanceled:
      return l10n.authErrorFacebookCanceled;
    case AuthErrorCode.gitHubAuthCanceled:
      return l10n.authErrorGitHubCanceled;
    case AuthErrorCode.googleAuthCanceled:
      return l10n.authErrorGoogleCanceled;
    case AuthErrorCode.accountExistsWithDifferentCredential:
      return l10n.authErrorAccountExistsWithDifferentCredential;
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

PaymentException mapDioExceptionToPaymentException(DioException dioException) {
  if (dioException.response != null &&
      dioException.response!.statusCode != null) {
    final statusCode = dioException.response!.statusCode!;
    final originalMessage =
        dioException.response!.data['error']?.toString() ??
        dioException.message;

    switch (statusCode) {
      case 400:
        return PaymentException(
          code: PaymentErrorCode.invalidRequest,
          originalMessage: originalMessage,
        );
      case 401:
      case 403:
        return PaymentException(
          code: PaymentErrorCode.authenticationError,
          originalMessage: originalMessage,
        );
      case 402:
        return PaymentException(
          code: PaymentErrorCode.paymentFailed,
          originalMessage: originalMessage,
        );
      case 404:
        return PaymentException(
          code: PaymentErrorCode.resourceNotFound,
          originalMessage: originalMessage,
        );
      case 500:
      case 502:
      case 503:
      case 504:
        return PaymentException(
          code: PaymentErrorCode.networkError,
          originalMessage: originalMessage,
        );
      default:
        return PaymentException(
          code: PaymentErrorCode.unknown,
          originalMessage: originalMessage,
        );
    }
  }

  return PaymentException(code: PaymentErrorCode.networkFailed);
}

String _getPaymentErrorMessage(BuildContext context, PaymentErrorCode code) {
  final l10n = S.of(context);

  switch (code) {
    case PaymentErrorCode.networkFailed:
      return l10n.paymentNetworkFailed;
    case PaymentErrorCode.networkError:
      return l10n.paymentNetworkError;
    case PaymentErrorCode.paymentFailed:
      return l10n.paymentPaymentFailed;
    case PaymentErrorCode.invalidRequest:
      return l10n.paymentInvalidRequest;
    case PaymentErrorCode.authenticationError:
      return l10n.paymentAuthenticationError;
    case PaymentErrorCode.resourceNotFound:
      return l10n.paymentResourceNotFound;
    case PaymentErrorCode.errorUserNotLoggedIn:
      return l10n.paymentErrorUserNotLoggedIn;
    default:
      return l10n.errorGeneric;
  }
}
