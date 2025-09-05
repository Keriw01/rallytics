abstract class PaymentRepository {
  Future<String> createPaymentIntent({
    required int amount,
    required String currency,
  });
}
