// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(userEmail) =>
      "A verification link has been sent to ${userEmail}. Please check your inbox and click the link to activate your account.";

  static String m1(seconds) => "Resend in ${seconds}s";

  static String m2(userName) => "Welcome back, ${userName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("Rallytics"),
        "authErrorAccountExistsWithDifferentCredential":
            MessageLookupByLibrary.simpleMessage(
                "An account with this email address already exists. Please log in using another method."),
        "authErrorConfiguration": MessageLookupByLibrary.simpleMessage(
            "Login configuration error. Please contact support."),
        "authErrorEmailInUse": MessageLookupByLibrary.simpleMessage(
            "This email is already in use. Please try another one."),
        "authErrorEmailRequired":
            MessageLookupByLibrary.simpleMessage("Email is required."),
        "authErrorFacebookCanceled": MessageLookupByLibrary.simpleMessage(
            "Canceled login via Facebook by user."),
        "authErrorFacebookFailed":
            MessageLookupByLibrary.simpleMessage("Login via Facebook failed."),
        "authErrorGitHubCanceled": MessageLookupByLibrary.simpleMessage(
            "Canceled login via GitHub by user."),
        "authErrorGoogleCanceled": MessageLookupByLibrary.simpleMessage(
            "Canceled login via Google by user."),
        "authErrorInvalidCredentials": MessageLookupByLibrary.simpleMessage(
            "Invalid email or password. Please try again."),
        "authErrorInvalidEmail":
            MessageLookupByLibrary.simpleMessage("Email is invalid."),
        "authErrorInvalidEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid email address."),
        "authErrorPasswordRequired":
            MessageLookupByLibrary.simpleMessage("Password is required."),
        "authErrorWeakPassword": MessageLookupByLibrary.simpleMessage(
            "The password is too weak. Should be at least 12 characters and contain minimum 1 uppercase, lowercase letter, number, special character."),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Cancel"),
        "confirmPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Repeat password"),
        "dashboardAiCoachDescription": MessageLookupByLibrary.simpleMessage(
            "Record a video, and our AI will analyze your technique. Your personal coach in your pocket."),
        "dashboardAiCoachTitle":
            MessageLookupByLibrary.simpleMessage("AI Coach"),
        "dashboardLiveScoresDescription": MessageLookupByLibrary.simpleMessage(
            "Follow every point from the world\'s most important courts. Always stay up to date!"),
        "dashboardLiveScoresTitle":
            MessageLookupByLibrary.simpleMessage("Scores"),
        "dashboardNewsDescription": MessageLookupByLibrary.simpleMessage(
            "The latest news, analyses, and interviews. Everything a tennis fan needs to know."),
        "dashboardNewsTitle": MessageLookupByLibrary.simpleMessage("News"),
        "dashboardTrainingHistoryDescription": MessageLookupByLibrary.simpleMessage(
            "Review your progress, analyze stats, and see how your game evolves."),
        "dashboardTrainingHistoryTitle":
            MessageLookupByLibrary.simpleMessage("History"),
        "dashboardWelcomeSubtitle":
            MessageLookupByLibrary.simpleMessage("Choose what interests you"),
        "drawerAbout": MessageLookupByLibrary.simpleMessage("About App"),
        "drawerLogout": MessageLookupByLibrary.simpleMessage("Log Out"),
        "drawerSupport": MessageLookupByLibrary.simpleMessage("Support Me"),
        "drawerTheme": MessageLookupByLibrary.simpleMessage("Change Theme"),
        "emailHint":
            MessageLookupByLibrary.simpleMessage("Enter your email address"),
        "emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
        "errorGeneric": MessageLookupByLibrary.simpleMessage(
            "An unexpected error occurred. Please try again later."),
        "forgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("Forgot your password?"),
        "liveScoresEmpty":
            MessageLookupByLibrary.simpleMessage("No live matches right now."),
        "liveScoresError": MessageLookupByLibrary.simpleMessage(
            "We\'re currently having problems, please try again later."),
        "liveScoresNoResults": MessageLookupByLibrary.simpleMessage(
            "No results for the search phrase."),
        "liveScoresPoints": MessageLookupByLibrary.simpleMessage("Points"),
        "liveScoresTitle": MessageLookupByLibrary.simpleMessage("Live Scores"),
        "loginTitle": MessageLookupByLibrary.simpleMessage("Login"),
        "logoutButton": MessageLookupByLibrary.simpleMessage("Log Out"),
        "newsArticlesEmpty":
            MessageLookupByLibrary.simpleMessage("No articles new right now."),
        "newsArticlesError": MessageLookupByLibrary.simpleMessage(
            "We\'re currently having problems, please try again later."),
        "newsArticlesTitle":
            MessageLookupByLibrary.simpleMessage("News Articles"),
        "orConnectWith":
            MessageLookupByLibrary.simpleMessage("or connect with"),
        "passwordHint":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "passwordLabel": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordResetEmailSentSuccess": MessageLookupByLibrary.simpleMessage(
            "If an account exists for that email, a password reset link has been sent."),
        "readMoreButton": MessageLookupByLibrary.simpleMessage("Read More"),
        "registerTitle": MessageLookupByLibrary.simpleMessage("Register"),
        "resetPasswordInstruction": MessageLookupByLibrary.simpleMessage(
            "Enter the email address associated with your account and we\'ll send you a link to reset your password."),
        "resetPasswordTitle":
            MessageLookupByLibrary.simpleMessage("Reset Password"),
        "saveButton": MessageLookupByLibrary.simpleMessage("Save"),
        "searchHint": MessageLookupByLibrary.simpleMessage(
            "Enter the player\'s name or surname"),
        "searchLabel": MessageLookupByLibrary.simpleMessage("Search"),
        "sendButton": MessageLookupByLibrary.simpleMessage("Send"),
        "showLessButton": MessageLookupByLibrary.simpleMessage("Show Less"),
        "signInButton": MessageLookupByLibrary.simpleMessage("Sign In"),
        "signInPrompt":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "signUpButton": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "signUpPrompt":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "trainingSessionImportButton":
            MessageLookupByLibrary.simpleMessage("Import from Gallery"),
        "trainingSessionStartButton":
            MessageLookupByLibrary.simpleMessage("Start Recording"),
        "trainingSessionTitle":
            MessageLookupByLibrary.simpleMessage("New Session"),
        "unknowUser": MessageLookupByLibrary.simpleMessage("unknown"),
        "validationErrorEmptyFields": MessageLookupByLibrary.simpleMessage(
            "Not all fields are filled in."),
        "validationErrorInvalidEmail":
            MessageLookupByLibrary.simpleMessage("The email is invalid."),
        "validationErrorPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("The passwords do not match."),
        "validationErrorWeakPassword": MessageLookupByLibrary.simpleMessage(
            "The password does not meet the requirements."),
        "verifyEmailMessage": m0,
        "verifyEmailResendButton":
            MessageLookupByLibrary.simpleMessage("Resend Email"),
        "verifyEmailResendButtonInSeconds": m1,
        "verifyEmailTitle":
            MessageLookupByLibrary.simpleMessage("Verify Your Email"),
        "welcomeUserMessage": m2
      };
}
