import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/repositories/auth_repository.dart';

// Zarządza stanem interfejsu użytkownika dla funkcji autoryzacji.
// Reaguje na eventy z UI (np. kliknięcie przycisku "Zaloguj").
// Komunikuje się z warstwą Domain (wywołuje Use-Casy lub metody z interfejsu repozytorium).
// Emituje nowe stany, które powodują przebudowanie UI.
// Nie wie nic o Firebase - zna tylko `AuthRepository` i `UserEntity`.
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<UserEntity?>? _userSubscription;

  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    _userSubscription = _authRepository.authStateChanges.listen((user) {
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
        await _authRepository.signInWithEmail(event.email, event.password);
      } on ServerException catch (e) {
        emit(AuthState.error(e.message));
      }
    });

    on<SignOutRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await _authRepository.signOut();
      } on ServerException catch (e) {
        emit(AuthState.error(e.message));
      }
    });
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
