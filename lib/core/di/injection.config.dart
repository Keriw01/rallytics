// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
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
import '../../features/auth/domain/usecases/get_auth_state_changes_usecase.dart'
    as _i810;
import '../../features/auth/domain/usecases/send_email_verification_usecase.dart'
    as _i707;
import '../../features/auth/domain/usecases/send_password_reset_email_usecase.dart'
    as _i961;
import '../../features/auth/domain/usecases/sign_in_with_email_usecase.dart'
    as _i744;
import '../../features/auth/domain/usecases/sign_in_with_facebook_usecase.dart'
    as _i369;
import '../../features/auth/domain/usecases/sign_in_with_github_usecase.dart'
    as _i287;
import '../../features/auth/domain/usecases/sign_in_with_google_usecase.dart'
    as _i673;
import '../../features/auth/domain/usecases/sign_out_usecase.dart' as _i915;
import '../../features/auth/domain/usecases/sign_up_with_email_usecase.dart'
    as _i254;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/live_score/data/datasources/live_score_firestore_datasource.dart'
    as _i962;
import '../../features/live_score/data/repositories/live_score_repository_impl.dart'
    as _i825;
import '../../features/live_score/domain/repositories/live_score_repository.dart'
    as _i321;
import '../../features/live_score/domain/usecases/get_live_scores_usecase.dart'
    as _i317;
import '../../features/live_score/presentation/bloc/live_score_bloc.dart'
    as _i15;
import '../../features/news_articles/data/datasources/news_articles_firestore_datasource.dart'
    as _i798;
import '../../features/news_articles/data/repositories/news_articles_repository_impl.dart'
    as _i205;
import '../../features/news_articles/domain/repositories/news_articles_repository.dart'
    as _i491;
import '../../features/news_articles/domain/usecases/get_news_articles_usecases.dart'
    as _i174;
import '../../features/news_articles/presentation/bloc/news_articles_bloc.dart'
    as _i288;
import '../../features/payment/data/datasources/payment_datasource.dart'
    as _i892;
import '../../features/payment/data/datasources/stripe_service.dart' as _i893;
import '../../features/payment/data/repositories/payment_repository_impl.dart'
    as _i265;
import '../../features/payment/domain/repositories/payment_repository.dart'
    as _i639;
import '../../features/payment/domain/usecases/create_payment_intent_usecase.dart'
    as _i1003;
