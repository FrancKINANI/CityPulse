import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/add_place/widgets/AddPlaceFormSection.dart';

void main() {
  testWidgets(
    'AddPlaceFormSection displays label, hint, calls onChanged, and has correct styling',
    (WidgetTester tester) async {
      String value = '';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AddPlaceFormSection(
              label: 'Test Label',
              hint: 'Test Hint',
              onChanged: (v) => value = v,
            ),
          ),
        ),
      );
      expect(find.text('Test Label'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Test Hint'), findsOneWidget);

      final containerFinder = find.descendant(
        of: find.byType(AddPlaceFormSection),
        matching: find.byWidgetPredicate(
          (widget) =>
              widget is Container &&
              (widget.decoration as BoxDecoration?)?.color ==
                  const Color(0xFFFFA500),
        ),
      );
      expect(containerFinder, findsOneWidget);

      await tester.enterText(find.byType(TextField), 'Hello');
      expect(value, 'Hello');
    },
  );

  testWidgets(
    'AddPlaceFormSection handles maxLines correctly for Description and other labels',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AddPlaceFormSection(
              label: 'Description',
              hint: 'Enter description',
              onChanged: (v) {},
            ),
          ),
        ),
      );
      final descriptionTextField = tester.widget<TextField>(
        find.byType(TextField),
      );
      expect(descriptionTextField.maxLines, null);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AddPlaceFormSection(
              label: 'Name',
              hint: 'Enter name',
              onChanged: (v) {},
            ),
          ),
        ),
      );
      final nameTextField = tester.widget<TextField>(find.byType(TextField));
      expect(nameTextField.maxLines, 1);
    },
  );
}
