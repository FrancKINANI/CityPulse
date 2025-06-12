import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore/ExploreQuickNav.dart';

void main() {
  testWidgets('ExploreQuickNav displays items and calls onNav', (
    WidgetTester tester,
  ) async {
    int? tappedIndex;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ExploreQuickNav(
            selectedIndex: 1,
            onNav: (i) => tappedIndex = i,
          ),
        ),
      ),
    );
    expect(find.text('Explore'), findsOneWidget);
    expect(find.text('Tours'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    await tester.tap(find.text('Profile'));
    expect(tappedIndex, 2);
  });
}
