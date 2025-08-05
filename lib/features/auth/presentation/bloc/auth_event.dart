import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authUserChanged(UserEntity? user) = AuthUserChanged;
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;
  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
    required String confirmPassword,
  }) = SignUpRequested;
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogleRequested;
  const factory AuthEvent.signInWithFacebook() = SignInWithFacebookRequested;
  const factory AuthEvent.signInWithGitHub() = SignInWithGitHubRequested;
  const factory AuthEvent.passwordResetRequested({required String email}) =
      PasswordResetRequested;
  const factory AuthEvent.sendEmailVerificationRequested() =
      SendEmailVerificationRequested;
  const factory AuthEvent.signOutRequested() = SignOutRequested;
}
