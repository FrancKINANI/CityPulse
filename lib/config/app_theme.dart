import 'package:flutter/material.dart';
import 'app_config.dart';

class AppTheme {
  // Mode clair - Couleurs principales
  static const Color primaryColor = AppConfig.primaryColor;
  static const Color secondaryColor = AppConfig.secondaryColor;
  static const Color backgroundColor = Colors.white;
  static const Color cardColor = Colors.white;
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF757575);
  static const Color buttonColor = AppConfig.secondaryColor;
  static const Color errorColor = AppConfig.errorColor;
  static const Color successColor = AppConfig.successColor;
  
  // Mode sombre - Couleurs principales
  static const Color darkPrimaryColor = AppConfig.darkPrimaryColor;
  static const Color darkSecondaryColor = AppConfig.darkSecondaryColor;
  static const Color darkBackgroundColor = AppConfig.darkBackgroundColor;
  static const Color darkCardColor = AppConfig.darkCardColor;
  static const Color darkTextPrimaryColor = AppConfig.darkTextColor;
  static const Color darkTextSecondaryColor = Color(0xFFBDBDBD);
  static const Color darkButtonColor = AppConfig.darkSecondaryColor;

  // Styles de texte
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

  // Styles de bouton
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: buttonColor,
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static ButtonStyle secondaryButtonStyle = TextButton.styleFrom(
    foregroundColor: buttonColor,
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  );

  // Styles d'input
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

  // Styles de carte
  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardColor,
    borderRadius: BorderRadius.circular(12),
  );

  // Styles d'appbar
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
}