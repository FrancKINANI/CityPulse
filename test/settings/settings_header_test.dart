import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/settings/settings_header.dart';

void main() {
  group('SettingsHeader Widget Tests', () {
    const testUserName = 'John Doe';
    const testUserEmail = 'john@example.com';
    const testUserAvatar = 'https://example.com/avatar.jpg';

    testWidgets('should render all components correctly', (
      WidgetTester tester,
    ) async {
      bool editProfileCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsHeader(
              userName: testUserName,
              userEmail: testUserEmail,
              userAvatar: testUserAvatar,
              onEditProfile: () => editProfileCalled = true,
            ),
          ),
        ),
      );

      // Verify title
      expect(find.text('Paramètres'), findsOneWidget);

      // Verify user information
      expect(find.text(testUserName), findsOneWidget);
      expect(find.text(testUserEmail), findsOneWidget);

      // Verify back button and edit button are present
      expect(find.byType(BackButton), findsOneWidget);
      expect(find.byIcon(Icons.edit), findsOneWidget);

      // Verify avatar is present
      expect(find.byType(Image), findsOneWidget);

      // Test edit button functionality
      await tester.tap(find.byIcon(Icons.edit));
      expect(editProfileCalled, isTrue);
    });

    testWidgets('should have proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsHeader(
              userName: testUserName,
              userEmail: testUserEmail,
              userAvatar: testUserAvatar,
              onEditProfile: () {},
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(const Color(0xFF141E16)));

      // Verify layout hierarchy
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(Row), findsWidgets);
      expect(find.byType(ClipRRect), findsOneWidget);
    });

    testWidgets('should apply correct text styles', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsHeader(
              userName: testUserName,
              userEmail: testUserEmail,
              userAvatar: testUserAvatar,
              onEditProfile: () {},
            ),
          ),
        ),
      );

      // Verify title text style
      final titleFinder = find.text('Paramètres');
      final Text titleWidget = tester.widget(titleFinder);
      expect(titleWidget.style?.fontSize, equals(20));
      expect(titleWidget.style?.fontWeight, equals(FontWeight.bold));
      expect(titleWidget.style?.color, equals(Colors.white));

      // Verify username text style
      final userNameFinder = find.text(testUserName);
      final Text userNameWidget = tester.widget(userNameFinder);
      expect(userNameWidget.style?.fontSize, equals(18));
      expect(userNameWidget.style?.fontWeight, equals(FontWeight.bold));
      expect(userNameWidget.style?.color, equals(Colors.white));

      // Verify email text style
      final userEmailFinder = find.text(testUserEmail);
      final Text userEmailWidget = tester.widget(userEmailFinder);
      expect(userEmailWidget.style?.fontSize, equals(14));
      expect(userEmailWidget.style?.color?.opacity, equals(0.7));
    });

    testWidgets('should handle taps on back button', (
      WidgetTester tester,
    ) async {
      final navigatorKey = GlobalKey<NavigatorState>();

      await tester.pumpWidget(
        MaterialApp(
          navigatorKey: navigatorKey,
          home: Scaffold(
            body: SettingsHeader(
              userName: testUserName,
              userEmail: testUserEmail,
              userAvatar: testUserAvatar,
              onEditProfile: () {},
            ),
          ),
        ),
      );

      // Tap back button
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      // Navigator should attempt to pop
      expect(navigatorKey.currentState?.canPop(), isFalse);
    });
  });
}
