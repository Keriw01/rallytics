import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  final String googleWebClientId;
  final String stripePublishedKey;
  final String apiUrl;

  const AppConfig._({
    required this.googleWebClientId,
    required this.stripePublishedKey,
    required this.apiUrl,
  });

  @factoryMethod
  factory AppConfig.fromEnvironment() {
    return AppConfig._(
      googleWebClientId: const String.fromEnvironment('GOOGLE_WEB_CLIENT_ID'),
      stripePublishedKey: const String.fromEnvironment('STRIPE_PUBLISHED_KEY'),
      apiUrl: const String.fromEnvironment('api_url'),
    );
  }
}
