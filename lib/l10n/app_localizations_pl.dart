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
  String get resetPasswordInstruction =>
      'Wprowadź adres e-mail powiązany z Twoim kontem, a my wyślemy Ci link umożliwiający zresetowanie hasła.';

  @override
  String get verifyEmailTitle => 'Weryfikacja e-mail';

  @override
  String verifyEmailMessage(String userEmail) {
    return 'Link weryfikacyjny został wysłany na adres $userEmail. Sprawdź skrzynkę odbiorczą i kliknij link, aby aktywować konto.';
  }

  @override
  String get verifyEmailResendButton => 'Wyślij ponownie e-mail';

  @override
  String verifyEmailResendButtonInSeconds(String seconds) {
    return 'Wyślij ponownie za $seconds s';
  }

  @override
  String get unknowUser => 'nieznany';

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
  String get authErrorFacebookCanceled =>
      'Przerwano logowanie przez Facebook przez użytkownika.';

  @override
  String get authErrorConfiguration =>
      'Błąd konfiguracji logowania. Skontaktuj się z pomocą techniczną.';

  @override
  String get authErrorFacebookFailed =>
      'Logowanie przez Facebook nie powiodło się.';

  @override
  String get authErrorAccountExistsWithDifferentCredential =>
      'Konto z tym adresem e-mail już istnieje. Zaloguj się inną metodą.';

  @override
  String get authErrorGitHubCanceled =>
      'Przerwano logowanie przez GitHub przez użytkownika.';

  @override
  String get authErrorGoogleCanceled =>
      'Przerwano logowanie przez Google przez użytkownika.';

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
  String get liveScoresError =>
      'Mamy w tej chwili problemy, spróbuj ponownie później.';

  @override
  String get liveScoresEmpty => 'Aktualnie brak meczów na żywo.';

  @override
  String get liveScoresPoints => 'Punkty';

  @override
  String get searchLabel => 'Wyszukaj';

  @override
  String get searchHint => 'Wpisz imię lub nazwisko zawodnika';

  @override
  String get liveScoresNoResults => 'Brak wyników dla szukanej frazy.';

  @override
  String welcomeUserMessage(String userName) {
    return 'Witaj ponownie, $userName!';
  }

  @override
  String get dashboardWelcomeSubtitle => 'Wybierz co cię interesuje';

  @override
  String get dashboardLiveScoresTitle => 'Wyniki';

  @override
  String get dashboardLiveScoresDescription =>
      'Śledź każdy punkt z najważniejszych kortów świata. Zawsze bądź na bieżąco!';

  @override
  String get dashboardNewsTitle => 'Aktualności';

  @override
  String get dashboardNewsDescription =>
      'Najnowsze wiadomości, analizy i wywiady. Wszystko, co musi wiedzieć fan tenisa.';

  @override
  String get dashboardAiCoachTitle => 'Trener AI';

  @override
  String get dashboardAiCoachDescription =>
      'Nagraj film, a nasza sztuczna inteligencja przeanalizuje Twoją technikę. Twój osobisty trener w Twojej kieszeni.';

  @override
  String get dashboardTrainingHistoryTitle => 'Historia';

  @override
  String get dashboardTrainingHistoryDescription =>
      'Przeglądaj swoje postępy, analizuj statystyki i obserwuj, jak ewoluuje Twoja gra.';

  @override
  String get drawerTheme => 'Zmień motyw';

  @override
  String get drawerAbout => 'O aplikacji';

  @override
  String get drawerSupport => 'Wesprzyj mnie';

  @override
  String get drawerLogout => 'Wyloguj';

  @override
  String get newsArticlesTitle => 'Najnowsze Artykuły';

  @override
  String get newsArticlesError =>
      'We\'re currently having problems, please try again later.';

  @override
  String get newsArticlesEmpty => 'No articles new right now.';

  @override
  String get readMoreButton => 'Rozwiń';

  @override
  String get showLessButton => 'Zwiń';

  @override
  String get errorGeneric =>
      'Niespodziewany błąd. Proszę spróbować ponownie później.';
}
