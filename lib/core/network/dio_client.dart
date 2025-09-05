import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/config/app_config.dart';

@singleton
class DioClient {
  final Dio dio;

  DioClient(this.dio, AppConfig appConfig) {
    dio.options = BaseOptions(
      baseUrl: appConfig.apiUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    );
  }
}

@module
abstract class DioInjectableModule {
  @lazySingleton
  Dio get dio => Dio();
}
