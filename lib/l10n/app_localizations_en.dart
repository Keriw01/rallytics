// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Rallytics';

  @override
  String get saveButton => 'Save';

  @override
  String get cancelButton => 'Cancel';

  @override
  String get logoutButton => 'Log Out';

  @override
  String get orConnectWith => 'or connect with';

  @override
  String get loginTitle => 'Login';

  @override
  String get signInButton => 'Sign in';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'Enter your email address';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'Enter your password';

  @override
  String get confirmPasswordLabel => 'Repeat password';

  @override
  String get forgotPasswordButton => 'Forgot your password?';

  @override
  String get registerTitle => 'Register';

  @override
  String get signUpButton => 'Sign up';

  @override
  String get signUpPrompt => 'Don\'t have an account?';

  @override
  String get signInPrompt => 'Already have an account?';

  @override
  String get authErrorEmailRequired => 'Email is required.';

  @override
  String get authErrorPasswordRequired => 'Password is required.';

  @override
  String get authErrorInvalidEmailFormat =>
      'Please enter a valid email address.';

  @override
  String get authErrorInvalidCredentials =>
      'Invalid email or password. Please try again.';

  @override
  String get authErrorEmailInUse =>
      'This email is already in use. Please try another one.';

  @override
  String get authErrorInvalidEmail => 'Email is invalid.';

  @override
  String get authErrorWeakPassword =>
      'The password is too weak. Should be at least 12 characters and contain minimum 1 uppercase, lowercase letter, number, special character.';

  @override
  String get authErrorPasswordsDoNotMatch => 'Passwords don\'t match.';

  @override
  String get trainingSessionTitle => 'New Session';

  @override
  String get trainingSessionStartButton => 'Start Recording';

  @override
  String get trainingSessionImportButton => 'Import from Gallery';

  @override
  String get liveScoresTitle => 'Live Scores';

  @override
  String get liveScoresMatchStatusUpcoming => 'Upcoming';

  @override
  String get liveScoresMatchStatusFinished => 'Finished';

  @override
  String welcomeUserMessage(String userName) {
    return 'Welcome back, $userName!';
  }

  @override
  String get errorGeneric =>
      'An unexpected error occurred. Please try again later.';
}
