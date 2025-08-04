import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  final String googleWebClientId;

  const AppConfig._({required this.googleWebClientId});

  @factoryMethod
  factory AppConfig.fromEnvironment() {
    return AppConfig._(
      googleWebClientId: const String.fromEnvironment('GOOGLE_WEB_CLIENT_ID'),
    );
  }
}
