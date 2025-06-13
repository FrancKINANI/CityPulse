import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/search_on_map/widgets/search_on_map_search_bars.dart';

void main() {
  testWidgets('SearchOnMapSearchBars displays fields and calls callbacks', (
    WidgetTester tester,
  ) async {
    String cat = '';
    String dist = '';
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SearchOnMapSearchBars(
            category: '',
            distance: '',
            onCategoryChanged: (v) => cat = v,
            onDistanceChanged: (v) => dist = v,
          ),
        ),
      ),
    );
    expect(find.byType(TextField), findsNWidgets(2));
    await tester.enterText(find.byType(TextField).at(0), 'Museum');
    await tester.enterText(find.byType(TextField).at(1), '5');
    expect(cat, 'Museum');
    expect(dist, '5');
  });
}
