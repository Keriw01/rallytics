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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _signUp() {
    if (!(_formkey.currentState?.validate() ?? false)) {
      return;
    }
    context.read<AuthBloc>().add(
      AuthEvent.signUpRequested(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
        confirmPassword: _confirmPasswordController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (code) {
              final errorMessage = getErrorMessage(context, code);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(errorMessage)));
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return Stack(
            children: [
              _buildPositionedBackground(),

              _buildRegisterForm(context),

              if (isLoading) TennisBallLoader(),
            ],
          );
        },
      ),
    );
  }

  Positioned _buildPositionedBackground() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: SvgPicture.asset(
        'assets/images/register_background.svg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildRegisterForm(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return SingleChildScrollView(
              reverse: true,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
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
                          S.of(context).registerTitle.toUpperCase(),
                          style: textTheme.headlineLarge,
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
                        SizedBox(height: screenHeight * 0.02),
                        AuthTextField(
                          controller: _confirmPasswordController,
                          isEmailField: false,
                          labelText: S.of(context).confirmPasswordLabel,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return S.of(context).authErrorPasswordRequired;
                            }

                            if (value != _passwordController.text) {
                              return S
                                  .of(context)
                                  .validationErrorPasswordsDoNotMatch;
                            }

                            return null;
                          },
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        ElevatedButton(
                          onPressed: _isButtonEnabled ? _signUp : null,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.09,
                            ),
                            child: Text(S.of(context).signUpButton),
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
                          promptText: S.of(context).signInPrompt,
                          buttonText: S.of(context).signInButton,
                          onPressed: () => context.goNamed('login'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
