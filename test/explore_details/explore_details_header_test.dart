import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore_details/explore_details_header.dart';

void main() {
  group('ExploreDetailsHeader Widget Tests', () {
    final testImageUrl = 'https://example.com/test.jpg';
    final testTitle = 'Test Location';
    final testLocation = 'Test Address';
    final testRating = '4.5';

    testWidgets('should render all components correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsHeader(
              imageUrl: testImageUrl,
              title: testTitle,
              location: testLocation,
              rating: testRating,
            ),
          ),
        ),
      );

      // Verify that the image is rendered
      expect(find.byType(Image), findsOneWidget);

      // Verify that the title is rendered with correct text
      expect(find.text(testTitle), findsOneWidget);

      // Verify that the location is rendered with correct text
      expect(find.text(testLocation), findsOneWidget);

      // Verify that the rating is rendered with correct text
      expect(find.text(testRating), findsOneWidget);

      // Verify that icons are present
      expect(find.byIcon(Icons.location_on), findsOneWidget);
      expect(find.byIcon(Icons.star), findsOneWidget);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsHeader(
              imageUrl: testImageUrl,
              title: testTitle,
              location: testLocation,
              rating: testRating,
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(const Color(0xFF112116)));

      // Verify layout hierarchy
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(Row), findsOneWidget);
      expect(find.byType(SizedBox), findsWidgets);
    });

    testWidgets('should apply correct text styles', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsHeader(
              imageUrl: testImageUrl,
              title: testTitle,
              location: testLocation,
              rating: testRating,
            ),
          ),
        ),
      );

      // Find title text widget and verify its style
      final titleFinder = find.text(testTitle);
      final Text titleWidget = tester.widget(titleFinder);
      expect(titleWidget.style?.color, equals(Colors.white));
      expect(titleWidget.style?.fontSize, equals(24));
      expect(titleWidget.style?.fontWeight, equals(FontWeight.bold));

      // Find location text widget and verify its style
      final locationFinder = find.text(testLocation);
      final Text locationWidget = tester.widget(locationFinder);
      expect(locationWidget.style?.color, equals(Colors.white));
      expect(locationWidget.style?.fontSize, equals(14));
    });
  });
}
