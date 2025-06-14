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
      default:
        return ThemeMode.system;
    }
  }

  String _getStringFromThemeMode(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.light:
        return 'light';
      default:
        return 'system';
    }
  }

  ThemeData get currentTheme {
    return _themeMode == ThemeMode.dark
        ? AppTheme.getDarkTheme()
        : AppTheme.getLightTheme();
  }

  // Thèmes pour l'application
  ThemeData getLightTheme() {
    return AppTheme.getLightTheme();
  }

  ThemeData getDarkTheme() {
    return AppTheme.getDarkTheme();
  }
}
