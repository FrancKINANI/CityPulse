import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/search_on_map/widgets/search_on_map_filters.dart';

void main() {
  testWidgets('SearchOnMapFilters displays filters and calls onSelect', (
    WidgetTester tester,
  ) async {
    String? tapped;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SearchOnMapFilters(
            selected: 'All',
            onSelect: (f) => tapped = f,
            filters: const ['All', 'Places', 'Events', 'Tours'],
          ),
        ),
      ),
    );
    expect(find.text('All'), findsOneWidget);
    expect(find.text('Places'), findsOneWidget);
    expect(find.text('Events'), findsOneWidget);
    expect(find.text('Tours'), findsOneWidget);
    await tester.tap(find.text('Events'));
    expect(tapped, 'Events');
  });
}
