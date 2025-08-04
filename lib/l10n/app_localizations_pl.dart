// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Rallytics';

  @override
  String get sendButton => 'Wyślij';

  @override
  String get saveButton => 'Zapisz';

  @override
  String get cancelButton => 'Anuluj';

  @override
  String get logoutButton => 'Wyloguj';

  @override
  String get orConnectWith => 'lub połącz z';

  @override
  String get loginTitle => 'Logowanie';

  @override
  String get signInButton => 'Zaloguj się';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'Wpisz swój adres email';

  @override
  String get passwordLabel => 'Hasło';

  @override
  String get passwordHint => 'Wprowadź swoje hasło';

  @override
  String get confirmPasswordLabel => 'Powtórz hasło';

  @override
  String get forgotPasswordButton => 'Nie pamiętasz hasła?';

  @override
  String get registerTitle => 'Rejestracja';

  @override
  String get signUpButton => 'Zarejestruj się';

  @override
  String get signUpPrompt => 'Nie masz konta?';

  @override
  String get signInPrompt => 'Masz już konto?';

  @override
  String get resetPasswordTitle => 'Zresetuj hasło';

  @override
  String get passwordResetEmailSentSuccess =>
      'Jeśli istnieje konto dla tego adresu e-mail, link do resetowania hasła został wysłany.';

  @override
  String get authErrorEmailRequired => 'Email jest wymagany.';

  @override
  String get authErrorPasswordRequired => 'Hasło jest wymagane.';

  @override
  String get authErrorInvalidEmailFormat =>
      'Proszę wprowadzić prawidłowy adres email.';

  @override
  String get authErrorInvalidCredentials =>
      'Nieprawidłowy email lub hasło. Proszę spróbować ponownie.';

  @override
  String get authErrorEmailInUse =>
      'Ten email jest już używany. Proszę spróbować innego.';

  @override
  String get authErrorInvalidEmail => 'Email jest niepoprawny.';

  @override
  String get authErrorWeakPassword =>
      'Hasło jest zbyt słabe. Powinno mieć co najmniej 12 znaków i zawierać minimum 1 wielką, małą literę, cyfrę i znak specjalny.';

  @override
  String get validationErrorPasswordsDoNotMatch =>
      'Hasła do siebie nie pasują.';

  @override
  String get validationErrorEmptyFields => 'Nie wszystkie pola są uzupełnione.';

  @override
  String get validationErrorInvalidEmail => 'Email jest niepoprawny.';

  @override
  String get validationErrorWeakPassword => 'Hasło nie spełnia wymagań.';

  @override
  String get trainingSessionTitle => 'Nowa Sesja';

  @override
  String get trainingSessionStartButton => 'Zacznij Nagrywanie';

  @override
  String get trainingSessionImportButton => 'Importuj z Galerii';

  @override
  String get liveScoresTitle => 'Wyniki na Żywo';

  @override
  String get liveScoresMatchStatusUpcoming => 'Nadchodzące';

  @override
  String get liveScoresMatchStatusFinished => 'Zakończone';

  @override
  String welcomeUserMessage(String userName) {
    return 'Witaj ponownie, $userName!';
  }

  @override
  String get errorGeneric =>
      'Niespodziewany błąd. Proszę spróbować ponownie później.';
}
