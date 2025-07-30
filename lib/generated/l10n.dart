// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Rallytics`
  String get appTitle {
    return Intl.message(
      'Rallytics',
      name: 'appTitle',
      desc: 'The main title of the application, shown in the app bar.',
      args: [],
    );
  }

  /// `Save`
  String get saveButton {
    return Intl.message(
      'Save',
      name: 'saveButton',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancelButton {
    return Intl.message(
      'Cancel',
      name: 'cancelButton',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logoutButton {
    return Intl.message(
      'Log Out',
      name: 'logoutButton',
      desc: '',
      args: [],
    );
  }

  /// `or connect with`
  String get orConnectWith {
    return Intl.message(
      'or connect with',
      name: 'orConnectWith',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message(
      'Login',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signInButton {
    return Intl.message(
      'Sign in',
      name: 'signInButton',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailLabel {
    return Intl.message(
      'Email',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get emailHint {
    return Intl.message(
      'Enter your email address',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordLabel {
    return Intl.message(
      'Password',
      name: 'passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get confirmPasswordLabel {
    return Intl.message(
      'Repeat password',
      name: 'confirmPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotPasswordButton {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerTitle {
    return Intl.message(
      'Register',
      name: 'registerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUpButton {
    return Intl.message(
      'Sign up',
      name: 'signUpButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get signUpPrompt {
    return Intl.message(
      'Don\'t have an account?',
      name: 'signUpPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get signInPrompt {
    return Intl.message(
      'Already have an account?',
      name: 'signInPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Email is required.`
  String get authErrorEmailRequired {
    return Intl.message(
      'Email is required.',
      name: 'authErrorEmailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password is required.`
  String get authErrorPasswordRequired {
    return Intl.message(
      'Password is required.',
      name: 'authErrorPasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address.`
  String get authErrorInvalidEmailFormat {
    return Intl.message(
      'Please enter a valid email address.',
      name: 'authErrorInvalidEmailFormat',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email or password. Please try again.`
  String get authErrorInvalidCredentials {
    return Intl.message(
      'Invalid email or password. Please try again.',
      name: 'authErrorInvalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `This email is already in use. Please try another one.`
  String get authErrorEmailInUse {
    return Intl.message(
      'This email is already in use. Please try another one.',
      name: 'authErrorEmailInUse',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid.`
  String get authErrorInvalidEmail {
    return Intl.message(
      'Email is invalid.',
      name: 'authErrorInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `The password is too weak. Should be at least 12 characters and contain minimum 1 uppercase, lowercase letter, number, special character.`
  String get authErrorWeakPassword {
    return Intl.message(
      'The password is too weak. Should be at least 12 characters and contain minimum 1 uppercase, lowercase letter, number, special character.',
      name: 'authErrorWeakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The passwords do not match.`
  String get validationErrorPasswordsDoNotMatch {
    return Intl.message(
      'The passwords do not match.',
      name: 'validationErrorPasswordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Not all fields are filled in.`
  String get validationErrorEmptyFields {
    return Intl.message(
      'Not all fields are filled in.',
      name: 'validationErrorEmptyFields',
      desc: '',
      args: [],
    );
  }

  /// `The email is invalid.`
  String get validationErrorInvalidEmail {
    return Intl.message(
      'The email is invalid.',
      name: 'validationErrorInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `The password does not meet the requirements.`
  String get validationErrorWeakPassword {
    return Intl.message(
      'The password does not meet the requirements.',
      name: 'validationErrorWeakPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Session`
  String get trainingSessionTitle {
    return Intl.message(
      'New Session',
      name: 'trainingSessionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start Recording`
  String get trainingSessionStartButton {
    return Intl.message(
      'Start Recording',
      name: 'trainingSessionStartButton',
      desc: '',
      args: [],
    );
  }

  /// `Import from Gallery`
  String get trainingSessionImportButton {
    return Intl.message(
      'Import from Gallery',
      name: 'trainingSessionImportButton',
      desc: '',
      args: [],
    );
  }

  /// `Live Scores`
  String get liveScoresTitle {
    return Intl.message(
      'Live Scores',
      name: 'liveScoresTitle',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get liveScoresMatchStatusUpcoming {
    return Intl.message(
      'Upcoming',
      name: 'liveScoresMatchStatusUpcoming',
      desc: '',
      args: [],
    );
  }

  /// `Finished`
  String get liveScoresMatchStatusFinished {
    return Intl.message(
      'Finished',
      name: 'liveScoresMatchStatusFinished',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back, {userName}!`
  String welcomeUserMessage(String userName) {
    return Intl.message(
      'Welcome back, $userName!',
      name: 'welcomeUserMessage',
      desc: 'A welcome message shown on the dashboard.',
      args: [userName],
    );
  }

  /// `An unexpected error occurred. Please try again later.`
  String get errorGeneric {
    return Intl.message(
      'An unexpected error occurred. Please try again later.',
      name: 'errorGeneric',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
