import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:rallytics/core/error/error_codes.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/payment/data/datasources/payment_datasource.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late PaymentDataSource dataSource;

  const tAmount = 1000;
  const tCurrency = 'pln';
  const tClientSecret = 'pi_test_client_secret_string';
  const tEndpoint = '/create-payment-intent';

  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    dataSource = PaymentDataSourceImpl(dio);
  });

  group('createPaymentIntent', () {
    test(
      'should return clientSecret when the response code is 200 (success)',
      () async {
        dioAdapter.onPost(
          tEndpoint,
          (server) => server.reply(200, {'clientSecret': tClientSecret}),
          data: {'amount': tAmount, 'currency': tCurrency},
        );

        final result = await dataSource.createPaymentIntent(
          amount: tAmount,
          currency: tCurrency,
        );

        expect(result, equals(tClientSecret));
      },
    );

    test(
      'should throw PaymentException when the response code is 200 but data is malformed',
      () async {
        dioAdapter.onPost(
          tEndpoint,
          (server) => server.reply(200, {'some_other_key': 'some_value'}),
        );

        final call = dataSource.createPaymentIntent;

        expect(
          () => call(amount: tAmount, currency: tCurrency),
          throwsA(
            isA<PaymentException>().having(
              (e) => e.code,
              'code',
              PaymentErrorCode.networkFailed,
            ),
          ),
        );
      },
    );

    test(
      'should throw a PaymentException with networkError code for server errors (e.g., 500)',
      () async {
        dioAdapter.onPost(
          tEndpoint,
          (server) => server.reply(500, {'error': 'Internal Server Error'}),
          data: {'amount': tAmount, 'currency': tCurrency},
        );

        final call = dataSource.createPaymentIntent;

        expect(
          () => call(amount: tAmount, currency: tCurrency),
          throwsA(
            isA<PaymentException>().having(
              (e) => e.code,
              'code',
              PaymentErrorCode.networkError,
            ),
          ),
        );
      },
    );
  });
}
