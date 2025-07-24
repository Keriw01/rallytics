import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/generated/l10n.dart';

class LiveScoreScreen extends StatelessWidget {
  const LiveScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).liveScoresTitle)),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Column(
                children: [
                  Text(S.of(context).liveScoresTitle),
                  //TODO: Temporary button to log out, move it later to settings/profile screen
                  ElevatedButton(
                    onPressed: () => context.read<AuthBloc>().add(
                      AuthEvent.signOutRequested(),
                    ),
                    child: Text(S.of(context).logoutButton),
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
