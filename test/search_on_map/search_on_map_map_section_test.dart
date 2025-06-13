import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/search_on_map/widgets/search_on_map_map_section.dart';

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
