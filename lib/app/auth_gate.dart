import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/auth/presentation/pages/login_screen.dart';
import '../features/live_score/presentation/pages/live_score_screen.dart';

import '../features/auth/presentation/bloc/auth_bloc.dart';
import '../features/auth/presentation/bloc/auth_state.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.when(
          initial: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
          loading: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
          //TODO: Change it when to main screen after login/register.
          authenticated: (user) => LiveScoreScreen(),
          unauthenticated: () => LoginScreen(),
          error: (message) => LoginScreen(),
        );
      },
    );
  }
}
