part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.paymentIntentCreationRequested({
    required int amount,
    required String currency,
  }) = _PaymentIntentCreationRequested;
  const factory PaymentEvent.paymentConfirmed({required String clientSecret}) =
      _PaymentConfirmed;
}
