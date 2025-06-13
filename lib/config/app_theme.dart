import 'package:flutter/material.dart';

class AppTheme {
  // ======== COULEURS PRINCIPALES ========
  // Mode clair - Couleurs principales
  static const Color primaryColor = Colors.white;
  static const Color primaryLightColor = Color(
    0xFFFFF3E0,
  ); // Très léger orange/crème
  static const Color secondaryColor = Color(0xFFFFA726); // Orange 600
  static const Color accentColor = Color(0xFFFFCC80); // Ambre 200
  static const Color backgroundColor = Colors.white;
  static const Color cardColor = Colors.white;
  static const Color cardColorSelected = Color(
    0xFFFFF3E0,
  ); // Très léger orange/crème
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF757575);
  static const Color textColor =
      Colors.black; // Mis à jour pour le texte sur fond clair
  static const Color textLightColor = Color(0xFFB0BEC5); // Gris-bleu très clair
  static const Color dividerColor = Color(0xFFEEEEEE);

  // Couleurs fonctionnelles
  static const Color errorColor = Color(0xFFE53935);
  static const Color successColor = Color(0xFF4CAF50);
  static const Color warningColor = Color(0xFFFFC107);

  // Mode sombre - Couleurs principales
  static const Color darkPrimaryColor = Color(0xFF121212);
  static const Color darkSecondaryColor = Color(0xFFFFA726); // Orange 600
  static const Color darkAccentColor = Color(0xFFFFCC80); // Ambre 200
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color darkCardColor = Color(0xFF1E1E1E);
  static const Color darkTextPrimaryColor = Color.fromARGB(255, 23, 23, 23);
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

  // Styles ajoutés depuis styles.dart
  static const TextStyle headline1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle body1 = TextStyle(
    fontSize: 16,
    color: textPrimaryColor,
  );

  static const TextStyle body2 = TextStyle(fontSize: 14, color: textLightColor);

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors
        .white, // Assurer que le texte du bouton est blanc sur les boutons colorés
  );

  // Mode sombre
  static TextStyle get darkHeadingStyle =>
      headingStyle.copyWith(color: darkTextPrimaryColor);
  static TextStyle get darkSubheadingStyle =>
      subheadingStyle.copyWith(color: darkTextPrimaryColor);
  static TextStyle get darkBodyStyle =>
      bodyStyle.copyWith(color: darkTextPrimaryColor);
  static TextStyle get darkCaptionStyle =>
      captionStyle.copyWith(color: darkTextSecondaryColor);

  // ======== STYLES DE BOUTON ========
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: secondaryColor,
    foregroundColor: Colors.white, // Texte blanc sur bouton orange
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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

  // Styles de bouton ajoutés depuis styles.dart
  static final ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: accentColor,
    foregroundColor: Colors.white, // Texte blanc sur bouton accent
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle outlinedButton = OutlinedButton.styleFrom(
    foregroundColor:
        textPrimaryColor, // Texte de couleur primaire pour les boutons "outlined"
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  // Style d'input ajouté depuis styles.dart
  static const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: cardColor,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  // ======== STYLES DE CARTE ========
  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardColor,
    borderRadius: BorderRadius.circular(12),
  );

  // Style de carte ajouté depuis styles.dart
  static final CardTheme cardTheme = CardTheme(
    color: cardColor,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
        surface: backgroundColor,
        error: errorColor,
      ),
      textTheme: TextTheme(
        headlineLarge: headingStyle,
        headlineMedium: subheadingStyle,
        bodyLarge: bodyStyle,
        bodyMedium: captionStyle,
      ),
      appBarTheme: appBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(style: primaryButtonStyle),
      textButtonTheme: TextButtonThemeData(style: secondaryButtonStyle),
      outlinedButtonTheme: OutlinedButtonThemeData(style: outlinedButtonStyle),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
      dividerTheme: const DividerThemeData(color: dividerColor, thickness: 1),
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
        secondary: darkSecondaryColor, // Utilisation de darkSecondaryColor
        tertiary: darkAccentColor, // Utilisation de darkAccentColor
        surface: darkBackgroundColor,
        error: errorColor, // Erreur reste la même
      ),
      textTheme: TextTheme(
        headlineLarge: darkHeadingStyle,
        headlineMedium: darkSubheadingStyle,
        bodyLarge: darkBodyStyle,
        bodyMedium: darkCaptionStyle,
      ),
      appBarTheme: appBarTheme.copyWith(
        // Copier le thème de l'AppBar et ajuster pour le mode sombre
        backgroundColor: darkBackgroundColor,
        titleTextStyle: darkHeadingStyle.copyWith(
          fontSize: 18,
        ), // Utiliser darkHeadingStyle
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), // Icônes blanches pour le mode sombre
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: primaryButtonStyle.copyWith(
          // Copier le style du bouton et ajuster pour le mode sombre
          backgroundColor: WidgetStateProperty.all(darkSecondaryColor),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: secondaryButtonStyle.copyWith(
          foregroundColor: WidgetStateProperty.all(darkSecondaryColor),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: outlinedButtonStyle.copyWith(
          foregroundColor: WidgetStateProperty.all(darkTextPrimaryColor),
          side: WidgetStateProperty.all(BorderSide(color: darkDividerColor)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkCardColor,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(color: darkTextSecondaryColor),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: darkDividerColor,
        thickness: 1,
      ),
      useMaterial3: true,
    );
  }
}
