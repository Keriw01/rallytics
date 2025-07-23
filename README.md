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