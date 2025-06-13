import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/gestionnaire_dashboard/screens/gestionnaire_dashboard_screen.dart';
import 'package:citypulse/features/gestionnaire_dashboard/widgets/gestionnaire_dashboard_header.dart';
import 'package:citypulse/features/gestionnaire_dashboard/widgets/gestionnaire_dashboard_stats.dart';
import 'package:citypulse/features/gestionnaire_dashboard/widgets/gestionnaire_dashboard_actions.dart';
import 'package:citypulse/features/gestionnaire_dashboard/widgets/gestionnaire_dashboard_list.dart';

void main() {
  group('GestionnaireDashboardScreen Widget Tests', () {
    final testItems = [
      ModificationItem(
        id: '1',
        title: 'Test Item',
        type: 'Test Type',
        status: 'En attente',
        date: DateTime.now(),
        userAvatar: 'https://example.com/avatar.jpg',
        userName: 'Test User',
      ),
    ];

    testWidgets('should render all dashboard components', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: GestionnaireDashboardScreen(
            userName: 'Test User',
            userRole: 'Gestionnaire',
            userAvatar: 'https://example.com/avatar.jpg',
            pendingItems: 5,
            itemsToModerate: testItems,
          ),
        ),
      );

      // Verify all main components are present
      expect(find.byType(GestionnaireDashboardHeader), findsOneWidget);
      expect(find.byType(GestionnaireDashboardStats), findsOneWidget);
      expect(find.byType(GestionnaireDashboardActions), findsOneWidget);
      expect(find.byType(GestionnaireDashboardList), findsOneWidget);
    });

    testWidgets('should pass correct data to components', (
      WidgetTester tester,
    ) async {
      const testUserName = 'Test User';
      const testUserRole = 'Gestionnaire';
      const testUserAvatar = 'https://example.com/avatar.jpg';
      const testPendingItems = 5;

      await tester.pumpWidget(
        MaterialApp(
          home: GestionnaireDashboardScreen(
            userName: testUserName,
            userRole: testUserRole,
            userAvatar: testUserAvatar,
            pendingItems: testPendingItems,
            itemsToModerate: testItems,
          ),
        ),
      );

      // Verify header data
      expect(find.text(testUserName), findsOneWidget);
      expect(find.text(testUserRole), findsOneWidget);
      expect(find.text(testPendingItems.toString()), findsWidgets);

      // Verify list items
      expect(find.text(testItems[0].title), findsOneWidget);
      expect(find.text(testItems[0].type), findsOneWidget);
      expect(find.text(testItems[0].status), findsOneWidget);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: GestionnaireDashboardScreen(
            userName: 'Test User',
            userRole: 'Gestionnaire',
            userAvatar: 'https://example.com/avatar.jpg',
            pendingItems: 5,
            itemsToModerate: testItems,
          ),
        ),
      );

      // Verify basic scaffold structure
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(SafeArea), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
      expect(find.byType(Column), findsWidgets);
    });

    testWidgets('should handle scrolling', (WidgetTester tester) async {
      // Create a list with many items to ensure scrolling
      final manyItems = List.generate(
        20,
        (index) => ModificationItem(
          id: index.toString(),
          title: 'Item $index',
          type: 'Type',
          status: 'En attente',
          date: DateTime.now(),
          userAvatar: 'https://example.com/avatar.jpg',
          userName: 'User $index',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: GestionnaireDashboardScreen(
            userName: 'Test User',
            userRole: 'Gestionnaire',
            userAvatar: 'https://example.com/avatar.jpg',
            pendingItems: 5,
            itemsToModerate: manyItems,
          ),
        ),
      );

      // Get initial position of the last item
      final lastItemFinder = find.text('Item ${manyItems.length - 1}');
      expect(lastItemFinder, findsOneWidget);

      // Initial position should be out of view
      expect(
        tester.getBottomRight(lastItemFinder).dy > 600,
        isTrue,
        reason: 'Last item should be below the fold initially',
      );

      // Scroll down
      await tester.drag(
        find.byType(SingleChildScrollView),
        const Offset(0.0, -500.0),
      );
      await tester.pump();

      // More items should be visible now
      expect(
        find.byType(ModificationItem),
        findsWidgets,
        reason: 'Should show more items after scrolling',
      );
    });
  });
}
