import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/settings/settings_about.dart';

void main() {
  group('SettingsAbout Widget Tests', () {
    const testVersion = '1.0.0';

    testWidgets('should render all sections', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsAbout(
              appVersion: testVersion,
              onPrivacyPolicy: () {},
              onTermsOfService: () {},
              onLicenses: () {},
              onHelp: () {},
            ),
          ),
        ),
      );

      // Verify section title
      expect(find.text('À propos'), findsOneWidget);

      // Verify all action items are present
      expect(find.text('Version'), findsOneWidget);
      expect(find.text(testVersion), findsOneWidget);
      expect(find.text('Politique de confidentialité'), findsOneWidget);
      expect(find.text('Conditions d\'utilisation'), findsOneWidget);
      expect(find.text('Licences'), findsOneWidget);
      expect(find.text('Aide'), findsOneWidget);

      // Verify icons
      expect(find.byIcon(Icons.privacy_tip_outlined), findsOneWidget);
      expect(find.byIcon(Icons.description_outlined), findsOneWidget);
      expect(find.byIcon(Icons.file_copy_outlined), findsOneWidget);
      expect(find.byIcon(Icons.help_outline), findsOneWidget);
      expect(find.byIcon(Icons.arrow_forward_ios), findsNWidgets(4));
    });

    testWidgets('should call callbacks when items are tapped', (
      WidgetTester tester,
    ) async {
      bool privacyTapped = false;
      bool termsTapped = false;
      bool licensesTapped = false;
      bool helpTapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsAbout(
              appVersion: testVersion,
              onPrivacyPolicy: () => privacyTapped = true,
              onTermsOfService: () => termsTapped = true,
              onLicenses: () => licensesTapped = true,
              onHelp: () => helpTapped = true,
            ),
          ),
        ),
      );

      // Test each action item
      await tester.tap(find.text('Politique de confidentialité'));
      expect(privacyTapped, isTrue);

      await tester.tap(find.text('Conditions d\'utilisation'));
      expect(termsTapped, isTrue);

      await tester.tap(find.text('Licences'));
      expect(licensesTapped, isTrue);

      await tester.tap(find.text('Aide'));
      expect(helpTapped, isTrue);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsAbout(
              appVersion: testVersion,
              onPrivacyPolicy: () {},
              onTermsOfService: () {},
              onLicenses: () {},
              onHelp: () {},
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify layout hierarchy
      expect(find.byType(Column), findsOneWidget);
      expect(find.byType(Row), findsNWidgets(5)); // Version + 4 action rows
      expect(find.byType(Divider), findsNWidgets(4));
      expect(find.byType(InkWell), findsNWidgets(4));
    });

    testWidgets('should apply correct text styles', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsAbout(
              appVersion: testVersion,
              onPrivacyPolicy: () {},
              onTermsOfService: () {},
              onLicenses: () {},
              onHelp: () {},
            ),
          ),
        ),
      );

      // Verify section title style
      final titleFinder = find.text('À propos');
      final Text titleWidget = tester.widget(titleFinder);
      expect(titleWidget.style?.fontSize, equals(18));
      expect(titleWidget.style?.fontWeight, equals(FontWeight.bold));
      expect(titleWidget.style?.color, equals(const Color(0xFF141E16)));

      // Verify action item text style
      final actionItemFinder = find.text('Politique de confidentialité');
      final Text actionItemWidget = tester.widget(actionItemFinder);
      expect(actionItemWidget.style?.fontSize, equals(16));
      expect(actionItemWidget.style?.color, equals(const Color(0xFF141E16)));
    });

    testWidgets('should handle tap feedback', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsAbout(
              appVersion: testVersion,
              onPrivacyPolicy: () {},
              onTermsOfService: () {},
              onLicenses: () {},
              onHelp: () {},
            ),
          ),
        ),
      );

      // Find and verify InkWell widgets have proper tap feedback
      final inkwells = tester.widgetList<InkWell>(find.byType(InkWell));
      for (var inkwell in inkwells) {
        expect(inkwell.onTap, isNotNull);
      }
    });
  });
}
