# Rallytics - Tenisowy Asystent Treningowy

**Rallytics** to nowoczesna aplikacja mobilna dla entuzjastów tenisa, stworzona we Flutterze. Aplikacja pełni rolę wirtualnego trenera, pomagając graczom analizować uderzenia, śledzić postępy i być na bieżąco z wynikami na żywo.

## ✨ Główne Funkcjonalności

*   🤖 **Analiza Uderzeń AI**: Nagrywaj swoje sesje treningowe i otrzymuj analizę techniczną uderzeń (forhend, bekhend, serwis itp.) dzięki wbudowanemu modelowi AI.
*   📊 **Śledzenie Statystyk**: Wizualizuj swoje postępy za pomocą interaktywnych wykresów i przeglądaj historię wszystkich treningów.
*   🎾 **Wyniki na Żywo**: Śledź wyniki profesjonalnych turniejów tenisowych w czasie rzeczywistym.
*   📝 **Dynamiczne Plany Treningowe**: Twórz spersonalizowane plany treningowe na podstawie szablonów dostarczanych przez API.
*   🔒 **Bezpieczeństwo**: Aplikacja zabezpieczona jest uwierzytelnianiem Firebase oraz opcjonalną blokadą biometryczną (odcisk palca / Face ID).
*   🔗 **Deep Linking**: Udostępniaj linki do konkretnych wyników meczów lub sesji treningowych i otwieraj je bezpośrednio w aplikacji.

## 🏛️ Architektura i Stos Technologiczny

Projekt został zbudowany w oparciu o zasady **Clean Architecture**, oddzielając logikę biznesową od warstwy prezentacji i dostępu do danych. Dzięki temu aplikacja jest skalowalna, łatwa w utrzymaniu i testowalna.

*   **Podejście Rozwojowe**: **Test-Driven Development (TDD)**
    > Projekt jest rozwijany zgodnie z metodologią TDD. Logika biznesowa i zarządzanie stanem są w pierwszej kolejności opisywane przez testy jednostkowe i widgetowe, a następnie implementowane. Zapewnia to wysoką jakość kodu i stabilność aplikacji.

## 🚀 Instalacja i Uruchomienie

Aby uruchomić projekt lokalnie:

1.  **Sklonuj repozytorium:**
    ```bash
    git clone adres_repozytorium
    cd nazwa_folderu
    ```

2.  **Zainstaluj zależności Fluttera:**
    ```bash
    flutter pub get
    ```

3.  **Skonfiguruj Firebase:**
    Aplikacja wymaga połączenia z projektem Firebase.
    
    *   **Zainstaluj Firebase CLI**, jeśli jeszcze go nie masz (zgodnie z [oficjalną dokumentacją](https://firebase.google.com/docs/cli#setup_update)).
    
    *   Uruchom i wykonaj polecenie w terminalu:
        ```bash
        Set-ExecutionPolicy Unrestricted -Scope Process
        ```

    *   **Zaloguj się do Firebase:**
        ```bash
        firebase login
        ```
    
    *   **Skonfiguruj projekt za pomocą FlutterFire CLI:**
        Uruchom poniższą komendę i wybierz z listy swój projekt Firebase.
        ```bash
        flutterfire configure
        ```
        Ten krok automatycznie wygeneruje potrzebny plik `lib/firebase_options.dart`.

4.  **Wygeneruj wymagane pliki:**
    Projekt korzysta z generatorów kodu (`freezed`, `injectable`, `auto_route` itp.). Uruchom `build_runner`, aby wygenerować wszystkie niezbędne pliki:
    ```bash
    flutter pub run build_runner watch --delete-conflicting-outputs
    ```

5.  **Uruchom aplikację:**
    ```bash
    flutter run
    ```

## 🧪 Testowanie

Projekt jest rozwijany zgodnie z metodologią TDD. Aby uruchomić wszystkie testy, użyj komendy:
```bash
flutter test