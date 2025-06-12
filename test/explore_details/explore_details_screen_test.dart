import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore_details/explore_details_screen.dart';
import 'package:citypulse/screens/explore_details/explore_details_header.dart';
import 'package:citypulse/screens/explore_details/explore_details_info.dart';
import 'package:citypulse/screens/explore_details/explore_details_gallery.dart';
import 'package:citypulse/screens/explore_details/explore_details_map.dart';
import 'package:citypulse/screens/explore_details/explore_details_actions.dart';

void main() {
  group('ExploreDetails Screen Tests', () {
    testWidgets('should render all components', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ExploreDetails()));

      // Verify all major components are present
      expect(find.byType(ExploreDetailsHeader), findsOneWidget);
      expect(find.byType(ExploreDetailsInfo), findsOneWidget);
      expect(find.byType(ExploreDetailsGallery), findsOneWidget);
      expect(find.byType(ExploreDetailsMap), findsOneWidget);
      expect(find.byType(ExploreDetailsActions), findsOneWidget);
    });

    testWidgets('should have proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: ExploreDetails()));

      // Verify basic scaffold structure
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(SafeArea), findsOneWidget);
      expect(find.byType(Stack), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });

    testWidgets('should handle scrolling', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ExploreDetails()));

      // Get initial position of the map widget
      final initialMapFinder = find.byType(ExploreDetailsMap);
      final initialMapPosition = tester.getTopLeft(initialMapFinder);

      // Scroll down
      await tester.drag(
        find.byType(SingleChildScrollView),
        const Offset(0.0, -500.0),
      );
      await tester.pump();

      // Get new position of the map widget
      final newMapPosition = tester.getTopLeft(initialMapFinder);

      // Verify that the widget has moved up
      expect(newMapPosition.dy, lessThan(initialMapPosition.dy));
    });

    testWidgets('actions should remain at bottom while scrolling', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: ExploreDetails()));

      // Get initial position of the actions
      final actionsFinder = find.byType(ExploreDetailsActions);
      final initialActionsPosition = tester.getTopLeft(actionsFinder);

      // Scroll down
      await tester.drag(
        find.byType(SingleChildScrollView),
        const Offset(0.0, -500.0),
      );
      await tester.pump();

      // Get new position of the actions
      final newActionsPosition = tester.getTopLeft(actionsFinder);

      // Verify that the actions stayed in the same position
      expect(newActionsPosition, equals(initialActionsPosition));
    });

    testWidgets('should have proper spacing for bottom actions', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: ExploreDetails()));

      // Find the bottom spacing SizedBox
      final sizedBox = tester.widget<SizedBox>(
        find.byWidgetPredicate(
          (widget) => widget is SizedBox && widget.height == 100,
        ),
      );

      // Verify the spacing height
      expect(sizedBox.height, equals(100));
    });
  });
}
