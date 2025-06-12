import 'package:flutter/material.dart';
import 'app_config.dart';

class AppTheme {
  // Couleurs principales
  static const Color primaryColor = AppConfig.primaryColor;
  static const Color secondaryColor = AppConfig.secondaryColor;
  static const Color backgroundColor = Color(0xFF141E16);
  static const Color cardColor = Color(0xFF283F33);
  static const Color textPrimaryColor = Colors.white;
  static const Color textSecondaryColor = Color(0xFF9BBFAA);
  static const Color buttonColor = AppConfig.secondaryColor;
  static const Color errorColor = AppConfig.errorColor;
  static const Color successColor = AppConfig.successColor;

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