import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/features/payment/domain/repositories/payment_repository.dart';
import 'package:rallytics/features/payment/domain/usecases/create_payment_intent_usecase.dart';

import 'create_payment_intent_usecase_test.mocks.dart';

@GenerateMocks([PaymentRepository])
void main() {
  late CreatePaymentIntentUseCase useCase;
  late MockPaymentRepository mockRepository;

  setUp(() {
    mockRepository = MockPaymentRepository();
    useCase = CreatePaymentIntentUseCase(mockRepository);
  });

  final tParams = PaymentIntentParams(amount: 2, currency: 'pln');
  const tClientSecret = 'pi_test_client_secret_string';

  test(
    'should call createPaymentIntent on the repository and return a client secret',
    () async {
      when(
        mockRepository.createPaymentIntent(
          amount: anyNamed('amount'),
          currency: anyNamed('currency'),
        ),
      ).thenAnswer((_) async => tClientSecret);

      final result = await useCase(tParams);

      expect(result, equals(tClientSecret));
      verify(
        mockRepository.createPaymentIntent(
          amount: tParams.amount,
          currency: tParams.currency,
        ),
      );
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
