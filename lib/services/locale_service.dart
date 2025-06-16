import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:citypulse/l10n/app_localizations.dart';

class LocaleService extends ChangeNotifier {
  static const String _localeKey = 'app_locale';
  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  Locale? _locale;

  Locale get locale =>
      _locale ??
      const Locale('fr', 'FR'); // Français par défaut si pas de locale définie

  List<Locale> get supportedLocales => const [
    Locale('fr', 'FR'),
    Locale('en', 'US'),
  ];

  List<LocalizationsDelegate<dynamic>> get localizationsDelegates => const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  Locale? Function(Locale?, Iterable<Locale>)? get localeResolutionCallback =>
      (Locale? locale, Iterable<Locale> supportedLocales) {
        if (locale == null) {
          return this.locale;
        }
        
        // Check if the locale is supported
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }
        
        // If not supported, return default locale
        return this.locale;
      };

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
    await prefs.setString(
      _localeKey,
      '${newLocale.languageCode}_${newLocale.countryCode}',
    );

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

  Future<void> initLocale() async {
    await _loadLocale();
    _isInitialized = true;
    notifyListeners();
  }

  Locale getSystemLocale(BuildContext context) {
    return Localizations.localeOf(context);
  }

  Future<void> resetToSystemLocale(BuildContext context) async {
    final systemLocale = getSystemLocale(context);
    await setLocale(systemLocale);
  }

  List<Map<String, String>> getSupportedLanguages() {
    return supportedLocales
        .map(
          (locale) => {
            'code': locale.languageCode,
            'name': getLanguageName(locale),
          },
        )
        .toList();
  }
}
