import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';
import 'package:rallytics/features/auth/domain/usecases/get_auth_state_changes_usecase.dart';
import 'package:rallytics/features/auth/domain/usecases/params/send_password_reset_email_params.dart';
import 'package:rallytics/features/auth/domain/usecases/params/sign_in_with_email_params.dart';
import 'package:rallytics/features/auth/domain/usecases/params/sign_up_with_email_params.dart';
import 'package:rallytics/features/auth/domain/usecases/send_password_reset_email_usecase.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_in_with_email_usecase.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_in_with_facebook_usecase.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_in_with_github_usecase.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:rallytics/features/auth/domain/usecases/sign_up_with_email_usecase.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';

import 'package:rallytics/core/error/exceptions.dart';

// Zarządza stanem interfejsu użytkownika dla funkcji autoryzacji.
// Reaguje na eventy z UI (np. kliknięcie przycisku "Zaloguj").
// Komunikuje się z warstwą Domain (wywołuje Use-Casy lub metody z interfejsu repozytorium).
// Emituje nowe stany, które powodują przebudowanie UI.
// Nie wie nic o Firebase - zna tylko `AuthRepository` i `UserEntity`.
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetAuthStateChangesUseCase _getAuthStateChangesUseCase;
  final SignInWithEmailUseCase _signInWithEmailUseCase;
  final SignUpWithEmailUseCase _signUpWithEmailUseCase;
  final SignInWithGoogleUseCase _signInWithGoogleUseCase;
  final SignInWithFacebookUseCase _signInWithFacebookUseCase;
  final SignInWithGitHubUseCase _signInWithGitHubUseCase;
  final SendPasswordResetEmailUseCase _sendPasswordResetEmailUseCase;
  final SignOutUseCase _signOutUseCase;

  StreamSubscription<UserEntity?>? _userSubscription;

  AuthBloc(
    this._getAuthStateChangesUseCase,
    this._signInWithEmailUseCase,
    this._signUpWithEmailUseCase,
    this._signInWithGoogleUseCase,
    this._signInWithFacebookUseCase,
    this._signInWithGitHubUseCase,
    this._sendPasswordResetEmailUseCase,
    this._signOutUseCase,
  ) : super(const AuthState.initial()) {
    _userSubscription = _getAuthStateChangesUseCase(NoParams()).listen((user) {
      add(AuthEvent.authUserChanged(user));
    });

    on<AuthUserChanged>((event, emit) {
      if (event.user != null) {
        emit(AuthState.authenticated(event.user!));
      } else {
        emit(const AuthState.unauthenticated());
      }
    });

    on<SignInRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _signInWithEmailUseCase(
          SignInParams(email: event.email, password: event.password),
        );
      } on AuthException catch (e) {
        emit(AuthState.error(e.code));
      } on ValidationException catch (e) {
        emit(AuthState.error(e.code));
      }
    });

    on<SignUpRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _signUpWithEmailUseCase(
          SignUpParams(
            email: event.email,
            password: event.password,
            confirmPassword: event.confirmPassword,
          ),
        );
      } on AuthException catch (e) {
        emit(AuthState.error(e.code));
      } on ValidationException catch (e) {
        emit(AuthState.error(e.code));
      }
    });

    on<SignInWithGoogleRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _signInWithGoogleUseCase(NoParams());
      } on AuthException catch (e) {
        emit(AuthState.error(e.code));
      }
    });

    on<SignInWithFacebookRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _signInWithFacebookUseCase(NoParams());
      } on AuthException catch (e) {
        emit(AuthState.error(e.code));
      }
    });

    on<SignInWithGitHubRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _signInWithGitHubUseCase(NoParams());
      } on AuthException catch (e) {
        emit(AuthState.error(e.code));
      }
    });

    on<PasswordResetRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _sendPasswordResetEmailUseCase(
          SendPasswordResetEmailParams(email: event.email),
        );
        emit(const AuthState.passwordResetEmailSent());
      } on AuthException catch (e) {
        emit(AuthState.error(e.code));
      }
    });

    on<SignOutRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _signOutUseCase(NoParams());
      } on AuthException catch (e) {
        emit(AuthState.error(e.code));
      }
    });
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
