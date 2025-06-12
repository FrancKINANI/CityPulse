import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore_details/explore_details_actions.dart';

void main() {
  group('ExploreDetailsActions Widget Tests', () {
    late bool addToTourCalled;
    late bool shareCalled;
    late bool calendarCalled;

    setUp(() {
      addToTourCalled = false;
      shareCalled = false;
      calendarCalled = false;
    });

    testWidgets('should render all action buttons', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsActions(
              onAddToTour: () => addToTourCalled = true,
              onShare: () => shareCalled = true,
              onCalendar: () => calendarCalled = true,
            ),
          ),
        ),
      );

      // Verify all buttons are present
      expect(find.text('Add to Tour'), findsOneWidget);
      expect(find.text('Share'), findsOneWidget);
      expect(find.text('Calendar'), findsOneWidget);

      // Verify all icons are present
      expect(find.byIcon(Icons.add_circle_outline), findsOneWidget);
      expect(find.byIcon(Icons.share), findsOneWidget);
      expect(find.byIcon(Icons.calendar_today), findsOneWidget);
    });

    testWidgets('should call callbacks when buttons are pressed', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsActions(
              onAddToTour: () => addToTourCalled = true,
              onShare: () => shareCalled = true,
              onCalendar: () => calendarCalled = true,
            ),
          ),
        ),
      );

      // Test Add to Tour button
      await tester.tap(find.text('Add to Tour'));
      expect(addToTourCalled, isTrue);
      expect(shareCalled, isFalse);
      expect(calendarCalled, isFalse);

      // Test Share button
      await tester.tap(find.text('Share'));
      expect(shareCalled, isTrue);
      expect(calendarCalled, isFalse);

      // Test Calendar button
      await tester.tap(find.text('Calendar'));
      expect(calendarCalled, isTrue);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsActions(
              onAddToTour: () {},
              onShare: () {},
              onCalendar: () {},
            ),
          ),
        ),
      );

      // Verify container has proper decoration
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.decoration, isNotNull);

      // Verify layout structure
      expect(find.byType(Row), findsOneWidget);
      expect(find.byType(Column), findsNWidgets(3)); // One for each button
      expect(find.byType(ElevatedButton), findsNWidgets(3));
    });

    testWidgets('buttons should have correct styling', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsActions(
              onAddToTour: () {},
              onShare: () {},
              onCalendar: () {},
            ),
          ),
        ),
      );

      // Find all buttons
      final buttons = tester.widgetList<ElevatedButton>(
        find.byType(ElevatedButton),
      );

      for (final button in buttons) {
        final buttonStyle = button.style as ButtonStyle;
        expect(
          buttonStyle.backgroundColor?.resolve({}),
          equals(const Color(0xFF112116)),
        );

        // Verify button shape
        final shape = buttonStyle.shape?.resolve({}) as RoundedRectangleBorder;
        expect(shape.borderRadius, equals(BorderRadius.circular(8)));
      }

      // Verify text styling
      final texts = tester.widgetList<Text>(find.byType(Text));
      for (final text in texts) {
        expect(text.style?.fontSize, equals(12));
        expect(text.style?.color, equals(Colors.white));
      }
    });
  });
}
