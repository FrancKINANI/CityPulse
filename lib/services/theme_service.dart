import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/app_config.dart';
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
      _themeMode = brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
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
  
  // Thèmes pour l'application
  ThemeData getLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppTheme.primaryColor,
      scaffoldBackgroundColor: AppTheme.backgroundColor,
      cardColor: AppTheme.cardColor,
      colorScheme: ColorScheme.light(
        primary: AppTheme.primaryColor,
        secondary: AppTheme.secondaryColor,
        background: AppTheme.backgroundColor,
        error: AppTheme.errorColor,
      ),
      textTheme: TextTheme(
        headlineLarge: AppConfig.headingStyle.copyWith(color: AppTheme.textPrimaryColor),
        headlineMedium: AppConfig.subheadingStyle.copyWith(color: AppTheme.textPrimaryColor),
        bodyLarge: AppConfig.bodyStyle.copyWith(color: AppTheme.textPrimaryColor),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: AppTheme.textPrimaryColor,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.buttonColor,
          foregroundColor: AppTheme.textPrimaryColor,
        ),
      ),
      useMaterial3: true,
    );
  }
  
  ThemeData getDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppTheme.darkPrimaryColor,
      scaffoldBackgroundColor: AppTheme.darkBackgroundColor,
      cardColor: AppTheme.darkCardColor,
      colorScheme: ColorScheme.dark(
        primary: AppTheme.darkPrimaryColor,
        secondary: AppTheme.darkSecondaryColor,
        background: AppTheme.darkBackgroundColor,
        error: AppTheme.errorColor,
      ),
      textTheme: TextTheme(
        headlineLarge: AppConfig.headingStyle.copyWith(color: AppTheme.darkTextPrimaryColor),
        headlineMedium: AppConfig.subheadingStyle.copyWith(color: AppTheme.darkTextPrimaryColor),
        bodyLarge: AppConfig.bodyStyle.copyWith(color: AppTheme.darkTextPrimaryColor),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppTheme.darkPrimaryColor,
        foregroundColor: AppTheme.darkTextPrimaryColor,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.darkButtonColor,
          foregroundColor: AppTheme.darkTextPrimaryColor,
        ),
      ),
      useMaterial3: true,
    );
  }
}