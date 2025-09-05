import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/core/error/error_codes.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';
import 'package:rallytics/features/payment/data/datasources/stripe_service.dart';
import 'package:rallytics/features/payment/domain/usecases/create_payment_intent_usecase.dart';
import 'package:rallytics/features/payment/presentation/bloc/payment_bloc.dart';

import 'payment_bloc_test.mocks.dart';

class MockStripe extends Mock implements Stripe {}

@GenerateMocks([CreatePaymentIntentUseCase, AuthBloc, StripeService])
void main() {
  late PaymentBloc paymentBloc;
  late MockCreatePaymentIntentUseCase mockCreatePaymentIntentUseCase;
  late MockAuthBloc mockAuthBloc;
  late MockStripeService mockStripeService;

  const tUserEntity = UserEntity(
    uid: 'test_uid',
    email: 'test@test.com',
    isEmailVerified: true,
  );

  setUp(() {
    mockCreatePaymentIntentUseCase = MockCreatePaymentIntentUseCase();
    mockAuthBloc = MockAuthBloc();
    mockStripeService = MockStripeService();

    paymentBloc = PaymentBloc(
      mockCreatePaymentIntentUseCase,
      mockAuthBloc,
      mockStripeService,
    );
  });

  tearDown(() {
    paymentBloc.close();
  });

  test('initial state should be PaymentState.initial', () {
    expect(paymentBloc.state, const PaymentState.initial());
  });

  group('PaymentIntentCreationRequested', () {
    const tAmount = 10;
    const tCurrency = 'pln';
    const tClientSecret = 'pi_test_client_secret';

    blocTest<PaymentBloc, PaymentState>(
      'should emit [loading, readyToPay] when use case succeess',
      setUp: () {
        when(
          mockCreatePaymentIntentUseCase(any),
        ).thenAnswer((_) async => tClientSecret);
      },
      build: () => paymentBloc,
      act: (bloc) => bloc.add(
        const PaymentEvent.paymentIntentCreationRequested(
          amount: tAmount,
          currency: tCurrency,
        ),
      ),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.readyToPay(tClientSecret),
      ],
      verify: (_) {
        verify(mockCreatePaymentIntentUseCase(any)).called(1);
      },
    );

    blocTest<PaymentBloc, PaymentState>(
      'should emit [loading, error] with specific code when use case throws PaymentException',
      setUp: () {
        when(
          mockCreatePaymentIntentUseCase(any),
        ).thenThrow(PaymentException(code: PaymentErrorCode.networkError));
      },
      build: () => paymentBloc,
      act: (bloc) => bloc.add(
        const PaymentEvent.paymentIntentCreationRequested(
          amount: tAmount,
          currency: tCurrency,
        ),
      ),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.error(PaymentErrorCode.networkError),
      ],
    );

    blocTest<PaymentBloc, PaymentState>(
      'should emit [loading, error] with unknown code for other exceptions',
      setUp: () {
        when(
          mockCreatePaymentIntentUseCase(any),
        ).thenThrow(Exception('Some other error'));
      },
      build: () => paymentBloc,
      act: (bloc) => bloc.add(
        const PaymentEvent.paymentIntentCreationRequested(
          amount: tAmount,
          currency: tCurrency,
        ),
      ),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.error(PaymentErrorCode.unknown),
      ],
    );
  });

  group('PaymentConfirmed', () {
    const tClientSecret = 'pi_test_client_secret';
    blocTest<PaymentBloc, PaymentState>(
      'should emit [loading, success] when user is authenticated and payment succeeds',
      setUp: () {
        when(
          mockAuthBloc.state,
        ).thenReturn(const AuthState.authenticated(tUserEntity));
        when(
          mockStripeService.confirmPayment(
            clientSecret: anyNamed('clientSecret'),
            params: anyNamed('params'),
          ),
        ).thenAnswer((_) async {
          return;
        });
      },
      build: () => paymentBloc,
      act: (bloc) => bloc.add(
        const PaymentEvent.paymentConfirmed(clientSecret: tClientSecret),
      ),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.success(),
      ],
    );

    blocTest<PaymentBloc, PaymentState>(
      'should emit [loading, error] with paymentFailed code when user is authenticated and Stripe fails',
      setUp: () {
        when(
          mockAuthBloc.state,
        ).thenReturn(const AuthState.authenticated(tUserEntity));

        final tStripeException = StripeException.fromJson({
          'error': {'code': 'failed', 'message': 'Payment failed'},
        });

        when(
          mockStripeService.confirmPayment(
            clientSecret: anyNamed('clientSecret'),
            params: anyNamed('params'),
          ),
        ).thenThrow(tStripeException);
      },
      build: () => paymentBloc,
      act: (bloc) => bloc.add(
        const PaymentEvent.paymentConfirmed(clientSecret: tClientSecret),
      ),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.error(PaymentErrorCode.paymentFailed),
      ],
    );

    blocTest<PaymentBloc, PaymentState>(
      'should emit [loading, error] with userNotLoggedIn code when user is not authenticated',
      setUp: () {
        when(mockAuthBloc.state).thenReturn(const AuthState.unauthenticated());
      },
      build: () => paymentBloc,
      act: (bloc) => bloc.add(
        const PaymentEvent.paymentConfirmed(clientSecret: tClientSecret),
      ),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.error(PaymentErrorCode.errorUserNotLoggedIn),
      ],
      verify: (_) {
        verifyNever(
          mockStripeService.confirmPayment(
            clientSecret: anyNamed('clientSecret'),
            params: anyNamed('params'),
          ),
        );
      },
    );
  });
}
