import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/navigation_service.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/services/locale_service.dart';
import 'package:citypulse/main.dart';

class AppInitService {
  static Future<Widget> initialize() async {
    try {
      // Create service instances
      final navigationService = NavigationService();
      final themeService = ThemeService();
      final localeService = LocaleService();

      // Initialize locale service
      await localeService.initLocale();

      // Create the provider tree
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeService>.value(value: themeService),
          ChangeNotifierProvider<LocaleService>.value(value: localeService),
          Provider<NavigationService>.value(value: navigationService),
        ],
        child: const MyApp(),
      );
    } catch (e, stackTrace) {
      debugPrint('Error initializing services: $e\n$stackTrace');
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                  'Error initializing app: $e',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
