import 'package:rallytics/features/auth/domain/entities/user_entity.dart';

// Definiuje interfejs dla dostępu do danych autoryzacji.
// Mówi co aplikacja potrafi zrobić (np. "zaloguj", "wyloguj"), ale nie mówi jak.
// Operuje wyłącznie na czystych encjach z warstwy Domain (np. UserEntity).
abstract class AuthRepository {
  Stream<UserEntity?> get authStateChanges;

  Future<void> signInWithEmail(String email, String password);

  Future<void> signUpWithEmail(String email, String password);

  Future<void> signInWithGoogle();

  Future<void> signInWithFacebook();

  Future<void> signInWithGitHub();

  Future<void> sendPasswordResetEmail(String email);

  Future<void> sendEmailVerification();

  Future<void> signOut();
}
