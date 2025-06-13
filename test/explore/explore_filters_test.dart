import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/explore/widgets/explore_filters.dart';

void main() {
  testWidgets('ExploreFilters displays filters and calls onSelect', (
    WidgetTester tester,
  ) async {
    String selected = 'All';
    String? tapped;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ExploreFilters(
            selected: selected,
            onSelect: (f) => tapped = f,
            filters: ['All', 'Featured', 'New'],
          ),
        ),
      ),
    );
    expect(find.text('All'), findsOneWidget);
    expect(find.text('Featured'), findsOneWidget);
    expect(find.text('New'), findsOneWidget);
    await tester.tap(find.text('Featured'));
    expect(tapped, 'Featured');
  });
}
