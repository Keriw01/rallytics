class ServerException implements Exception {
  final String message;

  ServerException({this.message = 'Wystąpił nieoczekiwany błąd serwera.'});
}
