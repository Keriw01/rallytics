import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/app/theme/app_theme.dart';
import 'package:rallytics/app/theme/theme_cubit/theme_cubit.dart';

import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/core/router/app_router.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
          lazy: false,
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => getIt<ThemeCubit>(),
          lazy: false,
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          final router = configureRouter(context.read<AuthBloc>());

          return MaterialApp.router(
            title: 'Rallytics',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            localizationsDelegates: [S.delegate],
            supportedLocales: S.delegate.supportedLocales,

            routerConfig: router,
          );
        },
      ),
    );
  }
}
