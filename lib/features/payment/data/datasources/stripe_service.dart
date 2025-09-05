import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:injectable/injectable.dart';

abstract class StripeService {
  Future<void> confirmPayment({
    required String clientSecret,
    required PaymentMethodParams params,
  });
}

@LazySingleton(as: StripeService)
class StripeServiceImpl implements StripeService {
  @override
  Future<void> confirmPayment({
    required String clientSecret,
    required PaymentMethodParams params,
  }) {
    return Stripe.instance.confirmPayment(
      paymentIntentClientSecret: clientSecret,
      data: params,
    );
  }
}
