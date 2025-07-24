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

  /// `Sign In`
  String get loginTitle {
    return Intl.message(
      'Sign In',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get loginButton {
    return Intl.message(
      'Log In',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginEmailLabel {
    return Intl.message(
      'Email',
      name: 'loginEmailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginPasswordHint {
    return Intl.message(
      'Password',
      name: 'loginPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email or password. Please try again.`
  String get loginErrorInvalidCredentials {
    return Intl.message(
      'Invalid email or password. Please try again.',
      name: 'loginErrorInvalidCredentials',
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

  /// `An unexpected error occurred. Please try again later.`
  String get errorGeneric {
    return Intl.message(
      'An unexpected error occurred. Please try again later.',
      name: 'errorGeneric',
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

  /// `Invalid email or password.`
  String get errorInvalidCredentials {
    return Intl.message(
      'Invalid email or password.',
      name: 'errorInvalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `This email is already in use. Please try another one.`
  String get errorEmailInUse {
    return Intl.message(
      'This email is already in use. Please try another one.',
      name: 'errorEmailInUse',
      desc: '',
      args: [],
    );
  }

  /// `The password is too weak.`
  String get errorWeakPassword {
    return Intl.message(
      'The password is too weak.',
      name: 'errorWeakPassword',
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
