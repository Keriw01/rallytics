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

  static String m0(userName) => "Witaj z powrotem, ${userName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("Rallytics"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "errorEmailInUse": MessageLookupByLibrary.simpleMessage(
            "Ten email jest już używany. Spróbuj innego."),
        "errorGeneric": MessageLookupByLibrary.simpleMessage(
            "Nie oczekiwany błąd wystąpił. Spróbuj ponownie później."),
        "errorInvalidCredentials": MessageLookupByLibrary.simpleMessage(
            "Nie prawidłowy email lub hasło."),
        "errorWeakPassword":
            MessageLookupByLibrary.simpleMessage("Hasło jest zbyt słabe."),
        "liveScoresMatchStatusFinished":
            MessageLookupByLibrary.simpleMessage("Zakończone"),
        "liveScoresMatchStatusUpcoming":
            MessageLookupByLibrary.simpleMessage("Nadchodzące"),
        "liveScoresTitle":
            MessageLookupByLibrary.simpleMessage("Wyniki na Żywo"),
        "loginButton": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "loginEmailLabel": MessageLookupByLibrary.simpleMessage("Email"),
        "loginErrorInvalidCredentials": MessageLookupByLibrary.simpleMessage(
            "Nie prawidłowy email lub hasło. Spróbuj ponownie."),
        "loginPasswordHint": MessageLookupByLibrary.simpleMessage("Hasło"),
        "loginTitle": MessageLookupByLibrary.simpleMessage("Logowanie"),
        "logoutButton": MessageLookupByLibrary.simpleMessage("Wyloguj się"),
        "saveButton": MessageLookupByLibrary.simpleMessage("Zapisz"),
        "trainingSessionImportButton":
            MessageLookupByLibrary.simpleMessage("Importuj z Galerii"),
        "trainingSessionStartButton":
            MessageLookupByLibrary.simpleMessage("Zacznij Nagrywanie"),
        "trainingSessionTitle":
            MessageLookupByLibrary.simpleMessage("Nowa Sesja"),
        "welcomeUserMessage": m0
      };
}
