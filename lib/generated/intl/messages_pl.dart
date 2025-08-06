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
        "authErrorEmailInUse": MessageLookupByLibrary.simpleMessage(
            "Ten email jest już używany. Proszę spróbować innego."),
        "authErrorEmailRequired":
            MessageLookupByLibrary.simpleMessage("Email jest wymagany."),
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
        "emailHint":
            MessageLookupByLibrary.simpleMessage("Wpisz swój adres email"),
        "emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
        "errorGeneric": MessageLookupByLibrary.simpleMessage(
            "Niespodziewany błąd. Proszę spróbować ponownie później."),
        "forgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("Nie pamiętasz hasła?"),
        "liveScoresMatchStatusFinished":
            MessageLookupByLibrary.simpleMessage("Zakończone"),
        "liveScoresMatchStatusUpcoming":
            MessageLookupByLibrary.simpleMessage("Nadchodzące"),
        "liveScoresTitle":
            MessageLookupByLibrary.simpleMessage("Wyniki na Żywo"),
        "loginTitle": MessageLookupByLibrary.simpleMessage("Logowanie"),
        "logoutButton": MessageLookupByLibrary.simpleMessage("Wyloguj"),
        "orConnectWith": MessageLookupByLibrary.simpleMessage("lub połącz z"),
        "passwordHint":
            MessageLookupByLibrary.simpleMessage("Wprowadź swoje hasło"),
        "passwordLabel": MessageLookupByLibrary.simpleMessage("Hasło"),
        "passwordResetEmailSentSuccess": MessageLookupByLibrary.simpleMessage(
            "Jeśli istnieje konto dla tego adresu e-mail, link do resetowania hasła został wysłany."),
        "registerTitle": MessageLookupByLibrary.simpleMessage("Rejestracja"),
        "resetPasswordInstruction": MessageLookupByLibrary.simpleMessage(
            "Wprowadź adres e-mail powiązany z Twoim kontem, a my wyślemy Ci link umożliwiający zresetowanie hasła."),
        "resetPasswordTitle":
            MessageLookupByLibrary.simpleMessage("Zresetuj hasło"),
        "saveButton": MessageLookupByLibrary.simpleMessage("Zapisz"),
        "sendButton": MessageLookupByLibrary.simpleMessage("Wyślij"),
        "signInButton": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "signInPrompt": MessageLookupByLibrary.simpleMessage("Masz już konto?"),
        "signUpButton": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "signUpPrompt": MessageLookupByLibrary.simpleMessage("Nie masz konta?"),
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
