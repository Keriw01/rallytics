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

  /// `Send`
  String get sendButton {
    return Intl.message(
      'Send',
      name: 'sendButton',
      desc: '',
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

  /// `Sign In`
  String get signInButton {
    return Intl.message(
      'Sign In',
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

  /// `Sign Up`
  String get signUpButton {
    return Intl.message(
      'Sign Up',
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

  /// `Reset Password`
  String get resetPasswordTitle {
    return Intl.message(
      'Reset Password',
      name: 'resetPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `If an account exists for that email, a password reset link has been sent.`
  String get passwordResetEmailSentSuccess {
    return Intl.message(
      'If an account exists for that email, a password reset link has been sent.',
      name: 'passwordResetEmailSentSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address associated with your account and we'll send you a link to reset your password.`
  String get resetPasswordInstruction {
    return Intl.message(
      'Enter the email address associated with your account and we\'ll send you a link to reset your password.',
      name: 'resetPasswordInstruction',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your Email`
  String get verifyEmailTitle {
    return Intl.message(
      'Verify Your Email',
      name: 'verifyEmailTitle',
      desc: '',
      args: [],
    );
  }

  /// `A verification link has been sent to {userEmail}. Please check your inbox and click the link to activate your account.`
  String verifyEmailMessage(String userEmail) {
    return Intl.message(
      'A verification link has been sent to $userEmail. Please check your inbox and click the link to activate your account.',
      name: 'verifyEmailMessage',
      desc: 'Message instructing the user to check their email.',
      args: [userEmail],
    );
  }

  /// `Resend Email`
  String get verifyEmailResendButton {
    return Intl.message(
      'Resend Email',
      name: 'verifyEmailResendButton',
      desc: '',
      args: [],
    );
  }

  /// `Resend in {seconds}s`
  String verifyEmailResendButtonInSeconds(String seconds) {
    return Intl.message(
      'Resend in ${seconds}s',
      name: 'verifyEmailResendButtonInSeconds',
      desc:
          'Button text showing a countdown before the user can resend the email.',
      args: [seconds],
    );
  }

  /// `unknown`
  String get unknowUser {
    return Intl.message(
      'unknown',
      name: 'unknowUser',
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

  /// `We're currently having problems, please try again later.`
  String get liveScoresError {
    return Intl.message(
      'We\'re currently having problems, please try again later.',
      name: 'liveScoresError',
      desc: '',
      args: [],
    );
  }

  /// `No live matches right now.`
  String get liveScoresEmpty {
    return Intl.message(
      'No live matches right now.',
      name: 'liveScoresEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get liveScoresPoints {
    return Intl.message(
      'Points',
      name: 'liveScoresPoints',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchLabel {
    return Intl.message(
      'Search',
      name: 'searchLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter the player's name or surname`
  String get searchHint {
    return Intl.message(
      'Enter the player\'s name or surname',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `No results for the search phrase.`
  String get liveScoresNoResults {
    return Intl.message(
      'No results for the search phrase.',
      name: 'liveScoresNoResults',
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

  /// `Choose what interests you`
  String get dashboardWelcomeSubtitle {
    return Intl.message(
      'Choose what interests you',
      name: 'dashboardWelcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Scores`
  String get dashboardLiveScoresTitle {
    return Intl.message(
      'Scores',
      name: 'dashboardLiveScoresTitle',
      desc: '',
      args: [],
    );
  }

  /// `Follow every point from the world's most important courts. Always stay up to date!`
  String get dashboardLiveScoresDescription {
    return Intl.message(
      'Follow every point from the world\'s most important courts. Always stay up to date!',
      name: 'dashboardLiveScoresDescription',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get dashboardNewsTitle {
    return Intl.message(
      'News',
      name: 'dashboardNewsTitle',
      desc: '',
      args: [],
    );
  }

  /// `The latest news, analyses, and interviews. Everything a tennis fan needs to know.`
  String get dashboardNewsDescription {
    return Intl.message(
      'The latest news, analyses, and interviews. Everything a tennis fan needs to know.',
      name: 'dashboardNewsDescription',
      desc: '',
      args: [],
    );
  }

  /// `AI Coach`
  String get dashboardAiCoachTitle {
    return Intl.message(
      'AI Coach',
      name: 'dashboardAiCoachTitle',
      desc: '',
      args: [],
    );
  }

  /// `Record a video, and our AI will analyze your technique. Your personal coach in your pocket.`
  String get dashboardAiCoachDescription {
    return Intl.message(
      'Record a video, and our AI will analyze your technique. Your personal coach in your pocket.',
      name: 'dashboardAiCoachDescription',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get dashboardTrainingHistoryTitle {
    return Intl.message(
      'History',
      name: 'dashboardTrainingHistoryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Review your progress, analyze stats, and see how your game evolves.`
  String get dashboardTrainingHistoryDescription {
    return Intl.message(
      'Review your progress, analyze stats, and see how your game evolves.',
      name: 'dashboardTrainingHistoryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Change Theme`
  String get drawerTheme {
    return Intl.message(
      'Change Theme',
      name: 'drawerTheme',
      desc: '',
      args: [],
    );
  }

  /// `About App`
  String get drawerAbout {
    return Intl.message(
      'About App',
      name: 'drawerAbout',
      desc: '',
      args: [],
    );
  }

  /// `Support Me`
  String get drawerSupport {
    return Intl.message(
      'Support Me',
      name: 'drawerSupport',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get drawerLogout {
    return Intl.message(
      'Log Out',
      name: 'drawerLogout',
      desc: '',
      args: [],
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
