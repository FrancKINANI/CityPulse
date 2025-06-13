import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/gestionnaire_dashboard/widgets/gestionnaire_dashboard_header.dart';

void main() {
  group('GestionnaireDashboardHeader Widget Tests', () {
    const testUserName = 'John Doe';
    const testUserRole = 'Gestionnaire';
    const testUserAvatar = 'https://example.com/avatar.jpg';
    const testPendingItems = 5;

    testWidgets('should render user information correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardHeader(
              userName: testUserName,
              userRole: testUserRole,
              userAvatar: testUserAvatar,
              pendingItems: testPendingItems,
            ),
          ),
        ),
      );

      // Verify user information is displayed
      expect(find.text(testUserName), findsOneWidget);
      expect(find.text(testUserRole), findsOneWidget);
      expect(find.text(testPendingItems.toString()), findsOneWidget);

      // Verify avatar is present
      expect(find.byType(Image), findsOneWidget);

      // Verify notification badge
      expect(find.byIcon(Icons.notifications_outlined), findsOneWidget);
    });

    testWidgets('should have proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardHeader(
              userName: testUserName,
              userRole: testUserRole,
              userAvatar: testUserAvatar,
              pendingItems: testPendingItems,
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(const Color(0xFF141E16)));

      // Verify layout hierarchy
      expect(find.byType(Row), findsWidgets);
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(ClipRRect), findsOneWidget);
    });

    testWidgets('should display pending items message', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardHeader(
              userName: testUserName,
              userRole: testUserRole,
              userAvatar: testUserAvatar,
              pendingItems: testPendingItems,
            ),
          ),
        ),
      );

      // Verify info message
      expect(
        find.text(
          'Vous avez $testPendingItems éléments en attente de modération',
        ),
        findsOneWidget,
      );

      // Verify info icon
      expect(find.byIcon(Icons.info_outline), findsOneWidget);
    });

    testWidgets('should apply correct text styles', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardHeader(
              userName: testUserName,
              userRole: testUserRole,
              userAvatar: testUserAvatar,
              pendingItems: testPendingItems,
            ),
          ),
        ),
      );

      // Verify username text style
      final userNameText = tester.widget<Text>(find.text(testUserName));
      expect(userNameText.style?.color, equals(Colors.white));
      expect(userNameText.style?.fontSize, equals(18));
      expect(userNameText.style?.fontWeight, equals(FontWeight.bold));

      // Verify user role text style
      final userRoleText = tester.widget<Text>(find.text(testUserRole));
      expect(userRoleText.style?.color, equals(Colors.white70));
      expect(userRoleText.style?.fontSize, equals(14));
    });
  });
}
