import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/auth/presentation/widgets/auth_redirect_widget.dart';
import 'package:rallytics/features/auth/presentation/widgets/email_text_field.dart';
import 'package:rallytics/features/auth/presentation/widgets/or_divider.dart';
import 'package:rallytics/features/auth/presentation/widgets/password_text_field.dart';
import 'package:rallytics/features/auth/presentation/widgets/social_login_buttons.dart';
import 'package:rallytics/generated/l10n.dart';

import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_state.dart';
import 'package:rallytics/helpers/error_message_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signIn() {
    if (!(_formkey.currentState?.validate() ?? false)) {
      return;
    }
    context.read<AuthBloc>().add(
      AuthEvent.signInRequested(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Form(
                key: _formkey,
                onChanged: () {
                  setState(() {
                    _isButtonEnabled =
                        _formkey.currentState?.validate() ?? false;
                  });
                },
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      S.of(context).loginTitle.toUpperCase(),
                      style: textTheme.headlineLarge,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    SizedBox(
                      height: screenHeight * 0.3,
                      child: SvgPicture.asset('assets/images/login_logo.svg'),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    EmailTextField(controller: _emailController),
                    SizedBox(height: screenHeight * 0.02),
                    PasswordTextField(controller: _passwordController),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: TextButton(
                            onPressed: () =>
                                null, //TODO: Handle forgot password
                            child: Text(
                              S.of(context).forgotPasswordButton,
                              style: textTheme.labelMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    ElevatedButton(
                      onPressed: _isButtonEnabled ? _signIn : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.09,
                        ),
                        child: Text(S.of(context).signInButton),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    OrDivider(),
                    SizedBox(height: screenHeight * 0.02),
                    //TODO: Handle socials login buttons
                    SocialLoginButtons(
                      onFacebookPressed: () => null,
                      onTwitterPressed: () => null,
                      onGooglePressed: () => null,
                      onApplePressed: () => null,
                    ),
                    AuthRedirectWidget(
                      promptText: S.of(context).signUpPrompt,
                      buttonText: S.of(context).signUpButton,
                      onPressed: () => context.goNamed('register'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
