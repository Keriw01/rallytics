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
  String get loginTitle => 'Logowanie';

  @override
  String get loginButton => 'Zaloguj się';

  @override
  String get loginEmailLabel => 'Email';

  @override
  String get loginPasswordHint => 'Hasło';

  @override
  String get loginErrorInvalidCredentials =>
      'Nie prawidłowy email lub hasło. Spróbuj ponownie.';

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
  String get saveButton => 'Zapisz';

  @override
  String get cancelButton => 'Anuluj';

  @override
  String get errorGeneric =>
      'Nie oczekiwany błąd wystąpił. Spróbuj ponownie później.';

  @override
  String get logoutButton => 'Wyloguj się';

  @override
  String get errorInvalidCredentials => 'Nie prawidłowy email lub hasło.';

  @override
  String get errorEmailInUse => 'Ten email jest już używany. Spróbuj innego.';

  @override
  String get errorWeakPassword => 'Hasło jest zbyt słabe.';

  @override
  String welcomeUserMessage(String userName) {
    return 'Witaj z powrotem, $userName!';
  }
}
