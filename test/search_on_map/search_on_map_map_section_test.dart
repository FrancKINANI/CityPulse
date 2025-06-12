import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/search_on_map/SearchOnMapMapSection.dart';

void main() {
  testWidgets('SearchOnMapMapSection displays map image', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SearchOnMapMapSection(imageUrl: 'https://example.com/map.png'),
        ),
      ),
    );
    expect(find.byType(Image), findsOneWidget);
  });
}
