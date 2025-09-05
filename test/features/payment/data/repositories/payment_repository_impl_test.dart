import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/features/payment/data/datasources/payment_datasource.dart';

import 'package:rallytics/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:rallytics/features/payment/domain/repositories/payment_repository.dart';

import '../repositories/payment_repository_impl_test.mocks.dart';

@GenerateMocks([PaymentDataSource])
void main() {
  late PaymentRepository repository;
  late MockPaymentDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockPaymentDataSource();
    repository = PaymentRepositoryImpl(mockDataSource);
  });

  group('createPaymentIntent', () {
    const tAmount = 1000;
    const tCurrency = 'pln';
    const tClientSecret = 'pi_test_client_secret_string';

    test(
      'should call createPaymentIntent on the data source and return client secret on success',
      () async {
        when(
          mockDataSource.createPaymentIntent(
            amount: anyNamed('amount'),
            currency: anyNamed('currency'),
          ),
        ).thenAnswer((_) async => tClientSecret);

        final result = await repository.createPaymentIntent(
          amount: tAmount,
          currency: tCurrency,
        );

        expect(result, equals(tClientSecret));
        verify(
          mockDataSource.createPaymentIntent(
            amount: tAmount,
            currency: tCurrency,
          ),
        );
        verifyNoMoreInteractions(mockDataSource);
      },
    );

    test(
      'should rethrow the exception when the data source throws an exception',
      () async {
        final tException = Exception('Network Error');
        when(
          mockDataSource.createPaymentIntent(
            amount: anyNamed('amount'),
            currency: anyNamed('currency'),
          ),
        ).thenThrow(tException);

        final call = repository.createPaymentIntent;

        expect(
          () => call(amount: tAmount, currency: tCurrency),
          throwsA(isA<Exception>()),
        );
        verify(
          mockDataSource.createPaymentIntent(
            amount: tAmount,
            currency: tCurrency,
          ),
        );
        verifyNoMoreInteractions(mockDataSource);
      },
    );
  });
}
