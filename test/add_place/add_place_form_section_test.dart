import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/add_place/widgets/add_place_form_section.dart';

void main() {
  testWidgets('AddPlaceFormSection displays label and calls onChanged', (
    WidgetTester tester,
  ) async {
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
    await tester.enterText(find.byType(TextField), 'Hello');
    expect(value, 'Hello');
  });
}
