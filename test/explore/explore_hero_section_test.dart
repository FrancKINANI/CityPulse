import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore/ExploreHeroSection.dart';

void main() {
  group('ExploreHeroSection Widget Tests', () {
    final testImageUrl = 'https://example.com/test.jpg';
    final testTitle = 'Test Title';
    final testDescription = 'Test Description';
    final testDuration = '5 min';

    testWidgets('should render all components correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreHeroSection(
              imageUrl: testImageUrl,
              title: testTitle,
              description: testDescription,
              duration: testDuration,
            ),
          ),
        ),
      );

      // Verify that the image is rendered
      expect(find.byType(Image), findsOneWidget);

      // Verify that the title is rendered with correct text
      expect(find.text(testTitle), findsOneWidget);

      // Verify that the description is rendered with correct text
      expect(find.text(testDescription), findsOneWidget);

      // Verify that the duration is rendered with correct text
      expect(find.text(testDuration), findsOneWidget);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreHeroSection(
              imageUrl: testImageUrl,
              title: testTitle,
              description: testDescription,
              duration: testDuration,
            ),
          ),
        ),
      );

      // Verify that the widget has proper layout structure
      expect(find.byType(Container), findsWidgets);
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(ClipRRect), findsOneWidget);

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.constraints?.maxWidth, equals(double.infinity));
    });

    testWidgets('should apply correct styles', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreHeroSection(
              imageUrl: testImageUrl,
              title: testTitle,
              description: testDescription,
              duration: testDuration,
            ),
          ),
        ),
      );

      // Find title text widget and verify its style
      final titleFinder = find.text(testTitle);
      final Text titleWidget = tester.widget(titleFinder);
      expect(titleWidget.style?.color, equals(const Color(0xFFFFFFFF)));
      expect(titleWidget.style?.fontSize, equals(18));
      expect(titleWidget.style?.fontWeight, equals(FontWeight.bold));
    });
  });
}
