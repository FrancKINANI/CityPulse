import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/settings/settings_notifications.dart';

void main() {
  group('SettingsNotifications Widget Tests', () {
    testWidgets('should render all notification options', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsNotifications(
              pushEnabled: true,
              emailEnabled: false,
              tourUpdatesEnabled: true,
              eventRemindersEnabled: false,
              onPushChanged: (_) {},
              onEmailChanged: (_) {},
              onTourUpdatesChanged: (_) {},
              onEventRemindersChanged: (_) {},
            ),
          ),
        ),
      );

      // Verify section title
      expect(find.text('Notifications'), findsOneWidget);

      // Verify all option titles
      expect(find.text('Notifications push'), findsOneWidget);
      expect(find.text('Notifications email'), findsOneWidget);
      expect(find.text('Mises à jour des tours'), findsOneWidget);
      expect(find.text('Rappels d\'événements'), findsOneWidget);

      // Verify all switches are present
      expect(find.byType(Switch), findsNWidgets(4));
    });

    testWidgets('switches should reflect initial values', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsNotifications(
              pushEnabled: true,
              emailEnabled: false,
              tourUpdatesEnabled: true,
              eventRemindersEnabled: false,
              onPushChanged: (_) {},
              onEmailChanged: (_) {},
              onTourUpdatesChanged: (_) {},
              onEventRemindersEnabled: (_) {},
            ),
          ),
        ),
      );

      final switches = tester.widgetList<Switch>(find.byType(Switch));
      expect(switches.elementAt(0).value, isTrue);
      expect(switches.elementAt(1).value, isFalse);
      expect(switches.elementAt(2).value, isTrue);
      expect(switches.elementAt(3).value, isFalse);
    });

    testWidgets('should call callbacks when switches are toggled', (
      WidgetTester tester,
    ) async {
      bool pushValue = true;
      bool emailValue = false;
      bool tourUpdatesValue = true;
      bool eventRemindersValue = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsNotifications(
              pushEnabled: pushValue,
              emailEnabled: emailValue,
              tourUpdatesEnabled: tourUpdatesValue,
              eventRemindersEnabled: eventRemindersValue,
              onPushChanged: (value) => pushValue = value,
              onEmailChanged: (value) => emailValue = value,
              onTourUpdatesChanged: (value) => tourUpdatesValue = value,
              onEventRemindersChanged: (value) => eventRemindersValue = value,
            ),
          ),
        ),
      );

      // Toggle each switch and verify callback is called
      await tester.tap(find.byType(Switch).first);
      expect(pushValue, isFalse);

      await tester.tap(find.byType(Switch).at(1));
      expect(emailValue, isTrue);

      await tester.tap(find.byType(Switch).at(2));
      expect(tourUpdatesValue, isFalse);

      await tester.tap(find.byType(Switch).at(3));
      expect(eventRemindersValue, isTrue);
    });

    testWidgets('should maintain proper layout structure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsNotifications(
              pushEnabled: true,
              emailEnabled: false,
              tourUpdatesEnabled: true,
              eventRemindersEnabled: false,
              onPushChanged: (_) {},
              onEmailChanged: (_) {},
              onTourUpdatesChanged: (_) {},
              onEventRemindersChanged: (_) {},
            ),
          ),
        ),
      );

      // Verify container properties
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.color, equals(Colors.white));

      // Verify layout hierarchy
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(Row), findsWidgets);
      expect(find.byType(Divider), findsNWidgets(3));
    });

    testWidgets('should apply correct text styles', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingsNotifications(
              pushEnabled: true,
              emailEnabled: false,
              tourUpdatesEnabled: true,
              eventRemindersEnabled: false,
              onPushChanged: (_) {},
              onEmailChanged: (_) {},
              onTourUpdatesChanged: (_) {},
              onEventRemindersChanged: (_) {},
            ),
          ),
        ),
      );

      // Verify section title style
      final titleFinder = find.text('Notifications');
      final Text titleWidget = tester.widget(titleFinder);
      expect(titleWidget.style?.fontSize, equals(18));
      expect(titleWidget.style?.fontWeight, equals(FontWeight.bold));
      expect(titleWidget.style?.color, equals(const Color(0xFF141E16)));

      // Verify option title style
      final optionTitleFinder = find.text('Notifications push');
      final Text optionTitleWidget = tester.widget(optionTitleFinder);
      expect(optionTitleWidget.style?.fontSize, equals(16));
      expect(optionTitleWidget.style?.fontWeight, equals(FontWeight.w500));
      expect(optionTitleWidget.style?.color, equals(const Color(0xFF141E16)));
    });
  });
}
