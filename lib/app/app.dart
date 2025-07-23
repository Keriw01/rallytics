import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/app/auth_gate.dart';

import '../core/di/injection.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';

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
        home: const AuthGate(),
      ),
    );
  }
}
