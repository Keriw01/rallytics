import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/core/error/exceptions.dart';

import 'package:rallytics/features/auth/domain/entities/user_entity.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_in_with_email.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_up_with_email.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([AuthRepository, SignInWithEmailUseCase, SignUpWithEmailUseCase])
void main() {
  late AuthBloc authBloc;
  late MockAuthRepository mockAuthRepository;
  late MockSignInWithEmailUseCase mockSignInUseCase;
  late MockSignUpWithEmailUseCase mockSignUpUseCase;

  const testUserEntity = UserEntity(
    uid: 'test_uid',
    email: 'test@test.com',
    isEmailVerified: true,
  );

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockSignInUseCase = MockSignInWithEmailUseCase();
    mockSignUpUseCase = MockSignUpWithEmailUseCase();

    //! Globally mocking the authStateChanges stream for all tests in this file.
    when(mockAuthRepository.authStateChanges).thenAnswer((_) => Stream.empty());
  });

  tearDown(() {
    authBloc.close();
  });

  test('initial state should be AuthState.initial', () {
    authBloc = AuthBloc(
      mockAuthRepository,
      mockSignInUseCase,
      mockSignUpUseCase,
    );

    expect(authBloc.state, const AuthState.initial());
  });

  group('Handling authorization changes', () {
    blocTest<AuthBloc, AuthState>(
      'should emit [authenticated] when a user appears in the stream',
      setUp: () {
        when(
          mockAuthRepository.authStateChanges,
        ).thenAnswer((_) => Stream.value(testUserEntity));
      },

      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),

      expect: () => [const AuthState.authenticated(testUserEntity)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [unauthenticated] when null appears in the stream',
      setUp: () {
        when(
          mockAuthRepository.authStateChanges,
        ).thenAnswer((_) => Stream.value(null));
      },

      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),

      expect: () => [const AuthState.unauthenticated()],
    );
  });

  // ------------------- Event: SignInRequested -------------------

  group('Event: SignInRequested', () {
    blocTest<AuthBloc, AuthState>(
      'it should emit [loading] and then nothing when login succeeds',
      setUp: () {
        when(mockSignInUseCase(any)).thenAnswer((_) async => {});
      },

      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),

      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'Password@1234',
        ),
      ),

      expect: () => [const AuthState.loading()],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when validation fail',
      setUp: () {
        when(
          mockSignInUseCase(any),
        ).thenThrow(ValidationException(code: ValidationErrorCode.unknown));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.unknown),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when passwords do not match',
      setUp: () {
        when(mockSignInUseCase(any)).thenThrow(
          ValidationException(code: ValidationErrorCode.passwordsDoNotMatch),
        );
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.passwordsDoNotMatch),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when form fields are empty',
      setUp: () {
        when(
          mockSignInUseCase(any),
        ).thenThrow(ValidationException(code: ValidationErrorCode.emptyFields));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(email: '', password: 'Password@1234'),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.emptyFields),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when email format is invalid',
      setUp: () {
        when(mockSignInUseCase(any)).thenThrow(
          ValidationException(code: ValidationErrorCode.invalidEmail),
        );
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: '/!test@test.com',
          password: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.invalidEmail),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when password is weak',
      setUp: () {
        when(mockSignInUseCase(any)).thenThrow(
          ValidationException(code: ValidationErrorCode.weakPassword),
        );
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'password1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.weakPassword),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when login fails',
      setUp: () {
        when(mockSignInUseCase(any)).thenAnswer(
          (_) async => throw AuthException(code: AuthErrorCode.unknown),
        );
      },

      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'Password@1234',
        ),
      ),

      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.unknown),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when credentials are invalid',
      setUp: () {
        when(
          mockSignInUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.invalidCredentials));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.invalidCredentials),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when email is invalid',
      setUp: () {
        when(
          mockSignInUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.invalidEmail));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: '/!test@test.com',
          password: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.invalidEmail),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when password is weak',
      setUp: () {
        when(
          mockSignInUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.weakPassword));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'password1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.weakPassword),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when email is already in use',
      setUp: () {
        when(
          mockSignInUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.emailAlreadyInUse));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.emailAlreadyInUse),
      ],
    );
  });

  // ------------------- Event: SignUpRequested -------------------

  group('Event: SignUpRequested', () {
    blocTest<AuthBloc, AuthState>(
      'it should emit [loading]  and then nothing when register succeeds',
      setUp: () {
        when(mockSignUpUseCase(any)).thenAnswer((_) async => {});
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@1234',
        ),
      ),
      expect: () => [const AuthState.loading()],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when validation fail',
      setUp: () {
        when(
          mockSignUpUseCase(any),
        ).thenThrow(ValidationException(code: ValidationErrorCode.unknown));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@456',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.unknown),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when passwords do not match',
      setUp: () {
        when(mockSignUpUseCase(any)).thenThrow(
          ValidationException(code: ValidationErrorCode.passwordsDoNotMatch),
        );
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@456',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.passwordsDoNotMatch),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when form fields are empty',
      setUp: () {
        when(
          mockSignUpUseCase(any),
        ).thenThrow(ValidationException(code: ValidationErrorCode.emptyFields));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: '',
          password: 'Password@1234',
          confirmPassword: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.emptyFields),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when email format is invalid',
      setUp: () {
        when(mockSignUpUseCase(any)).thenThrow(
          ValidationException(code: ValidationErrorCode.invalidEmail),
        );
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: '/!test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.invalidEmail),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when password is weak',
      setUp: () {
        when(mockSignUpUseCase(any)).thenThrow(
          ValidationException(code: ValidationErrorCode.weakPassword),
        );
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'password1234',
          confirmPassword: 'password1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ValidationErrorCode.weakPassword),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when login fails',
      setUp: () {
        when(mockSignUpUseCase(any)).thenAnswer(
          (_) async => throw AuthException(code: AuthErrorCode.unknown),
        );
      },

      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@1234',
        ),
      ),

      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.unknown),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when credentials are invalid',
      setUp: () {
        when(
          mockSignUpUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.invalidCredentials));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.invalidCredentials),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when email is invalid',
      setUp: () {
        when(
          mockSignUpUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.invalidEmail));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: '/!test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.invalidEmail),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when password is weak',
      setUp: () {
        when(
          mockSignUpUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.weakPassword));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'password1234',
          confirmPassword: 'password1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.weakPassword),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when email is already in use',
      setUp: () {
        when(
          mockSignUpUseCase(any),
        ).thenThrow(AuthException(code: AuthErrorCode.emailAlreadyInUse));
      },
      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),
      act: (bloc) => bloc.add(
        const AuthEvent.signUpRequested(
          email: 'test@test.com',
          password: 'Password@1234',
          confirmPassword: 'Password@1234',
        ),
      ),
      expect: () => [
        const AuthState.loading(),
        const AuthState.error(AuthErrorCode.emailAlreadyInUse),
      ],
    );
  });
  // ------------------- Event: SignOutRequested -------------------

  group('Event: SignOutRequested', () {
    blocTest<AuthBloc, AuthState>(
      'should emit [loading] and then nothing when sign out succeeds',
      setUp: () {
        when(mockAuthRepository.signOut()).thenAnswer((_) async => {});
      },

      build: () => authBloc = AuthBloc(
        mockAuthRepository,
        mockSignInUseCase,
        mockSignUpUseCase,
      ),

      act: (bloc) => bloc.add(const AuthEvent.signOutRequested()),

      expect: () => [const AuthState.loading()],

      verify: (_) => verify(mockAuthRepository.signOut()).called(1),
    );
  });

  blocTest<AuthBloc, AuthState>(
    'should emit [loading, error] when sign out fails',
    setUp: () {
      when(
        mockAuthRepository.signOut(),
      ).thenThrow(AuthException(code: AuthErrorCode.unknown));
    },
    build: () =>
        AuthBloc(mockAuthRepository, mockSignInUseCase, mockSignUpUseCase),

    act: (bloc) => bloc.add(AuthEvent.signOutRequested()),

    expect: () => [
      const AuthState.loading(),
      const AuthState.error(AuthErrorCode.unknown),
    ],

    verify: (bloc) {
      verify(mockAuthRepository.signOut()).called(1);
    },
  );
}
