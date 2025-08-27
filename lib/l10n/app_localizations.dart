import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pl.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pl'),
  ];

  /// The main title of the application, shown in the app bar.
  ///
  /// In en, this message translates to:
  /// **'Rallytics'**
  String get appTitle;

  /// No description provided for @sendButton.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get sendButton;

  /// No description provided for @saveButton.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButton;

  /// No description provided for @cancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// No description provided for @logoutButton.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logoutButton;

  /// No description provided for @orConnectWith.
  ///
  /// In en, this message translates to:
  /// **'or connect with'**
  String get orConnectWith;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginTitle;

  /// No description provided for @signInButton.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signInButton;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get emailHint;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get passwordHint;

  /// No description provided for @confirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Repeat password'**
  String get confirmPasswordLabel;

  /// No description provided for @forgotPasswordButton.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotPasswordButton;

  /// No description provided for @registerTitle.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerTitle;

  /// No description provided for @signUpButton.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUpButton;

  /// No description provided for @signUpPrompt.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get signUpPrompt;

  /// No description provided for @signInPrompt.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get signInPrompt;

  /// No description provided for @resetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordTitle;

  /// No description provided for @passwordResetEmailSentSuccess.
  ///
  /// In en, this message translates to:
  /// **'If an account exists for that email, a password reset link has been sent.'**
  String get passwordResetEmailSentSuccess;

  /// No description provided for @resetPasswordInstruction.
  ///
  /// In en, this message translates to:
  /// **'Enter the email address associated with your account and we\'ll send you a link to reset your password.'**
  String get resetPasswordInstruction;

  /// No description provided for @verifyEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Verify Your Email'**
  String get verifyEmailTitle;

  /// Message instructing the user to check their email.
  ///
  /// In en, this message translates to:
  /// **'A verification link has been sent to {userEmail}. Please check your inbox and click the link to activate your account.'**
  String verifyEmailMessage(String userEmail);

  /// No description provided for @verifyEmailResendButton.
  ///
  /// In en, this message translates to:
  /// **'Resend Email'**
  String get verifyEmailResendButton;

  /// Button text showing a countdown before the user can resend the email.
  ///
  /// In en, this message translates to:
  /// **'Resend in {seconds}s'**
  String verifyEmailResendButtonInSeconds(String seconds);

  /// No description provided for @unknowUser.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get unknowUser;

  /// No description provided for @authErrorEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required.'**
  String get authErrorEmailRequired;

  /// No description provided for @authErrorPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required.'**
  String get authErrorPasswordRequired;

  /// No description provided for @authErrorInvalidEmailFormat.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get authErrorInvalidEmailFormat;

  /// No description provided for @authErrorInvalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid email or password. Please try again.'**
  String get authErrorInvalidCredentials;

  /// No description provided for @authErrorEmailInUse.
  ///
  /// In en, this message translates to:
  /// **'This email is already in use. Please try another one.'**
  String get authErrorEmailInUse;

  /// No description provided for @authErrorInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid.'**
  String get authErrorInvalidEmail;

  /// No description provided for @authErrorWeakPassword.
  ///
  /// In en, this message translates to:
  /// **'The password is too weak. Should be at least 12 characters and contain minimum 1 uppercase, lowercase letter, number, special character.'**
  String get authErrorWeakPassword;

  /// No description provided for @validationErrorPasswordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'The passwords do not match.'**
  String get validationErrorPasswordsDoNotMatch;

  /// No description provided for @validationErrorEmptyFields.
  ///
  /// In en, this message translates to:
  /// **'Not all fields are filled in.'**
  String get validationErrorEmptyFields;

  /// No description provided for @validationErrorInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'The email is invalid.'**
  String get validationErrorInvalidEmail;

  /// No description provided for @validationErrorWeakPassword.
  ///
  /// In en, this message translates to:
  /// **'The password does not meet the requirements.'**
  String get validationErrorWeakPassword;

  /// No description provided for @trainingSessionTitle.
  ///
  /// In en, this message translates to:
  /// **'New Session'**
  String get trainingSessionTitle;

  /// No description provided for @trainingSessionStartButton.
  ///
  /// In en, this message translates to:
  /// **'Start Recording'**
  String get trainingSessionStartButton;

  /// No description provided for @trainingSessionImportButton.
  ///
  /// In en, this message translates to:
  /// **'Import from Gallery'**
  String get trainingSessionImportButton;

  /// No description provided for @liveScoresTitle.
  ///
  /// In en, this message translates to:
  /// **'Live Scores'**
  String get liveScoresTitle;

  /// No description provided for @liveScoresError.
  ///
  /// In en, this message translates to:
  /// **'We\'re currently having problems, please try again later.'**
  String get liveScoresError;

  /// No description provided for @liveScoresEmpty.
  ///
  /// In en, this message translates to:
  /// **'No live matches right now.'**
  String get liveScoresEmpty;

  /// No description provided for @liveScoresPoints.
  ///
  /// In en, this message translates to:
  /// **'Points'**
  String get liveScoresPoints;

  /// No description provided for @searchLabel.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchLabel;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the player\'s name or surname'**
  String get searchHint;

  /// No description provided for @liveScoresNoResults.
  ///
  /// In en, this message translates to:
  /// **'No results for the search phrase.'**
  String get liveScoresNoResults;

  /// A welcome message shown on the dashboard.
  ///
  /// In en, this message translates to:
  /// **'Welcome back, {userName}!'**
  String welcomeUserMessage(String userName);

  /// No description provided for @dashboardWelcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose what interests you'**
  String get dashboardWelcomeSubtitle;

  /// No description provided for @dashboardLiveScoresTitle.
  ///
  /// In en, this message translates to:
  /// **'Scores'**
  String get dashboardLiveScoresTitle;

  /// No description provided for @dashboardLiveScoresDescription.
  ///
  /// In en, this message translates to:
  /// **'Follow every point from the world\'s most important courts. Always stay up to date!'**
  String get dashboardLiveScoresDescription;

  /// No description provided for @dashboardNewsTitle.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get dashboardNewsTitle;

  /// No description provided for @dashboardNewsDescription.
  ///
  /// In en, this message translates to:
  /// **'The latest news, analyses, and interviews. Everything a tennis fan needs to know.'**
  String get dashboardNewsDescription;

  /// No description provided for @dashboardAiCoachTitle.
  ///
  /// In en, this message translates to:
  /// **'AI Coach'**
  String get dashboardAiCoachTitle;

  /// No description provided for @dashboardAiCoachDescription.
  ///
  /// In en, this message translates to:
  /// **'Record a video, and our AI will analyze your technique. Your personal coach in your pocket.'**
  String get dashboardAiCoachDescription;

  /// No description provided for @dashboardTrainingHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get dashboardTrainingHistoryTitle;

  /// No description provided for @dashboardTrainingHistoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Review your progress, analyze stats, and see how your game evolves.'**
  String get dashboardTrainingHistoryDescription;

  /// No description provided for @drawerTheme.
  ///
  /// In en, this message translates to:
  /// **'Change Theme'**
  String get drawerTheme;

  /// No description provided for @drawerAbout.
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get drawerAbout;

  /// No description provided for @drawerSupport.
  ///
  /// In en, this message translates to:
  /// **'Support Me'**
  String get drawerSupport;

  /// No description provided for @drawerLogout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get drawerLogout;

  /// No description provided for @newsArticlesTitle.
  ///
  /// In en, this message translates to:
  /// **'News Articles'**
  String get newsArticlesTitle;

  /// No description provided for @newsArticlesError.
  ///
  /// In en, this message translates to:
  /// **'We\'re currently having problems, please try again later.'**
  String get newsArticlesError;

  /// No description provided for @newsArticlesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No articles new right now.'**
  String get newsArticlesEmpty;

  /// No description provided for @readMoreButton.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMoreButton;

  /// No description provided for @showLessButton.
  ///
  /// In en, this message translates to:
  /// **'Show Less'**
  String get showLessButton;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again later.'**
  String get errorGeneric;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pl':
      return AppLocalizationsPl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
