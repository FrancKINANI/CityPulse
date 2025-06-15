import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class LocaleService extends ChangeNotifier {
  static const String _localeKey = 'app_locale';

  Locale _locale = const Locale('fr', 'FR'); // Français par défaut

  Locale get locale => _locale;

  List<Locale> get supportedLocales => const [
    Locale('fr', 'FR'),
    Locale('en', 'US'),
  ];

  List<LocalizationsDelegate<dynamic>> get localizationsDelegates => const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLocale = prefs.getString(_localeKey);

    if (savedLocale != null) {
      final parts = savedLocale.split('_');
      if (parts.length == 2) {
        _locale = Locale(parts[0], parts[1]);
      }
    }

    notifyListeners();
  }

  Future<void> setLocale(Locale newLocale) async {
    if (_locale == newLocale) return;

    _locale = newLocale;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, '${newLocale.languageCode}_${newLocale.countryCode}');

    notifyListeners();
  }

  String getLanguageName(Locale locale) {
    switch (locale.languageCode) {
      case 'fr':
        return 'Français';
      case 'en':
        return 'English';
      default:
        return locale.languageCode;
    }
  }

  LocaleService() {
    _loadLocale();
  }
}
