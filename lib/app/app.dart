import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/app/auth_gate.dart';
import 'package:rallytics/app/theme/app_theme.dart';
import 'package:rallytics/app/theme/theme_cubit/theme_cubit.dart';

import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => getIt<AuthBloc>()),
        BlocProvider<ThemeCubit>(create: (context) => getIt<ThemeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Rallytics',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            localizationsDelegates: [S.delegate],
            supportedLocales: S.delegate.supportedLocales,

            home: const AuthGate(),
          );
        },
      ),
    );
  }
}
