import 'package:flutter/widgets.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/generated/l10n.dart';

String getErrorMessage(BuildContext context, ServerErrorCode code) {
  final l10n = S.of(context);
  switch (code) {
    case ServerErrorCode.invalidCredentials:
      return l10n.authErrorInvalidCredentials;
    case ServerErrorCode.emailInUse:
      return l10n.authErrorEmailInUse;
    case ServerErrorCode.weakPassword:
      return l10n.authErrorWeakPassword;
    case ServerErrorCode.unknown:
    default:
      return l10n.errorGeneric;
  }
}
