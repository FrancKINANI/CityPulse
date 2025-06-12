import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore_details/explore_details_info.dart';

void main() {
  group('ExploreDetailsInfo Widget Tests', () {
    const testDescription = 'Test description';
    const testHours = '9:00 AM - 5:00 PM';
    const testPhone = '+1 234 567 890';
    const testWebsite = 'www.example.com';

    testWidgets('should render all info sections correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsInfo(
              description: testDescription,
              hours: testHours,
              phone: testPhone,
              website: testWebsite,
            ),
          ),
        ),
      );

      // Verify section titles are present
      expect(find.text('Description'), findsOneWidget);
      expect(find.text('Hours'), findsOneWidget);
      expect(find.text('Phone'), findsOneWidget);
      expect(find.text('Website'), findsOneWidget);

      // Verify content is present
      expect(find.text(testDescription), findsOneWidget);
      expect(find.text(testHours), findsOneWidget);
      expect(find.text(testPhone), findsOneWidget);
      expect(find.text(testWebsite), findsOneWidget);

      // Verify icons are present
      expect(find.byIcon(Icons.access_time), findsOneWidget);
      expect(find.byIcon(Icons.phone), findsOneWidget);
      expect(find.byIcon(Icons.language), findsOneWidget);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsInfo(
              description: testDescription,
              hours: testHours,
              phone: testPhone,
              website: testWebsite,
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify layout hierarchy
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(Row), findsNWidgets(3)); // One row for each info item
      expect(find.byType(SizedBox), findsWidgets);
    });

    testWidgets('should handle long text properly', (
      WidgetTester tester,
    ) async {
      const longDescription =
          'This is a very long description that should wrap properly and not overflow the container. ' *
          3;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsInfo(
              description: longDescription,
              hours: testHours,
              phone: testPhone,
              website: testWebsite,
            ),
          ),
        ),
      );

      // Verify that the text is rendered without overflow errors
      expect(tester.takeException(), isNull);
    });

    testWidgets('should apply correct text styles', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsInfo(
              description: testDescription,
              hours: testHours,
              phone: testPhone,
              website: testWebsite,
            ),
          ),
        ),
      );

      // Verify description title style
      final descriptionTitleFinder = find.text('Description');
      final Text descriptionTitleWidget = tester.widget(descriptionTitleFinder);
      expect(descriptionTitleWidget.style?.fontSize, equals(18));
      expect(descriptionTitleWidget.style?.fontWeight, equals(FontWeight.bold));
      expect(
        descriptionTitleWidget.style?.color,
        equals(const Color(0xFF112116)),
      );

      // Verify description content style
      final descriptionFinder = find.text(testDescription);
      final Text descriptionWidget = tester.widget(descriptionFinder);
      expect(descriptionWidget.style?.fontSize, equals(14));
      expect(descriptionWidget.style?.color, equals(const Color(0xFF4A4A4A)));
    });
  });
}
