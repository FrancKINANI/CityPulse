import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/settings/screens/settings_preferences.dart';

void main() {
  group('SettingsPreferences Widget Tests', () {
    const testLanguage = 'Français';
    const testTheme = 'Système';

    testWidgets('should render all preference options', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsPreferences(
              language: testLanguage,
              theme: testTheme,
              locationEnabled: true,
              autoPlayVideos: false,
              onLanguageChanged: (_) {},
              onThemeChanged: (_) {},
              onLocationChanged: (_) {},
              onAutoPlayVideosChanged: (_) {},
            ),
          ),
        ),
      );

      // Verify section title
      expect(find.text('Préférences'), findsOneWidget);

      // Verify all setting titles
      expect(find.text('Langue'), findsOneWidget);
      expect(find.text('Thème'), findsOneWidget);
      expect(find.text('Localisation'), findsOneWidget);
      expect(find.text('Lecture automatique'), findsOneWidget);

      // Verify dropdowns and switches
      expect(find.byType(DropdownButton), findsNWidgets(2));
      expect(find.byType(Switch), findsNWidgets(2));
    });

    testWidgets('dropdowns should show correct initial values', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsPreferences(
              language: testLanguage,
              theme: testTheme,
              locationEnabled: true,
              autoPlayVideos: false,
              onLanguageChanged: (_) {},
              onThemeChanged: (_) {},
              onLocationChanged: (_) {},
              onAutoPlayVideosChanged: (_) {},
            ),
          ),
        ),
      );

      // Verify language dropdown value
      expect(find.text(testLanguage), findsOneWidget);

      // Verify theme dropdown value
      expect(find.text(testTheme), findsOneWidget);
    });

    testWidgets('switches should reflect initial values', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsPreferences(
              language: testLanguage,
              theme: testTheme,
              locationEnabled: true,
              autoPlayVideos: false,
              onLanguageChanged: (_) {},
              onThemeChanged: (_) {},
              onLocationChanged: (_) {},
              onAutoPlayVideosChanged: (_) {},
            ),
          ),
        ),
      );

      final switches = tester.widgetList<Switch>(find.byType(Switch));
      expect(switches.elementAt(0).value, isTrue); // locationEnabled
      expect(switches.elementAt(1).value, isFalse); // autoPlayVideos
    });

    testWidgets('should call callbacks when values change', (
      WidgetTester tester,
    ) async {
      String selectedLanguage = testLanguage;
      String selectedTheme = testTheme;
      bool locationEnabled = true;
      bool autoPlayVideos = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsPreferences(
              language: selectedLanguage,
              theme: selectedTheme,
              locationEnabled: locationEnabled,
              autoPlayVideos: autoPlayVideos,
              onLanguageChanged: (value) => selectedLanguage = value,
              onThemeChanged: (value) => selectedTheme = value,
              onLocationChanged: (value) => locationEnabled = value,
              onAutoPlayVideosChanged: (value) => autoPlayVideos = value,
            ),
          ),
        ),
      );

      // Test language dropdown
      await tester.tap(find.text('Langue'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('English').last);
      await tester.pumpAndSettle();
      expect(selectedLanguage, equals('English'));

      // Test theme dropdown
      await tester.tap(find.text('Thème'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Sombre').last);
      await tester.pumpAndSettle();
      expect(selectedTheme, equals('Sombre'));

      // Test switches
      final switches = tester.widgetList<Switch>(find.byType(Switch));

      await tester.tap(find.byWidget(switches.elementAt(0)));
      expect(locationEnabled, isFalse);

      await tester.tap(find.byWidget(switches.elementAt(1)));
      expect(autoPlayVideos, isTrue);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsPreferences(
              language: testLanguage,
              theme: testTheme,
              locationEnabled: true,
              autoPlayVideos: false,
              onLanguageChanged: (_) {},
              onThemeChanged: (_) {},
              onLocationChanged: (_) {},
              onAutoPlayVideosChanged: (_) {},
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify layout hierarchy
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(Row), findsWidgets);
      expect(find.byType(Divider), findsNWidgets(3));

      // Verify proper spacing
      expect(tester.getRect(find.byType(Padding).first).height, greaterThan(0));
    });
  });
}
