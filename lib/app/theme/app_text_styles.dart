import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static final _montserrat = GoogleFonts.montserrat();
  static final _inter = GoogleFonts.inter();

  static final TextTheme textTheme = TextTheme(
    //! === use MONTSERRAT for HEADLINES and TITLES ===
    // For very large, main headers (rarely used)
    displayLarge: _montserrat.copyWith(
      fontSize: 57,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: _montserrat.copyWith(
      fontSize: 45,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: _montserrat.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),

    // To screen titles
    headlineLarge: _montserrat.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: _montserrat.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: _montserrat.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),

    // For section titles, cards, and dialogues
    titleLarge: _montserrat.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
    titleMedium: _montserrat.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: _montserrat.copyWith(fontSize: 14, fontWeight: FontWeight.w500),

    //! === use INTER for the REST OF THE TEXT ===
    // To the main text, descriptions
    bodyLarge: _inter.copyWith(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: _inter.copyWith(fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: _inter.copyWith(fontSize: 12, fontWeight: FontWeight.normal),

    // For buttons and other interactive labels
    labelLarge: _inter.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
    labelMedium: _inter.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
    labelSmall: _inter.copyWith(fontSize: 11, fontWeight: FontWeight.normal),
  );
}
