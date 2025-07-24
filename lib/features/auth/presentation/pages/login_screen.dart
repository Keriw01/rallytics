import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/generated/l10n.dart';

import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';
import 'package:rallytics/helpers/error_message_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (errorCode) {
              final errorMessage = getErrorMessage(context, errorCode);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(errorMessage)));
            },
            orElse: () {},
          );
        },
        child: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Column(
                children: [
                  Text(S.of(context).loginTitle),
                  //TODO: Handle login form here
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text(S.of(context).loginButton),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
