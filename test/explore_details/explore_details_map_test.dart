import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore_details/explore_details_map.dart';

void main() {
  group('ExploreDetailsMap Widget Tests', () {
    const testLatitude = 48.8566;
    const testLongitude = 2.3522;
    const testAddress = '123 Test Street, Test City';

    testWidgets('should render map placeholder and location info', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsMap(
              latitude: testLatitude,
              longitude: testLongitude,
              address: testAddress,
            ),
          ),
        ),
      );

      // Verify section title is present
      expect(find.text('Location'), findsOneWidget);

      // Verify location information is displayed
      expect(
        find.text('Lat: $testLatitude, Long: $testLongitude'),
        findsOneWidget,
      );
      expect(find.text(testAddress), findsOneWidget);

      // Verify map placeholder components
      expect(find.byIcon(Icons.location_on), findsOneWidget);

      // Verify directions button is present
      expect(find.text('Get Directions'), findsOneWidget);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsMap(
              latitude: testLatitude,
              longitude: testLongitude,
              address: testAddress,
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify map container dimensions
      final mapContainer = tester.widget<Container>(
        find.byWidgetPredicate(
          (widget) => widget is Container && widget.height == 200,
        ),
      );
      expect(mapContainer, isNotNull);
      expect(mapContainer.height, equals(200));

      // Verify layout hierarchy
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('should handle long addresses', (WidgetTester tester) async {
      const longAddress =
          '123 Very Long Street Name, Very Long City Name, Very Long State Name, Very Long Country Name, 12345';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsMap(
              latitude: testLatitude,
              longitude: testLongitude,
              address: longAddress,
            ),
          ),
        ),
      );

      // Verify that the address is rendered without overflow errors
      expect(tester.takeException(), isNull);
      expect(find.text(longAddress), findsOneWidget);
    });

    testWidgets('directions button should be styled correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExploreDetailsMap(
              latitude: testLatitude,
              longitude: testLongitude,
              address: testAddress,
            ),
          ),
        ),
      );

      // Find and verify button styling
      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      final buttonStyle = button.style as ButtonStyle;

      expect(
        buttonStyle.backgroundColor?.resolve({}),
        equals(const Color(0xFF112116)),
      );

      final Text buttonText = tester.widget(find.text('Get Directions'));
      expect(buttonText.style?.fontSize, equals(16));
      expect(buttonText.style?.color, equals(Colors.white));
    });
  });
}
