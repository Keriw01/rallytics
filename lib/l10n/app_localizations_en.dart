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
  String get loginTitle => 'Sign In';

  @override
  String get loginButton => 'Log In';

  @override
  String get loginEmailLabel => 'Email';

  @override
  String get loginPasswordHint => 'Password';

  @override
  String get loginErrorInvalidCredentials =>
      'Invalid email or password. Please try again.';

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
  String get saveButton => 'Save';

  @override
  String get cancelButton => 'Cancel';

  @override
  String get errorGeneric =>
      'An unexpected error occurred. Please try again later.';

  @override
  String get logoutButton => 'Log Out';

  @override
  String get errorInvalidCredentials => 'Invalid email or password.';

  @override
  String get errorEmailInUse =>
      'This email is already in use. Please try another one.';

  @override
  String get errorWeakPassword => 'The password is too weak.';

  @override
  String welcomeUserMessage(String userName) {
    return 'Welcome back, $userName!';
  }
}
