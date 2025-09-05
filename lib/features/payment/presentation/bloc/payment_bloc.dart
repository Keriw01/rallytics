import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/error/error_codes.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/payment/data/datasources/stripe_service.dart';
import 'package:rallytics/features/payment/domain/usecases/create_payment_intent_usecase.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final CreatePaymentIntentUseCase _createPaymentIntentUseCase;
  final AuthBloc _authBloc;
  final StripeService _stripeService;

  PaymentBloc(
    this._createPaymentIntentUseCase,
    this._authBloc,
    this._stripeService,
  ) : super(const PaymentState.initial()) {
    on<_PaymentIntentCreationRequested>((event, emit) async {
      emit(const PaymentState.loading());

      try {
        final clientSecret = await _createPaymentIntentUseCase(
          PaymentIntentParams(amount: event.amount, currency: event.currency),
        );

        emit(PaymentState.readyToPay(clientSecret));
      } on PaymentException catch (e) {
        emit(PaymentState.error(e.code));
      } catch (e) {
        emit(PaymentState.error(PaymentErrorCode.unknown));
      }
    });

    on<_PaymentConfirmed>((event, emit) async {
      emit(PaymentState.loading());

      try {
        final authState = _authBloc.state;
        UserEntity? currentUser;

        authState.whenOrNull(
          authenticated: (user) {
            currentUser = user;
          },
        );

        if (currentUser == null) {
          emit(PaymentState.error(PaymentErrorCode.errorUserNotLoggedIn));
          return;
        }

        await _stripeService.confirmPayment(
          clientSecret: event.clientSecret,
          params: PaymentMethodParams.p24(
            paymentMethodData: PaymentMethodData(
              billingDetails: BillingDetails(email: currentUser?.email),
            ),
          ),
        );

        emit(const PaymentState.success());
      } on StripeException {
        emit(PaymentState.error(PaymentErrorCode.paymentFailed));
      } catch (e) {
        emit(PaymentState.error(PaymentErrorCode.unknown));
      }
    });
  }
}
