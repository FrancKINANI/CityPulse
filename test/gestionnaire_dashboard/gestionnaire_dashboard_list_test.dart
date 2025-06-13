import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/gestionnaire_dashboard/screens/gestionnaire_dashboard_list.dart';

void main() {
  group('GestionnaireDashboardList Widget Tests', () {
    final testItems = [
      ModificationItem(
        id: '1',
        title: 'Tour Eiffel',
        type: 'Lieu',
        status: 'En attente',
        date: DateTime(2024, 1, 1),
        userAvatar: 'https://example.com/avatar1.jpg',
        userName: 'John Doe',
      ),
      ModificationItem(
        id: '2',
        title: 'Musée du Louvre',
        type: 'Lieu',
        status: 'Approuvé',
        date: DateTime(2024, 1, 2),
        userAvatar: 'https://example.com/avatar2.jpg',
        userName: 'Jane Smith',
      ),
    ];

    testWidgets('should render list title and count', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardList(
              items: testItems,
              onItemTap: (_) {},
            ),
          ),
        ),
      );

      // Verify section title
      expect(find.text('À modérer'), findsOneWidget);
      expect(find.text('${testItems.length} éléments'), findsOneWidget);
    });

    testWidgets('should render all list items', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardList(
              items: testItems,
              onItemTap: (_) {},
            ),
          ),
        ),
      );

      // Verify items are rendered
      for (final item in testItems) {
        expect(find.text(item.title), findsOneWidget);
        expect(find.text(item.type), findsOneWidget);
        expect(find.text(item.status), findsOneWidget);
        expect(find.text(item.userName), findsOneWidget);
        expect(
          find.text('${item.date.day}/${item.date.month}/${item.date.year}'),
          findsOneWidget,
        );
      }
    });

    testWidgets('should call onItemTap when item is tapped', (
      WidgetTester tester,
    ) async {
      String? tappedId;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardList(
              items: testItems,
              onItemTap: (id) => tappedId = id,
            ),
          ),
        ),
      );

      // Tap first item
      await tester.tap(find.text(testItems[0].title));
      expect(tappedId, equals(testItems[0].id));
    });

    testWidgets('should render different status badges with correct colors', (
      WidgetTester tester,
    ) async {
      final items = [
        ModificationItem(
          id: '1',
          title: 'Item 1',
          type: 'Type',
          status: 'En attente',
          date: DateTime.now(),
          userAvatar: 'https://example.com/avatar.jpg',
          userName: 'User',
        ),
        ModificationItem(
          id: '2',
          title: 'Item 2',
          type: 'Type',
          status: 'Approuvé',
          date: DateTime.now(),
          userAvatar: 'https://example.com/avatar.jpg',
          userName: 'User',
        ),
        ModificationItem(
          id: '3',
          title: 'Item 3',
          type: 'Type',
          status: 'Rejeté',
          date: DateTime.now(),
          userAvatar: 'https://example.com/avatar.jpg',
          userName: 'User',
        ),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardList(items: items, onItemTap: (_) {}),
          ),
        ),
      );

      // Find all status badges
      final containers = tester.widgetList<Container>(
        find.byWidgetPredicate(
          (widget) =>
              widget is Container &&
              widget.decoration is BoxDecoration &&
              (widget.decoration as BoxDecoration).color != null,
        ),
      );

      // Verify that we have different colors for different statuses
      final colors = containers
          .map((container) => (container.decoration as BoxDecoration).color)
          .toSet();
      expect(colors.length, greaterThan(1));
    });

    testWidgets('should render user avatars', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardList(
              items: testItems,
              onItemTap: (_) {},
            ),
          ),
        ),
      );

      // Verify avatars are rendered
      expect(find.byType(Image), findsNWidgets(testItems.length));

      // Verify avatar containers have correct dimensions
      final avatarContainers = tester.widgetList<Container>(
        find.byWidgetPredicate(
          (widget) =>
              widget is Container && widget.width == 40 && widget.height == 40,
        ),
      );
      expect(avatarContainers.length, equals(testItems.length));
    });
  });
}
