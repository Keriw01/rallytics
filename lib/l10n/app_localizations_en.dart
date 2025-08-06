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
  String get sendButton => 'Send';

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
  String get signInButton => 'Sign In';

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
  String get signUpButton => 'Sign Up';

  @override
  String get signUpPrompt => 'Don\'t have an account?';

  @override
  String get signInPrompt => 'Already have an account?';

  @override
  String get resetPasswordTitle => 'Reset Password';

  @override
  String get passwordResetEmailSentSuccess =>
      'If an account exists for that email, a password reset link has been sent.';

  @override
  String get resetPasswordInstruction =>
      'Enter the email address associated with your account and we\'ll send you a link to reset your password.';

  @override
  String get verifyEmailTitle => 'Verify Your Email';

  @override
  String verifyEmailMessage(String userEmail) {
    return 'A verification link has been sent to $userEmail. Please check your inbox and click the link to activate your account.';
  }

  @override
  String get verifyEmailResendButton => 'Resend Email';

  @override
  String verifyEmailResendButtonInSeconds(String seconds) {
    return 'Resend in ${seconds}s';
  }

  @override
  String get unknowUser => 'unknown';

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
  String get validationErrorPasswordsDoNotMatch =>
      'The passwords do not match.';

  @override
  String get validationErrorEmptyFields => 'Not all fields are filled in.';

  @override
  String get validationErrorInvalidEmail => 'The email is invalid.';

  @override
  String get validationErrorWeakPassword =>
      'The password does not meet the requirements.';

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
  String get dashboardWelcomeSubtitle => 'Choose what interests you';

  @override
  String get dashboardLiveScoresTitle => 'Scores';

  @override
  String get dashboardLiveScoresDescription =>
      'Follow every point from the world\'s most important courts. Always stay up to date!';

  @override
  String get dashboardNewsTitle => 'News';

  @override
  String get dashboardNewsDescription =>
      'The latest news, analyses, and interviews. Everything a tennis fan needs to know.';

  @override
  String get dashboardAiCoachTitle => 'AI Coach';

  @override
  String get dashboardAiCoachDescription =>
      'Record a video, and our AI will analyze your technique. Your personal coach in your pocket.';

  @override
  String get dashboardTrainingHistoryTitle => 'History';

  @override
  String get dashboardTrainingHistoryDescription =>
      'Review your progress, analyze stats, and see how your game evolves.';

  @override
  String get drawerTheme => 'Change Theme';

  @override
  String get drawerAbout => 'About App';

  @override
  String get drawerSupport => 'Support Me';

  @override
  String get drawerLogout => 'Log Out';

  @override
  String get errorGeneric =>
      'An unexpected error occurred. Please try again later.';
}
