import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/explore_details/explore_details_gallery.dart';

void main() {
  group('ExploreDetailsGallery Widget Tests', () {
    final testImages = [
      'https://example.com/image1.jpg',
      'https://example.com/image2.jpg',
      'https://example.com/image3.jpg',
    ];

    testWidgets('should render gallery title and images', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: ExploreDetailsGallery(images: testImages)),
        ),
      );

      // Verify gallery title is present
      expect(find.text('Gallery'), findsOneWidget);

      // Verify that all images are rendered
      expect(find.byType(Image), findsNWidgets(testImages.length));

      // Verify that images are wrapped in ClipRRect for rounded corners
      expect(find.byType(ClipRRect), findsNWidgets(testImages.length));
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: ExploreDetailsGallery(images: testImages)),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify layout hierarchy
      expect(find.byType(Column), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(SizedBox), findsWidgets);
    });

    testWidgets('should handle empty image list', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: ExploreDetailsGallery(images: [])),
        ),
      );

      // Verify that the gallery title is still shown
      expect(find.text('Gallery'), findsOneWidget);

      // Verify that no images are rendered
      expect(find.byType(Image), findsNothing);
    });

    testWidgets('should scroll horizontally', (WidgetTester tester) async {
      // Create a list with many images to ensure scrolling
      final manyImages = List.generate(
        10,
        (index) => 'https://example.com/image$index.jpg',
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: ExploreDetailsGallery(images: manyImages)),
        ),
      );

      // Verify that ListView is horizontal
      final ListView listView = tester.widget(find.byType(ListView));
      expect(listView.scrollDirection, equals(Axis.horizontal));

      // Initial position
      final firstImageFinder = find.byType(Image).first;
      expect(firstImageFinder, findsOneWidget);

      // Scroll to the right
      await tester.drag(find.byType(ListView), const Offset(-500.0, 0.0));
      await tester.pump();

      // Verify that we can still find images after scrolling
      expect(find.byType(Image), findsWidgets);
    });
  });
}
