import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/generated/l10n.dart';
import 'package:rallytics/helpers/error_message_helper.dart';

abstract class PaymentDataSource {
  Future<String> createPaymentIntent({
    required int amount,
    required String currency,
  });
}

@LazySingleton(as: PaymentDataSource)
class PaymentDataSourceImpl implements PaymentDataSource {
  final Dio _dio;

  PaymentDataSourceImpl(this._dio);

  @override
  Future<String> createPaymentIntent({
    required int amount,
    required String currency,
  }) async {
    try {
      final response = await _dio.post(
        '/create-payment-intent',
        data: {'amount': amount, 'currency': currency},
      );

      if (response.statusCode == 200 && response.data['clientSecret'] != null) {
        return response.data['clientSecret'];
      } else {
        throw PaymentException(
          originalMessage: S.current.paymentInvalidResponse,
        );
      }
    } on DioException catch (e) {
      throw mapDioExceptionToPaymentException(e);
    } catch (e) {
      throw PaymentException(originalMessage: e.toString());
    }
  }
}
