import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/core/error/exceptions.dart';

import 'package:rallytics/features/auth/domain/entities/user_entity.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late AuthBloc authBloc;
  late MockAuthRepository mockAuthRepository;

  const testUserEntity = UserEntity(
    uid: 'test_uid',
    email: 'test@test.com',
    isEmailVerified: true,
  );

  setUp(() {
    mockAuthRepository = MockAuthRepository();
  });

  tearDown(() {
    authBloc.close();
  });

  test('initial state should be AuthState.initial', () {
    when(mockAuthRepository.authStateChanges).thenAnswer((_) => Stream.empty());

    authBloc = AuthBloc(mockAuthRepository);

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

      build: () => authBloc = AuthBloc(mockAuthRepository),

      expect: () => [const AuthState.authenticated(testUserEntity)],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [unauthenticated] when null appears in the stream',
      setUp: () {
        when(
          mockAuthRepository.authStateChanges,
        ).thenAnswer((_) => Stream.value(null));
      },

      build: () => authBloc = AuthBloc(mockAuthRepository),

      expect: () => [const AuthState.unauthenticated()],
    );
  });

  group('Event: SignInRequested', () {
    blocTest<AuthBloc, AuthState>(
      'it should emit [loading] and then nothing when login succeeds',
      setUp: () {
        when(
          mockAuthRepository.authStateChanges,
        ).thenAnswer((_) => Stream.empty());
        when(
          mockAuthRepository.signInWithEmail(any, any),
        ).thenAnswer((_) async => {});
      },

      build: () => authBloc = AuthBloc(mockAuthRepository),

      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: '123',
        ),
      ),

      expect: () => [const AuthState.loading()],
    );

    blocTest<AuthBloc, AuthState>(
      'should emit [loading, error] when login fails',
      setUp: () {
        when(
          mockAuthRepository.authStateChanges,
        ).thenAnswer((_) => Stream.empty());
        when(mockAuthRepository.signInWithEmail(any, any)).thenAnswer(
          (_) async => throw ServerException(code: ServerErrorCode.unknown),
        );
      },

      build: () => authBloc = AuthBloc(mockAuthRepository),
      act: (bloc) => bloc.add(
        const AuthEvent.signInRequested(
          email: 'test@test.com',
          password: '123',
        ),
      ),

      expect: () => [
        const AuthState.loading(),
        const AuthState.error(ServerErrorCode.unknown),
      ],
    );
  });
}
