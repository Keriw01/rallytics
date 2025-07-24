import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_firebase_datasource.dart';

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
      throw ServerException(message: e.message ?? 'Wystąpił błąd logowania');
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> signUpWithEmail(String email, String password) {
    return _authFirebaseDataSource.createUserWithEmailAndPassword(
      email,
      password,
    );
  }

  @override
  Future<void> signOut() async {
    try {
      await _authFirebaseDataSource.signOut();
    } on FirebaseAuthException catch (e) {
      throw ServerException(message: e.message ?? 'Wystąpił błąd wylogowania');
    } catch (_) {
      throw ServerException();
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
