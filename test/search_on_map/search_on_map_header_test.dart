import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/search_on_map/widgets/search_on_map_header.dart';

void main() {
  testWidgets('SearchOnMapHeader displays title and image', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SearchOnMapHeader(
            title: 'CityPulse',
            imageUrl: 'https://example.com/icon.png',
          ),
        ),
      ),
    );
    expect(find.text('CityPulse'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
