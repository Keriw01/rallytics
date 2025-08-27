import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rallytics/core/constants/validation_constants.dart';
import 'package:rallytics/core/presentation/widgets/tennis_ball_loader/tennis_ball_loader.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/auth/presentation/widgets/auth_redirect_widget.dart';
import 'package:rallytics/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:rallytics/features/auth/presentation/widgets/or_divider.dart';
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
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Error) {
            final errorMessage = getErrorMessage(context, state.code);
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(errorMessage)));
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              _buildLoginForm(context),

              if (state is Loading) TennisBallLoader(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          child: Form(
            key: _formkey,
            onChanged: () {
              setState(() {
                _isButtonEnabled = _formkey.currentState?.validate() ?? false;
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
                AuthTextField(
                  controller: _passwordController,
                  isEmailField: false,
                  labelText: S.of(context).passwordLabel,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).authErrorPasswordRequired;
                    }

                    if (!kPasswordRegex.hasMatch(value)) {
                      return S.of(context).authErrorWeakPassword;
                    }

                    return null;
                  },
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: TextButton(
                        onPressed: () => context.goNamed('reset_password'),
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
                SocialLoginButtons(
                  onGooglePressed: () => context.read<AuthBloc>().add(
                    AuthEvent.signInWithGoogle(),
                  ),
                  onFacebookPressed: () => context.read<AuthBloc>().add(
                    AuthEvent.signInWithFacebook(),
                  ),
                  onGitHubPressed: () => context.read<AuthBloc>().add(
                    AuthEvent.signInWithGitHub(),
                  ),
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
    );
  }
}
