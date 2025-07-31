import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';

import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/data/datasources/auth_firebase_datasource.dart';
import 'package:rallytics/helpers/error_message_helper.dart';

// Implementacja interfejsu z `domain/repositories`.
// Wie, skąd wziąć dane (z jakiego `DataSource`).
// Pełni rolę "tłumacza" - konwertuje modele z `Data` (np. `firebase.User`) na encje z `Domain` (`UserEntity`).
// Odpowiada za logikę dostępu do danych, np. obsługę cache'u.
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthFirebaseDataSource _authFirebaseDataSource;

  AuthRepositoryImpl(this._authFirebaseDataSource);

  @override
  Future<void> signInWithEmail(String email, String password) async {
    try {
      await _authFirebaseDataSource.signInWithEmailAndPassword(email, password);
    } on FirebaseAuthException catch (e) {
      final errorCode = mapFirebaseErrorCode(e.code);
      throw AuthException(code: errorCode, originalMessage: e.message);
    } catch (e) {
      throw AuthException(
        code: AuthErrorCode.unknown,
        originalMessage: e.toString(),
      );
    }
  }

  @override
  Future<void> signUpWithEmail(String email, String password) {
    try {
      return _authFirebaseDataSource.createUserWithEmailAndPassword(
        email,
        password,
      );
    } on FirebaseAuthException catch (e) {
      final errorCode = mapFirebaseErrorCode(e.code);
      throw AuthException(code: errorCode, originalMessage: e.message);
    } catch (e) {
      throw AuthException(
        code: AuthErrorCode.unknown,
        originalMessage: e.toString(),
      );
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _authFirebaseDataSource.signOut();
    } on FirebaseAuthException catch (e) {
      final errorCode = mapFirebaseErrorCode(e.code);
      throw AuthException(code: errorCode, originalMessage: e.toString());
    }
  }

  @override
  Stream<UserEntity?> get authStateChanges {
    return _authFirebaseDataSource.authStateChanges.map((firebaseUser) {
      if (firebaseUser == null) return null;
      return _mapFirebaseUserToUserEntity(firebaseUser);
    });
  }

  UserEntity _mapFirebaseUserToUserEntity(User firebaseUser) {
    return UserEntity(
      uid: firebaseUser.uid,
      email: firebaseUser.email!,
      isEmailVerified: firebaseUser.emailVerified,
      photoURL: firebaseUser.photoURL,
      displayName: firebaseUser.displayName,
    );
  }
}
