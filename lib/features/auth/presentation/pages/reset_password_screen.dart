import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rallytics/core/constants/validation_constants.dart';
import 'package:rallytics/core/presentation/widgets/tennis_ball_loader/tennis_ball_loader.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';
import 'package:rallytics/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:rallytics/generated/l10n.dart';
import 'package:rallytics/helpers/error_message_helper.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  late final TextEditingController _emailController;

  late final ValueNotifier<bool> _isEmailValidNotifier;

  @override
  void initState() {
    super.initState();
    _isEmailValidNotifier = ValueNotifier<bool>(false);
    _emailController = TextEditingController()..addListener(_validateEmail);
  }

  @override
  void dispose() {
    _emailController.removeListener(_validateEmail);
    _emailController.dispose();
    _isEmailValidNotifier.dispose();
    super.dispose();
  }

  void _validateEmail() {
    final isValid = kEmailRegex.hasMatch(_emailController.text);
    if (isValid != _isEmailValidNotifier.value) {
      _isEmailValidNotifier.value = isValid;
    }
  }

  void _sendResetPassword() {
    context.read<AuthBloc>().add(
      AuthEvent.passwordResetRequested(email: _emailController.text.trim()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).resetPasswordTitle),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Error) {
            final errorMessage = getErrorMessage(context, state.code);
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(errorMessage)));
          }

          if (state is PasswordResetEmailSent) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).passwordResetEmailSentSuccess),
              ),
            );
            context.goNamed('login');
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              _buildResetPasswordForm(context),

              if (state is Loading) TennisBallLoader(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildResetPasswordForm(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).resetPasswordInstruction,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: screenHeight * 0.02),
            AuthTextField(
              controller: _emailController,
              isEmailField: true,
              labelText: S.of(context).emailLabel,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).authErrorEmailRequired;
                }

                if (!kEmailRegex.hasMatch(value)) {
                  return S.of(context).authErrorInvalidEmailFormat;
                }
                return null;
              },
            ),
            SizedBox(height: screenHeight * 0.02),
            ValueListenableBuilder<bool>(
              valueListenable: _isEmailValidNotifier,
              builder: (context, isEmailValid, child) {
                return ElevatedButton(
                  onPressed: isEmailValid ? _sendResetPassword : null,
                  child: child,
                );
              },
              child: Text(S.of(context).sendButton),
            ),
          ],
        ),
      ),
    );
  }
}
