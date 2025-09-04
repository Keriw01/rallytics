abstract class ErrorCode {}

enum AuthErrorCode implements ErrorCode {
  unknown,
  invalidCredentials,
  invalidEmail,
  weakPassword,
  emailAlreadyInUse,
  configurationError,
  facebookAuthFailed,
  facebookAuthCanceled,
  gitHubAuthCanceled,
  googleAuthCanceled,
  accountExistsWithDifferentCredential,
}

enum ValidationErrorCode implements ErrorCode {
  unknown,
  emptyFields,
  invalidEmail,
  weakPassword,
  passwordsDoNotMatch,
}

enum PaymentErrorCode implements ErrorCode {
  unknown,
  networkFailed,
  networkError,
  paymentFailed,
  invalidRequest,
  authenticationError,
  resourceNotFound,
  errorUserNotLoggedIn,
}
