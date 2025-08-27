import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/generated/l10n.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  Timer? _resendCooldownTimer;

  bool _canResendEmail = false;
  int _countdownSeconds = 60;

  @override
  void initState() {
    super.initState();
    _startResendCooldown();
  }

  @override
  void dispose() {
    _resendCooldownTimer?.cancel();
    super.dispose();
  }

  void _startResendCooldown() {
    _resendCooldownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdownSeconds == 0) {
        timer.cancel();
        if (mounted) {
          setState(() {
            _canResendEmail = true;
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _countdownSeconds--;
          });
        }
      }
    });
  }

  void _resendEmail() {
    setState(() {
      _canResendEmail = false;
      _countdownSeconds = 60;
    });
    context.read<AuthBloc>().add(
      const AuthEvent.sendEmailVerificationRequested(),
    );
    _startResendCooldown();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final authState = context.watch<AuthBloc>().state;

    final String? userEmail = authState.maybeMap(
      authenticated: (user) => user.user.email,
      orElse: () => null,
    );

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mark_email_read_outlined, size: screenHeight * 0.1),
              SizedBox(height: screenHeight * 0.02),
              Text(
                S.of(context).verifyEmailTitle,
                style: textTheme.headlineMedium,
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                S
                    .of(context)
                    .verifyEmailMessage(userEmail ?? S.of(context).unknowUser),
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium,
              ),
              SizedBox(height: screenHeight * 0.02),
              ElevatedButton(
                onPressed: _canResendEmail ? _resendEmail : null,
                child: Text(
                  _countdownSeconds == 0
                      ? S.of(context).verifyEmailResendButton
                      : S
                            .of(context)
                            .verifyEmailResendButtonInSeconds(
                              _countdownSeconds.toString(),
                            ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              TextButton(
                onPressed: () {
                  context.read<AuthBloc>().add(
                    const AuthEvent.signOutRequested(),
                  );
                },
                child: Text(S.of(context).signInButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
