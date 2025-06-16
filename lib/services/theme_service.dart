import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/app_theme.dart';

class ThemeService extends ChangeNotifier {
  static const String _themeKey = 'theme_mode';

  ThemeMode _themeMode = ThemeMode.light;

  ThemeService() {
    _loadThemeMode();
  }

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  // Ajout des getters pour les thèmes
  ThemeData getLightTheme() {
    return ThemeData(
      primaryColor: AppTheme.primaryColor,
      scaffoldBackgroundColor: AppTheme.backgroundColor,
      colorScheme: const ColorScheme.light(
        primary: AppTheme.primaryColor,
        secondary: AppTheme.secondaryColor,
        surface: AppTheme.backgroundColor,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppTheme.textPrimaryColor),
        bodyMedium: TextStyle(color: AppTheme.textSecondaryColor),
      ),
      dividerColor: AppTheme.dividerColor,
    );
  }

  ThemeData getDarkTheme() {
    return ThemeData(
      primaryColor: AppTheme.darkPrimaryColor,
      scaffoldBackgroundColor: AppTheme.darkBackgroundColor,
      colorScheme: const ColorScheme.dark(
        primary: AppTheme.darkPrimaryColor,
        secondary: AppTheme.darkSecondaryColor,
        surface: AppTheme.darkBackgroundColor,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppTheme.darkTextPrimaryColor),
        bodyMedium: TextStyle(color: AppTheme.darkTextSecondaryColor),
      ),
      dividerColor: AppTheme.darkDividerColor,
    );
  }

  Future<void> _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final savedThemeMode = prefs.getString(_themeKey);

    if (savedThemeMode == null) {
      // Utiliser le thème du système par défaut
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      _themeMode = brightness == Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light;
    } else {
      _themeMode = _getThemeModeFromString(savedThemeMode);
    }

    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeKey, _getStringFromThemeMode(mode));

    notifyListeners();
  }

  ThemeMode _getThemeModeFromString(String themeMode) {
    switch (themeMode) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  String _getStringFromThemeMode(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.light:
        return 'light';
      case ThemeMode.system:
      default:
        return 'system';
    }
  }
}
