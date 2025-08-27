import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/auth/data/datasources/auth_firebase_datasource.dart';

import 'package:rallytics/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';

import 'auth_repository_impl_test.mocks.dart';

class FakeFirebaseUser extends Fake implements firebase.User {
  @override
  final String uid = 'test_uid';
  @override
  final String? email = 'test@test.com';
  @override
  final String? displayName = 'Test User';
  @override
  final String? photoURL = 'http://test.com/photo.jpg';
  @override
  final bool emailVerified = true;
}

@GenerateMocks([AuthFirebaseDataSource])
void main() {
  late AuthRepositoryImpl repository;
  late MockAuthFirebaseDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockAuthFirebaseDataSource();
    repository = AuthRepositoryImpl(mockDataSource);
  });

  group('authStateChanges', () {
    test(
      'should return UserEntity stream when data source returns firebase.User',
      () {
        final firebaseUserStream = Stream.value(FakeFirebaseUser());
        when(
          mockDataSource.authStateChanges,
        ).thenAnswer((_) => firebaseUserStream);

        final resultStream = repository.authStateChanges;

        expect(
          resultStream,
          emits(
            isA<UserEntity>().having((user) => user.uid, 'uid', 'test_uid'),
          ),
        );
      },
    );

    test('should return null stream when data source returns null', () {
      final nullUserStream = Stream.value(null);
      when(mockDataSource.authStateChanges).thenAnswer((_) => nullUserStream);

      final resultStream = repository.authStateChanges;

      expect(resultStream, emits(isNull));
    });
  });

  test(
    'should throw ServerException when data source throws FirebaseAuthException',
    () async {
      when(mockDataSource.signInWithEmailAndPassword(any, any)).thenThrow(
        firebase.FirebaseAuthException(
          code: 'wrong-password',
          message: 'Wrong password',
        ),
      );

      final call = repository.signInWithEmail;

      expect(() => call('email', 'password'), throwsA(isA<AuthException>()));
    },
  );
}
