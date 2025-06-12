import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/gestionnaire_dashboard/gestionnaire_dashboard_actions.dart';

void main() {
  group('GestionnaireDashboardActions Widget Tests', () {
    late bool addPlaceCalled;
    late bool moderateCalled;
    late bool viewReportsCalled;
    late bool settingsCalled;

    setUp(() {
      addPlaceCalled = false;
      moderateCalled = false;
      viewReportsCalled = false;
      settingsCalled = false;
    });

    testWidgets('should render all action buttons', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardActions(
              onAddPlace: () => addPlaceCalled = true,
              onModerate: () => moderateCalled = true,
              onViewReports: () => viewReportsCalled = true,
              onSettings: () => settingsCalled = true,
            ),
          ),
        ),
      );

      // Verify section title
      expect(find.text('Actions rapides'), findsOneWidget);

      // Verify button labels
      expect(find.text('Ajouter un lieu'), findsOneWidget);
      expect(find.text('Modérer'), findsOneWidget);
      expect(find.text('Voir les signalements'), findsOneWidget);
      expect(find.text('Paramètres'), findsOneWidget);

      // Verify icons
      expect(find.byIcon(Icons.add_location), findsOneWidget);
      expect(find.byIcon(Icons.manage_search), findsOneWidget);
      expect(find.byIcon(Icons.report_outlined), findsOneWidget);
      expect(find.byIcon(Icons.settings), findsOneWidget);
    });

    testWidgets('should call callbacks when buttons are tapped', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardActions(
              onAddPlace: () => addPlaceCalled = true,
              onModerate: () => moderateCalled = true,
              onViewReports: () => viewReportsCalled = true,
              onSettings: () => settingsCalled = true,
            ),
          ),
        ),
      );

      // Tap each button and verify callback is called
      await tester.tap(find.text('Ajouter un lieu'));
      expect(addPlaceCalled, isTrue);

      await tester.tap(find.text('Modérer'));
      expect(moderateCalled, isTrue);

      await tester.tap(find.text('Voir les signalements'));
      expect(viewReportsCalled, isTrue);

      await tester.tap(find.text('Paramètres'));
      expect(settingsCalled, isTrue);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardActions(
              onAddPlace: () {},
              onModerate: () {},
              onViewReports: () {},
              onSettings: () {},
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify layout hierarchy
      expect(find.byType(Row), findsNWidgets(2)); // Two rows of action buttons
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(InkWell), findsNWidgets(4)); // Four clickable buttons
    });

    testWidgets('should highlight moderate button', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardActions(
              onAddPlace: () {},
              onModerate: () {},
              onViewReports: () {},
              onSettings: () {},
            ),
          ),
        ),
      );

      // Find container with highlight color
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

    testWidgets('buttons should have correct styling', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GestionnaireDashboardActions(
              onAddPlace: () {},
              onModerate: () {},
              onViewReports: () {},
              onSettings: () {},
            ),
          ),
        ),
      );

      // Verify non-highlighted button styling
      final normalButton = tester.widget<Container>(
        find
            .byWidgetPredicate(
              (widget) =>
                  widget is Container &&
                  widget.decoration is BoxDecoration &&
                  (widget.decoration as BoxDecoration).color ==
                      const Color(0xFFF5F5F5),
            )
            .first,
      );

      final BoxDecoration normalDecoration =
          normalButton.decoration as BoxDecoration;
      expect(normalDecoration.borderRadius, equals(BorderRadius.circular(12)));

      // Verify text styling
      final buttonText = tester.widget<Text>(find.text('Ajouter un lieu'));
      expect(buttonText.style?.fontSize, equals(14));
      expect(buttonText.style?.fontWeight, equals(FontWeight.w500));
    });
  });
}
