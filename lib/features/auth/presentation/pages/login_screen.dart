import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => SnackBar(content: Text("data")),
            orElse: () {},
          );
        },
        child: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Column(
                children: [
                  const Text("Login Screen"),
                  //TODO: Handle login form here
                  ElevatedButton(onPressed: () => {}, child: Text("Login")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
