part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = Initial;
  const factory PaymentState.loading() = Loading;
  const factory PaymentState.readyToPay(String clientSecret) = _ReadyToPay;
  const factory PaymentState.success() = _Success;
  const factory PaymentState.error(PaymentErrorCode code) = _Error;
}
