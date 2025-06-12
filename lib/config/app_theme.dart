import 'package:flutter/material.dart';

class AppTheme {
  // ======== COULEURS PRINCIPALES ========
  // Mode clair - Couleurs principales
  static const Color primaryColor = Colors.white;
  static const Color secondaryColor = Color(0xFF2196F3); // Bleu
  static const Color accentColor = Color(0xFF64B5F6); // Bleu clair
  static const Color backgroundColor = Colors.white;
  static const Color cardColor = Colors.white;
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF757575);
  static const Color dividerColor = Color(0xFFEEEEEE);
  
  // Couleurs fonctionnelles
  static const Color errorColor = Color(0xFFE53935);
  static const Color successColor = Color(0xFF4CAF50);
  static const Color warningColor = Color(0xFFFFC107);
  
  // Mode sombre - Couleurs principales
  static const Color darkPrimaryColor = Color(0xFF121212);
  static const Color darkSecondaryColor = Color(0xFF2196F3); // Bleu
  static const Color darkAccentColor = Color(0xFF64B5F6); // Bleu clair
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color darkCardColor = Color(0xFF1E1E1E);
  static const Color darkTextPrimaryColor = Colors.white;
  static const Color darkTextSecondaryColor = Color(0xFFBDBDBD);
  static const Color darkDividerColor = Color(0xFF424242);

  // ======== DIMENSIONS ========
  static const double defaultPadding = 16.0;
  static const double defaultMargin = 16.0;
  static const double defaultRadius = 8.0;
  static const double defaultSpacing = 8.0;

  // ======== STYLES DE TEXTE ========
  // Mode clair
  static const TextStyle headingStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subheadingStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 16,
  );

  static const TextStyle captionStyle = TextStyle(
    color: textSecondaryColor,
    fontSize: 14,
  );

  // Mode sombre
  static TextStyle get darkHeadingStyle => headingStyle.copyWith(color: darkTextPrimaryColor);
  static TextStyle get darkSubheadingStyle => subheadingStyle.copyWith(color: darkTextPrimaryColor);
  static TextStyle get darkBodyStyle => bodyStyle.copyWith(color: darkTextPrimaryColor);
  static TextStyle get darkCaptionStyle => captionStyle.copyWith(color: darkTextSecondaryColor);

  // ======== STYLES DE BOUTON ========
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: secondaryColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static ButtonStyle secondaryButtonStyle = TextButton.styleFrom(
    foregroundColor: secondaryColor,
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  );

  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: textPrimaryColor,
    side: const BorderSide(color: dividerColor),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  // ======== STYLES D'INPUT ========
  static InputDecoration inputDecoration({
    required String hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: cardColor,
      hintText: hintText,
      hintStyle: TextStyle(color: textSecondaryColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  // ======== STYLES DE CARTE ========
  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardColor,
    borderRadius: BorderRadius.circular(12),
  );

  // ======== STYLES D'APPBAR ========
  static AppBarTheme appBarTheme = const AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: textPrimaryColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: textPrimaryColor),
  );

  // ======== THÈMES COMPLETS ========
  static ThemeData getLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: cardColor,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: accentColor,
        background: backgroundColor,
        error: errorColor,
      ),
      textTheme: TextTheme(
        headlineLarge: headingStyle,
        headlineMedium: subheadingStyle,
        bodyLarge: bodyStyle,
        bodyMedium: captionStyle,
      ),
      appBarTheme: appBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: primaryButtonStyle,
      ),
      textButtonTheme: TextButtonThemeData(
        style: secondaryButtonStyle,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: outlinedButtonStyle,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      dividerTheme: const DividerThemeData(
        color: dividerColor,
        thickness: 1,
      ),
      useMaterial3: true,
    );
  }
  
  static ThemeData getDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: darkPrimaryColor,
      scaffoldBackgroundColor: darkBackgroundColor,
      cardColor: darkCardColor,
      colorScheme: ColorScheme.dark(
        primary: darkPrimaryColor,
        secondary: darkSecondaryColor,
        tertiary: darkAccentColor,
        background: darkBackgroundColor,
        error: errorColor,
      ),
      textTheme: TextTheme(
        headlineLarge: darkHeadingStyle,
        headlineMedium: darkSubheadingStyle,
        bodyLarge: darkBodyStyle,
        bodyMedium: darkCaptionStyle,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: darkBackgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: darkTextPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: darkTextPrimaryColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: primaryButtonStyle.copyWith(
          backgroundColor: MaterialStateProperty.all(darkSecondaryColor),
          foregroundColor: MaterialStateProperty.all(darkTextPrimaryColor),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: secondaryButtonStyle.copyWith(
          foregroundColor: MaterialStateProperty.all(darkSecondaryColor),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: outlinedButtonStyle.copyWith(
          foregroundColor: MaterialStateProperty.all(darkTextPrimaryColor),
          side: MaterialStateProperty.all(BorderSide(color: darkDividerColor)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkCardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintStyle: TextStyle(color: darkTextSecondaryColor),
      ),
      dividerTheme: DividerThemeData(
        color: darkDividerColor,
        thickness: 1,
      ),
      useMaterial3: true,
    );
  }
}