part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.readyToPay(String clientSecret) = _ReadyToPay;
  const factory PaymentState.success() = _Success;
  const factory PaymentState.error(PaymentErrorCode code) = _Error;
}