import '../../features/payment/presentation/bloc/payment_bloc.dart' as _i206;
import '../config/app_config.dart' as _i650;
import '../network/dio_client.dart' as _i667;
import 'external_services_module.dart' as _i306;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final externalServicesModule = _$ExternalServicesModule();
  final dioInjectableModule = _$DioInjectableModule();
  gh.factory<_i30.ThemeCubit>(() => _i30.ThemeCubit());
  gh.singleton<_i650.AppConfig>(() => _i650.AppConfig.fromEnvironment());
  gh.lazySingleton<_i59.FirebaseAuth>(
    () => externalServicesModule.firebaseAuth,
  );
  gh.lazySingleton<_i806.FacebookAuth>(
    () => externalServicesModule.facebookAuth,
  );
  gh.lazySingleton<_i974.FirebaseFirestore>(
    () => externalServicesModule.firebaseFirestore,
  );
  gh.lazySingleton<_i361.Dio>(() => dioInjectableModule.dio);
  await gh.lazySingletonAsync<_i116.GoogleSignIn>(
    () => externalServicesModule.googleSignIn(gh<_i650.AppConfig>()),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i306.StripeInitializer>(
    () => externalServicesModule.configureStripe(gh<_i650.AppConfig>()),
    preResolve: true,
  );
  gh.lazySingleton<_i892.PaymentDataSource>(
    () => _i892.PaymentDataSourceImpl(gh<_i361.Dio>()),
  );
  gh.singleton<_i667.DioClient>(
    () => _i667.DioClient(gh<_i361.Dio>(), gh<_i650.AppConfig>()),
  );
  gh.lazySingleton<_i893.StripeService>(() => _i893.StripeServiceImpl());
  gh.lazySingleton<_i962.LiveScoreDataSource>(
    () => _i962.LiveScoreFirestoreDataSourceImpl(gh<_i974.FirebaseFirestore>()),
  );
  gh.lazySingleton<_i157.AuthFirebaseDataSource>(
    () => _i157.AuthFirebaseDataSourceImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i806.FacebookAuth>(),
      gh<_i116.GoogleSignIn>(),
    ),
  );
  gh.lazySingleton<_i639.PaymentRepository>(
    () => _i265.PaymentRepositoryImpl(gh<_i892.PaymentDataSource>()),
  );
  gh.lazySingleton<_i798.NewsArticlesDataSource>(
    () => _i798.NewsArticlesFirestoreDataSourceImpl(
      gh<_i974.FirebaseFirestore>(),
    ),
  );
  gh.lazySingleton<_i321.LiveScoreRepository>(
    () => _i825.LiveScoreRepositoryImpl(gh<_i962.LiveScoreDataSource>()),
  );
  gh.lazySingleton<_i491.NewsArticlesRepository>(
    () => _i205.NewsArticlesRepositoryImpl(gh<_i798.NewsArticlesDataSource>()),
  );
  gh.lazySingleton<_i1003.CreatePaymentIntentUseCase>(
    () => _i1003.CreatePaymentIntentUseCase(gh<_i639.PaymentRepository>()),
  );
  gh.lazySingleton<_i787.AuthRepository>(
    () => _i153.AuthRepositoryImpl(gh<_i157.AuthFirebaseDataSource>()),
  );
  gh.lazySingleton<_i810.GetAuthStateChangesUseCase>(
    () => _i810.GetAuthStateChangesUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i707.SendEmailVerificationUseCase>(
    () => _i707.SendEmailVerificationUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i961.SendPasswordResetEmailUseCase>(
    () => _i961.SendPasswordResetEmailUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i744.SignInWithEmailUseCase>(
    () => _i744.SignInWithEmailUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i369.SignInWithFacebookUseCase>(
    () => _i369.SignInWithFacebookUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i287.SignInWithGitHubUseCase>(
    () => _i287.SignInWithGitHubUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i673.SignInWithGoogleUseCase>(
    () => _i673.SignInWithGoogleUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i915.SignOutUseCase>(
    () => _i915.SignOutUseCase(gh<_i787.AuthRepository>()),
  );
  gh.lazySingleton<_i317.GetLiveScoresUseCase>(
    () => _i317.GetLiveScoresUseCase(gh<_i321.LiveScoreRepository>()),
  );
  gh.lazySingleton<_i174.GetNewsArticlesUseCase>(
    () => _i174.GetNewsArticlesUseCase(gh<_i491.NewsArticlesRepository>()),
  );
  gh.factory<_i15.LiveScoreBloc>(
    () => _i15.LiveScoreBloc(gh<_i317.GetLiveScoresUseCase>()),
  );
  gh.lazySingleton<_i254.SignUpWithEmailUseCase>(
    () => _i254.SignUpWithEmailUseCase(
      gh<_i787.AuthRepository>(),
      gh<_i707.SendEmailVerificationUseCase>(),
    ),
  );
  gh.factory<_i288.NewsArticlesBloc>(
    () => _i288.NewsArticlesBloc(gh<_i174.GetNewsArticlesUseCase>()),
  );
  gh.factory<_i797.AuthBloc>(
    () => _i797.AuthBloc(
      gh<_i810.GetAuthStateChangesUseCase>(),
      gh<_i744.SignInWithEmailUseCase>(),
      gh<_i254.SignUpWithEmailUseCase>(),
      gh<_i673.SignInWithGoogleUseCase>(),
      gh<_i369.SignInWithFacebookUseCase>(),
      gh<_i287.SignInWithGitHubUseCase>(),
      gh<_i961.SendPasswordResetEmailUseCase>(),
      gh<_i707.SendEmailVerificationUseCase>(),
      gh<_i915.SignOutUseCase>(),
    ),
  );
  gh.factory<_i206.PaymentBloc>(
    () => _i206.PaymentBloc(
      gh<_i1003.CreatePaymentIntentUseCase>(),
      gh<_i797.AuthBloc>(),
      gh<_i893.StripeService>(),
    ),
  );
  return getIt;
}

class _$ExternalServicesModule extends _i306.ExternalServicesModule {}

class _$DioInjectableModule extends _i667.DioInjectableModule {}
