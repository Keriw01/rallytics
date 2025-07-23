import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';

class LiveScoreScreen extends StatelessWidget {
  const LiveScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Live Score')),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Column(
                children: [
                  const Text("Live Score Screen"),
                  //TODO: Temporary button to log out, move it later to settings/profile screen
                  ElevatedButton(
                    onPressed: () => context.read<AuthBloc>().add(
                      AuthEvent.signOutRequested(),
                    ),
                    child: Text("LogOut"),
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
