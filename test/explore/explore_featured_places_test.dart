import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/explore/widgets/explore_featured_places.dart';

void main() {
  testWidgets('ExploreFeaturedPlaces displays featured places', (
    WidgetTester tester,
  ) async {
    final places = [
      FeaturedPlace(imageUrl: 'https://example.com/1.jpg', title: 'Place 1'),
      FeaturedPlace(imageUrl: 'https://example.com/2.jpg', title: 'Place 2'),
    ];
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: ExploreFeaturedPlaces(places: places)),
      ),
    );
    expect(find.text('Featured Places'), findsOneWidget);
    expect(find.text('Place 1'), findsOneWidget);
    expect(find.text('Place 2'), findsOneWidget);
    expect(find.byType(Image), findsNWidgets(2));
  });
}
