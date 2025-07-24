enum ServerErrorCode {
  invalidCredentials,
  emailInUse,
  weakPassword,
  networkError,
  unknown,
}

class ServerException implements Exception {
  final ServerErrorCode code;
  final String? originalMessage;

  ServerException({this.code = ServerErrorCode.unknown, this.originalMessage});
}
