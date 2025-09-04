import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/payment/domain/repositories/payment_repository.dart';

class PaymentIntentParams extends Params {
  final int amount;
  final String currency;

  PaymentIntentParams({required this.amount, required this.currency});
}

@lazySingleton
class CreatePaymentIntentUseCase
    implements UseCase<String, PaymentIntentParams> {
  final PaymentRepository _repository;

  CreatePaymentIntentUseCase(this._repository);

  @override
  Future<String> call(PaymentIntentParams params) {
    return _repository.createPaymentIntent(
      amount: params.amount,
      currency: params.currency,
    );
  }
}
