import 'package:injectable/injectable.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/payment/data/datasources/payment_datasource.dart';
import 'package:rallytics/features/payment/domain/repositories/payment_repository.dart';

@LazySingleton(as: PaymentRepository)
class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentDataSource _dataSource;

  PaymentRepositoryImpl(this._dataSource);

  @override
  Future<String> createPaymentIntent({
    required int amount,
    required String currency,
  }) async {
    try {
      return await _dataSource.createPaymentIntent(
        amount: amount,
        currency: currency,
      );
    } on PaymentException {
      rethrow;
    } catch (e) {
      throw PaymentException(originalMessage: e.toString());
    }
  }
}
