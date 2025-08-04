import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_up_with_email.dart';

import 'sign_up_use_case_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late SignUpWithEmailUseCase useCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    useCase = SignUpWithEmailUseCase(mockAuthRepository);
  });

  const tEmail = 'test@test.com';
  const tWeakPassword = 'password12';
  const tPassword = 'Password123!';
  const tConfirmPassword = 'Password123!';
  const tWrongConfirmPassword = 'password456!';

  final tSignUpParams = SignUpParams(
    email: tEmail,
    password: tPassword,
    confirmPassword: tConfirmPassword,
  );

  test(
    'should call signUpWithEmail in the repository when the data is valid',
    () async {
      when(
        mockAuthRepository.signUpWithEmail(any, any),
      ).thenAnswer((_) async => {});

      await useCase(tSignUpParams);

      verify(mockAuthRepository.signUpWithEmail(tEmail, tPassword));
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );

  test(
    'should throw ValidationException when passwords do not match',
    () async {
      final paramsWithMismatchedPasswords = SignUpParams(
        email: tEmail,
        password: tPassword,
        confirmPassword: tWrongConfirmPassword,
      );

      expect(
        () => useCase(paramsWithMismatchedPasswords),
        throwsA(
          isA<ValidationException>().having(
            (e) => e.code,
            'code',
            ValidationErrorCode.passwordsDoNotMatch,
          ),
        ),
      );
    },
  );

  test('should throw ValidationException when email is invalid', () async {
    final paramsWithInvalidEmail = SignUpParams(
      email: 'invalid-email',
      password: tPassword,
      confirmPassword: tConfirmPassword,
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
  });

  test('should throw ValidationException when passwords is weak', () async {
    final paramsWithWeakPasswords = SignUpParams(
      email: tEmail,
      password: tWeakPassword,
      confirmPassword: tWeakPassword,
    );

    expect(
      () => useCase(paramsWithWeakPasswords),
      throwsA(
        isA<ValidationException>().having(
          (e) => e.code,
          'code',
          ValidationErrorCode.weakPassword,
        ),
      ),
    );
  });

  test('should throw ValidationException when some field are empty', () async {
    final signUpParams = SignUpParams(
      email: '',
      password: tPassword,
      confirmPassword: tConfirmPassword,
    );

    expect(
      () => useCase(signUpParams),
      throwsA(
        isA<ValidationException>().having(
          (e) => e.code,
          'code',
          ValidationErrorCode.emptyFields,
        ),
      ),
    );
  });
}
