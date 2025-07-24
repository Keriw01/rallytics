import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/app/auth_gate.dart';

import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      lazy: false,
      child: MaterialApp(
        title: 'Rallytics',
        theme: ThemeData(),
        localizationsDelegates: [S.delegate],
        supportedLocales: S.delegate.supportedLocales,
        home: const AuthGate(),
      ),
    );
  }
}
