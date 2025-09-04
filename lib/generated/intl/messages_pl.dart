// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(userEmail) =>
      "Link weryfikacyjny został wysłany na adres ${userEmail}. Sprawdź skrzynkę odbiorczą i kliknij link, aby aktywować konto.";

  static String m1(seconds) => "Wyślij ponownie za ${seconds} s";

  static String m2(userName) => "Witaj ponownie, ${userName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("Rallytics"),
        "authErrorAccountExistsWithDifferentCredential":
            MessageLookupByLibrary.simpleMessage(
                "Konto z tym adresem e-mail już istnieje. Zaloguj się inną metodą."),
        "authErrorConfiguration": MessageLookupByLibrary.simpleMessage(
            "Błąd konfiguracji logowania. Skontaktuj się z pomocą techniczną."),
        "authErrorEmailInUse": MessageLookupByLibrary.simpleMessage(
            "Ten email jest już używany. Proszę spróbować innego."),
        "authErrorEmailRequired":
            MessageLookupByLibrary.simpleMessage("Email jest wymagany."),
        "authErrorFacebookCanceled": MessageLookupByLibrary.simpleMessage(
            "Przerwano logowanie przez Facebook przez użytkownika."),
        "authErrorFacebookFailed": MessageLookupByLibrary.simpleMessage(
            "Logowanie przez Facebook nie powiodło się."),
        "authErrorGitHubCanceled": MessageLookupByLibrary.simpleMessage(
            "Przerwano logowanie przez GitHub przez użytkownika."),
        "authErrorGoogleCanceled": MessageLookupByLibrary.simpleMessage(
            "Przerwano logowanie przez Google przez użytkownika."),
        "authErrorInvalidCredentials": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy email lub hasło. Proszę spróbować ponownie."),
        "authErrorInvalidEmail":
            MessageLookupByLibrary.simpleMessage("Email jest niepoprawny."),
        "authErrorInvalidEmailFormat": MessageLookupByLibrary.simpleMessage(
            "Proszę wprowadzić prawidłowy adres email."),
        "authErrorPasswordRequired":
            MessageLookupByLibrary.simpleMessage("Hasło jest wymagane."),
        "authErrorWeakPassword": MessageLookupByLibrary.simpleMessage(
            "Hasło jest zbyt słabe. Powinno mieć co najmniej 12 znaków i zawierać minimum 1 wielką, małą literę, cyfrę i znak specjalny."),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "confirmPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Powtórz hasło"),
        "dashboardAiCoachDescription": MessageLookupByLibrary.simpleMessage(
            "Nagraj film, a nasza sztuczna inteligencja przeanalizuje Twoją technikę. Twój osobisty trener w Twojej kieszeni."),
        "dashboardAiCoachTitle":
            MessageLookupByLibrary.simpleMessage("Trener AI"),
        "dashboardLiveScoresDescription": MessageLookupByLibrary.simpleMessage(
            "Śledź każdy punkt z najważniejszych kortów świata. Zawsze bądź na bieżąco!"),
        "dashboardLiveScoresTitle":
            MessageLookupByLibrary.simpleMessage("Wyniki"),
        "dashboardNewsDescription": MessageLookupByLibrary.simpleMessage(
            "Najnowsze wiadomości, analizy i wywiady. Wszystko, co musi wiedzieć fan tenisa."),
        "dashboardNewsTitle":
            MessageLookupByLibrary.simpleMessage("Aktualności"),
        "dashboardTrainingHistoryDescription": MessageLookupByLibrary.simpleMessage(
            "Przeglądaj swoje postępy, analizuj statystyki i obserwuj, jak ewoluuje Twoja gra."),
        "dashboardTrainingHistoryTitle":
            MessageLookupByLibrary.simpleMessage("Historia"),
        "dashboardWelcomeSubtitle":
            MessageLookupByLibrary.simpleMessage("Wybierz co cię interesuje"),
        "drawerAbout": MessageLookupByLibrary.simpleMessage("O aplikacji"),
        "drawerLogout": MessageLookupByLibrary.simpleMessage("Wyloguj"),
        "drawerSupport": MessageLookupByLibrary.simpleMessage("Wesprzyj mnie"),
        "drawerTheme": MessageLookupByLibrary.simpleMessage("Zmień motyw"),
        "emailHint":
            MessageLookupByLibrary.simpleMessage("Wpisz swój adres email"),
        "emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
        "errorGeneric": MessageLookupByLibrary.simpleMessage(
            "Niespodziewany błąd. Proszę spróbować ponownie później."),
        "forgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("Nie pamiętasz hasła?"),
        "liveScoresEmpty": MessageLookupByLibrary.simpleMessage(
            "Aktualnie brak meczów na żywo."),
        "liveScoresError": MessageLookupByLibrary.simpleMessage(
            "Mamy w tej chwili problemy, spróbuj ponownie później."),
        "liveScoresNoResults": MessageLookupByLibrary.simpleMessage(
            "Brak wyników dla szukanej frazy."),
        "liveScoresPoints": MessageLookupByLibrary.simpleMessage("Punkty"),
        "liveScoresTitle":
            MessageLookupByLibrary.simpleMessage("Wyniki na Żywo"),
        "loginTitle": MessageLookupByLibrary.simpleMessage("Logowanie"),
        "logoutButton": MessageLookupByLibrary.simpleMessage("Wyloguj"),
        "newsArticlesEmpty": MessageLookupByLibrary.simpleMessage(
            "W tej chwili nie ma nowych artykułów."),
        "newsArticlesError": MessageLookupByLibrary.simpleMessage(
            "Występują obecnie problemy. Spróbuj ponownie później."),
        "newsArticlesTitle":
            MessageLookupByLibrary.simpleMessage("Najnowsze Artykuły"),
        "orConnectWith": MessageLookupByLibrary.simpleMessage("lub połącz z"),
        "passwordHint":
            MessageLookupByLibrary.simpleMessage("Wprowadź swoje hasło"),
        "passwordLabel": MessageLookupByLibrary.simpleMessage("Hasło"),
        "passwordResetEmailSentSuccess": MessageLookupByLibrary.simpleMessage(
            "Jeśli istnieje konto dla tego adresu e-mail, link do resetowania hasła został wysłany."),
        "paymentAuthenticationError": MessageLookupByLibrary.simpleMessage(
            "Błąd autoryzacji. Zaloguj się lub sprawdź poprawność klucza API."),
        "paymentButton": MessageLookupByLibrary.simpleMessage("Zapłać"),
        "paymentErrorUserNotLoggedIn": MessageLookupByLibrary.simpleMessage(
            "Musisz być zalogowany, aby dokonać płatności."),
        "paymentInvalidRequest": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowe żądanie. Upewnij się, że wszystkie wymagane dane zostały podane."),
        "paymentInvalidResponse": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowa odpowiedź serwera."),
        "paymentNetworkError": MessageLookupByLibrary.simpleMessage(
            "Błąd serwera Stripe. Spróbuj ponownie później."),
        "paymentNetworkFailed": MessageLookupByLibrary.simpleMessage(
            "Połączenie sieciowe nie powiodło się."),
        "paymentPaymentFailed": MessageLookupByLibrary.simpleMessage(
            "Płatność nie powiodła się. Sprawdź dane płatności i spróbuj ponownie."),
        "paymentResourceNotFound":
            MessageLookupByLibrary.simpleMessage("Nie znaleziono zasobu."),
        "paymentSuccessMessage":
            MessageLookupByLibrary.simpleMessage("Dziękuję za twoje wsparcie!"),
        "readMoreButton": MessageLookupByLibrary.simpleMessage("Rozwiń"),
        "registerTitle": MessageLookupByLibrary.simpleMessage("Rejestracja"),
        "resetPasswordInstruction": MessageLookupByLibrary.simpleMessage(
            "Wprowadź adres e-mail powiązany z Twoim kontem, a my wyślemy Ci link umożliwiający zresetowanie hasła."),
        "resetPasswordTitle":
            MessageLookupByLibrary.simpleMessage("Zresetuj hasło"),
        "saveButton": MessageLookupByLibrary.simpleMessage("Zapisz"),
        "searchHint": MessageLookupByLibrary.simpleMessage(
            "Wpisz imię lub nazwisko zawodnika"),
        "searchLabel": MessageLookupByLibrary.simpleMessage("Wyszukaj"),
        "sendButton": MessageLookupByLibrary.simpleMessage("Wyślij"),
        "showLessButton": MessageLookupByLibrary.simpleMessage("Zwiń"),
        "signInButton": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "signInPrompt": MessageLookupByLibrary.simpleMessage("Masz już konto?"),
        "signUpButton": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "signUpPrompt": MessageLookupByLibrary.simpleMessage("Nie masz konta?"),
        "supportMeHintText":
            MessageLookupByLibrary.simpleMessage("Własna kwota (zł)"),
        "supportMeTitle": MessageLookupByLibrary.simpleMessage("Wesprzyj mnie"),
        "trainingSessionImportButton":
            MessageLookupByLibrary.simpleMessage("Importuj z Galerii"),
        "trainingSessionStartButton":
            MessageLookupByLibrary.simpleMessage("Zacznij Nagrywanie"),
        "trainingSessionTitle":
            MessageLookupByLibrary.simpleMessage("Nowa Sesja"),
        "unknowUser": MessageLookupByLibrary.simpleMessage("nieznany"),
        "validationErrorEmptyFields": MessageLookupByLibrary.simpleMessage(
            "Nie wszystkie pola są uzupełnione."),
        "validationErrorInvalidEmail":
            MessageLookupByLibrary.simpleMessage("Email jest niepoprawny."),
        "validationErrorPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Hasła do siebie nie pasują."),
        "validationErrorWeakPassword":
            MessageLookupByLibrary.simpleMessage("Hasło nie spełnia wymagań."),
        "verifyEmailMessage": m0,
        "verifyEmailResendButton":
            MessageLookupByLibrary.simpleMessage("Wyślij ponownie e-mail"),
        "verifyEmailResendButtonInSeconds": m1,
        "verifyEmailTitle":
            MessageLookupByLibrary.simpleMessage("Weryfikacja e-mail"),
        "welcomeUserMessage": m2
      };
}
