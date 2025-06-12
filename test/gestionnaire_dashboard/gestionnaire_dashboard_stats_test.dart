import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/gestionnaire_dashboard/gestionnaire_dashboard_stats.dart';

void main() {
  group('GestionnaireDashboardStats Widget Tests', () {
    const testTotalPlaces = 150;
    const testTotalTours = 45;
    const testTotalUsers = 1200;
    const testPendingReviews = 23;

    testWidgets('should render all stat cards', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardStats(
              totalPlaces: testTotalPlaces,
              totalTours: testTotalTours,
              totalUsers: testTotalUsers,
              pendingReviews: testPendingReviews,
            ),
          ),
        ),
      );

      // Verify section title
      expect(find.text('Statistiques'), findsOneWidget);

      // Verify stat card titles
      expect(find.text('Lieux'), findsOneWidget);
      expect(find.text('Tours'), findsOneWidget);
      expect(find.text('Utilisateurs'), findsOneWidget);
      expect(find.text('À modérer'), findsOneWidget);

      // Verify stat values
      expect(find.text(testTotalPlaces.toString()), findsOneWidget);
      expect(find.text(testTotalTours.toString()), findsOneWidget);
      expect(find.text(testTotalUsers.toString()), findsOneWidget);
      expect(find.text(testPendingReviews.toString()), findsOneWidget);
    });

    testWidgets('should display all icons', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardStats(
              totalPlaces: testTotalPlaces,
              totalTours: testTotalTours,
              totalUsers: testTotalUsers,
              pendingReviews: testPendingReviews,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.place), findsOneWidget);
      expect(find.byIcon(Icons.map), findsOneWidget);
      expect(find.byIcon(Icons.people), findsOneWidget);
      expect(find.byIcon(Icons.rate_review), findsOneWidget);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardStats(
              totalPlaces: testTotalPlaces,
              totalTours: testTotalTours,
              totalUsers: testTotalUsers,
              pendingReviews: testPendingReviews,
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify layout hierarchy
      expect(find.byType(Row), findsNWidgets(2)); // Two rows of stat cards
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(Expanded), findsNWidgets(4)); // Four stat cards
    });

    testWidgets('should highlight pending reviews card', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardStats(
              totalPlaces: testTotalPlaces,
              totalTours: testTotalTours,
              totalUsers: testTotalUsers,
              pendingReviews: testPendingReviews,
            ),
          ),
        ),
      );

      // Find containers with highlight color
      final highlightedContainers = tester.widgetList<Container>(
        find.byWidgetPredicate(
          (widget) =>
              widget is Container &&
              widget.decoration is BoxDecoration &&
              (widget.decoration as BoxDecoration).color ==
                  const Color(0xFF1E2D22),
        ),
      );

      // Verify only one container is highlighted
      expect(highlightedContainers.length, equals(1));
    });

    testWidgets('should handle zero values', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardStats(
              totalPlaces: 0,
              totalTours: 0,
              totalUsers: 0,
              pendingReviews: 0,
            ),
          ),
        ),
      );

      // Verify that zero values are displayed correctly
      expect(find.text('0'), findsNWidgets(4));
    });
  });
}
