import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/explore/widgets/explore_header.dart';

void main() {
  group('ExploreHeader Widget Tests', () {
    testWidgets('should render search bar and icon', (
      WidgetTester tester,
    ) async {
      String searchValue = '';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreHeader(
              value: searchValue,
              onChanged: (value) {
                searchValue = value;
              },
            ),
          ),
        ),
      );

      // Verify that the search container is rendered
      expect(find.byType(Container), findsWidgets);

      // Verify that the search input exists
      expect(find.byType(TextFormField), findsOneWidget);

      // Verify the background color
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(const Color(0xFF112116)));
    });

    testWidgets('should handle text input', (WidgetTester tester) async {
      String searchValue = '';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreHeader(
              value: searchValue,
              onChanged: (value) {
                searchValue = value;
              },
            ),
          ),
        ),
      );

      // Enter text in the search field
      await tester.enterText(find.byType(TextFormField), 'test search');

      // Verify that the callback was called with the correct value
      expect(searchValue, equals('test search'));
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreHeader(value: '', onChanged: (value) {}),
          ),
        ),
      );

      // Verify that the widget has proper layout structure
      expect(find.byType(Row), findsOneWidget);
      expect(find.byType(Container), findsWidgets);
      expect(find.byType(Expanded), findsOneWidget);
    });
  });
}
