// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i806;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;

import '../../app/theme/theme_cubit/theme_cubit.dart' as _i30;
import '../../features/auth/data/datasources/auth_firebase_datasource.dart'
    as _i157;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/get_auth_state_changes.dart'
    as _i341;
import '../../features/auth/domain/usecases/sign_in_with_email.dart' as _i485;
import '../../features/auth/domain/usecases/sign_in_with_facebook.dart'
    as _i861;
import '../../features/auth/domain/usecases/sign_in_with_github.dart' as _i504;
import '../../features/auth/domain/usecases/sign_in_with_google.dart' as _i692;
import '../../features/auth/domain/usecases/sign_out.dart' as _i568;
import '../../features/auth/domain/usecases/sign_up_with_email.dart' as _i460;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../config/app_config.dart' as _i650;
import 'firebase_injectable_module.dart' as _i574;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i30.ThemeCubit>(() => _i30.ThemeCubit());
  gh.singleton<_i650.AppConfig>(() => _i650.AppConfig.fromEnvironment());
  gh.lazySingleton<_i59.FirebaseAuth>(
    () => firebaseInjectableModule.firebaseAuth,
  );
  gh.lazySingleton<_i806.FacebookAuth>(
    () => firebaseInjectableModule.facebookAuth,
  );
  await gh.lazySingletonAsync<_i116.GoogleSignIn>(
    () => firebaseInjectableModule.googleSignIn(gh<_i650.AppConfig>()),
    preResolve: true,
  );
  gh.lazySingleton<_i157.AuthFirebaseDataSource>(
    () => _i157.AuthFirebaseDataSourceImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i806.FacebookAuth>(),
      gh<_i116.GoogleSignIn>(),
    ),
  );
  gh.lazySingleton<_i787.AuthRepository>(
    () => _i153.AuthRepositoryImpl(gh<_i157.AuthFirebaseDataSource>()),
  );
  gh.lazySingleton<_i341.GetAuthStateChangesUseCase>(
    () => _i341.GetAuthStateChangesUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i485.SignInWithEmailUseCase>(
    () => _i485.SignInWithEmailUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i861.SignInWithFacebookUseCase>(
    () => _i861.SignInWithFacebookUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i692.SignInWithGoogleUseCase>(
    () => _i692.SignInWithGoogleUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i568.SignOutUseCase>(
    () => _i568.SignOutUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i460.SignUpWithEmailUseCase>(
    () => _i460.SignUpWithEmailUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i504.SignInWithGitHubUseCase>(
    () => _i504.SignInWithGitHubUseCase(gh<_i787.AuthRepository>()),
  );
  gh.factory<_i797.AuthBloc>(
    () => _i797.AuthBloc(
      gh<_i341.GetAuthStateChangesUseCase>(),
      gh<_i485.SignInWithEmailUseCase>(),
      gh<_i460.SignUpWithEmailUseCase>(),
      gh<_i692.SignInWithGoogleUseCase>(),
      gh<_i861.SignInWithFacebookUseCase>(),
      gh<_i504.SignInWithGitHubUseCase>(),
      gh<_i568.SignOutUseCase>(),
    ),
  );
  return getIt;
}

class _$FirebaseInjectableModule extends _i574.FirebaseInjectableModule {}
