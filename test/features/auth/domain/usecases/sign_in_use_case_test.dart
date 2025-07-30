import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_in_with_email.dart';

import 'sign_in_use_case_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late SignInWithEmailUseCase useCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    useCase = SignInWithEmailUseCase(mockAuthRepository);
  });

  const tEmail = 'test@test.com';
  const tPassword = 'password123!';

  final tSignInParams = SignInParams(email: tEmail, password: tPassword);

  test(
    'powinien wywołać signInWithEmail w repozytorium, gdy dane są poprawne',
    () async {
      when(
        mockAuthRepository.signInWithEmail(any, any),
      ).thenAnswer((_) async => {});

      await useCase(tSignInParams);

      verify(mockAuthRepository.signInWithEmail(tEmail, tPassword));
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );

  test(
    'powinien rzucić ValidationException, gdy e-mail jest niepoprawny',
    () async {
      final paramsWithInvalidEmail = SignInParams(
        email: 'invalid-email',
        password: tPassword,
      );

      expect(
        () => useCase(paramsWithInvalidEmail),
        throwsA(
          isA<ValidationException>().having(
            (e) => e.code,
            'code',
            ValidationErrorCode.invalidEmail,
          ),
        ),
      );
    },
  );
}
