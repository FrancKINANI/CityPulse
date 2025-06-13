import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/settings/screens/settings_screen.dart';
import 'package:citypulse/features/settings/widgets/settings_header.dart';
import 'package:citypulse/features/settings/widgets/settings_notifications.dart';
import 'package:citypulse/features/settings/widgets/settings_preferences.dart';
import 'package:citypulse/features/settings/widgets/settings_about.dart';

void main() {
  group('SettingsScreen Widget Tests', () {
    const testUserName = 'John Doe';
    const testUserEmail = 'john@example.com';
    const testUserAvatar = 'https://example.com/avatar.jpg';

    testWidgets('should render all settings sections', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SettingsScreen(
            userName: testUserName,
            userEmail: testUserEmail,
            userAvatar: testUserAvatar,
          ),
        ),
      );

      // Verify all main components are present
      expect(find.byType(SettingsHeader), findsOneWidget);
      expect(find.byType(SettingsNotifications), findsOneWidget);
      expect(find.byType(SettingsPreferences), findsOneWidget);
      expect(find.byType(SettingsAbout), findsOneWidget);
    });

    testWidgets('should pass correct data to header', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SettingsScreen(
            userName: testUserName,
            userEmail: testUserEmail,
            userAvatar: testUserAvatar,
          ),
        ),
      );

      // Verify user information is displayed
      expect(find.text(testUserName), findsOneWidget);
      expect(find.text(testUserEmail), findsOneWidget);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SettingsScreen(
            userName: testUserName,
            userEmail: testUserEmail,
            userAvatar: testUserAvatar,
          ),
        ),
      );

      // Verify basic scaffold structure
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(SafeArea), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
      expect(find.byType(Column), findsWidgets);

      // Verify spacing between sections
      expect(
        tester
            .widgetList<SizedBox>(
              find.byWidgetPredicate(
                (widget) => widget is SizedBox && widget.height == 8,
              ),
            )
            .length,
        equals(2),
      );
    });

    testWidgets('should handle scrolling', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SettingsScreen(
            userName: testUserName,
            userEmail: testUserEmail,
            userAvatar: testUserAvatar,
          ),
        ),
      );

      // Get initial position of the about section
      final aboutFinder = find.byType(SettingsAbout);
      final initialPosition = tester.getTopLeft(aboutFinder);

      // Scroll down
      await tester.drag(
        find.byType(SingleChildScrollView),
        const Offset(0, -500),
      );
      await tester.pump();

      // Verify that the about section has moved up
      final newPosition = tester.getTopLeft(aboutFinder);
      expect(newPosition.dy, lessThan(initialPosition.dy));
    });

    testWidgets('should render back button in header', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SettingsScreen(
            userName: testUserName,
            userEmail: testUserEmail,
            userAvatar: testUserAvatar,
          ),
        ),
      );

      // Verify back button is present
      expect(find.byType(BackButton), findsOneWidget);
    });

    testWidgets('should render edit profile button', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SettingsScreen(
            userName: testUserName,
            userEmail: testUserEmail,
            userAvatar: testUserAvatar,
          ),
        ),
      );

      // Verify edit button is present
      expect(find.byIcon(Icons.edit), findsOneWidget);
    });
  });
}
