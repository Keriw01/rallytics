import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/helpers/error_message_helper.dart';

// Bezpośrednia komunikacja z zewnętrznym źródłem danych (tutaj: Firebase Auth).
// Jego jedynym zadaniem jest wywołanie metod z biblioteki `firebase_auth` i obsługa specyficznych dla niej błędów.
// Operuje na modelach danych z biblioteki (np. `firebase_auth.User`).
abstract class AuthFirebaseDataSource {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> createUserWithEmailAndPassword(String email, String password);
  Future<void> signInWithGoogle();
  Future<void> signInWithFacebook();
  Future<void> signInWithGitHub();
  Future<void> sendPasswordResetEmail(String email);
  Future<void> sendEmailVerification();
  Future<void> signOut();
  Stream<User?> get authStateChanges;
}

@LazySingleton(as: AuthFirebaseDataSource)
class AuthFirebaseDataSourceImpl implements AuthFirebaseDataSource {
  final FirebaseAuth _firebaseAuth;
  final FacebookAuth _facebookAuth;
  final GoogleSignIn _googleSignIn;

  AuthFirebaseDataSourceImpl(
    this._firebaseAuth,
    this._facebookAuth,
    this._googleSignIn,
  );

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      final errorCode = mapFirebaseErrorCode(e.code);
      throw AuthException(code: errorCode, originalMessage: e.message);
    } catch (e) {
      throw AuthException(originalMessage: e.toString());
    }
  }

  @override
  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      final errorCode = mapFirebaseErrorCode(e.code);
      throw AuthException(code: errorCode, originalMessage: e.message);
    } catch (e) {
      throw AuthException(originalMessage: e.toString());
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.authenticate();

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw AuthException(
        code: mapFirebaseErrorCode(e.code),
        originalMessage: e.message,
      );
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled) {
        throw AuthException(
          code: AuthErrorCode.googleAuthCanceled,
          originalMessage: e.description,
        );
      }
      if (e.code == GoogleSignInExceptionCode.clientConfigurationError ||
          e.code == GoogleSignInExceptionCode.providerConfigurationError) {
        throw AuthException(
          code: AuthErrorCode.configurationError,
          originalMessage: e.description,
        );
      }

      throw AuthException(originalMessage: e.description);
    } catch (e) {
      throw AuthException(originalMessage: e.toString());
    }
  }

  @override
  Future<void> signInWithFacebook() async {
    LoginResult loginResult;
    try {
      loginResult = await _facebookAuth.login();
    } catch (e) {
      throw AuthException(originalMessage: e.toString());
    }

    switch (loginResult.status) {
      case LoginStatus.operationInProgress:
      case LoginStatus.success:
        break;
      case LoginStatus.cancelled:
        throw AuthException(
          code: AuthErrorCode.facebookAuthCanceled,
          originalMessage: loginResult.message,
        );
      case LoginStatus.failed:
        throw AuthException(
          code: AuthErrorCode.facebookAuthFailed,
          originalMessage: loginResult.message,
        );
    }
    try {
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      await _firebaseAuth.signInWithCredential(facebookAuthCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        throw AuthException(
          code: AuthErrorCode.accountExistsWithDifferentCredential,
          originalMessage: e.message,
        );
      }
      throw AuthException(
        code: mapFirebaseErrorCode(e.code),
        originalMessage: e.message,
      );
    } catch (e) {
      throw AuthException(originalMessage: e.toString());
    }
  }

  @override
  Future<void> signInWithGitHub() async {
    try {
      GithubAuthProvider githubProvider = GithubAuthProvider();

      await _firebaseAuth.signInWithProvider(githubProvider);
    } on FirebaseAuthException catch (e) {
      final bool isCancelledByUser =
          e.code == 'web-context-canceled' ||
          e.code == 'cancelled-popup-request' ||
          e.code == 'popup-closed-by-user';

      if (isCancelledByUser) {
        throw AuthException(
          code: AuthErrorCode.gitHubAuthCanceled,
          originalMessage: e.message,
        );
      }

      if (e.code == 'account-exists-with-different-credential') {
        throw AuthException(
          code: AuthErrorCode.accountExistsWithDifferentCredential,
          originalMessage: e.message,
        );
      }

      throw AuthException(
        code: mapFirebaseErrorCode(e.code),
        originalMessage: e.message,
      );
    } catch (e) {
      throw AuthException(originalMessage: e.toString());
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
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
  Future<void> sendEmailVerification() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
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
      await _firebaseAuth.signOut();
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
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
}
