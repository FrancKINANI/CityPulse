import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/screens/help/help_screen.dart';
import 'package:citypulse/screens/help/help_header.dart';
import 'package:citypulse/screens/help/help_faq_section.dart';
import 'package:citypulse/screens/help/help_contact_section.dart';
import 'package:citypulse/screens/help/help_navigation_bar.dart';

void main() {
  group('Help Screen Widget Tests', () {
    testWidgets('should render all major components', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: HelpScreen()));

      // Verify all sections are present
      expect(find.byType(HelpHeader), findsOneWidget);
      expect(find.byType(HelpFaqSection), findsOneWidget);
      expect(find.byType(HelpContactSection), findsOneWidget);
      expect(find.byType(HelpNavigationBar), findsOneWidget);
    });

    testWidgets('should render FAQ section with all items', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: HelpFaqSection()));

      // Verify section title
      expect(find.text('Frequently Asked Questions'), findsOneWidget);

      // Verify all FAQ items
      expect(find.text('Creating Tours'), findsOneWidget);
      expect(find.text('Social Interactions'), findsOneWidget);
      expect(find.text('User Roles'), findsOneWidget);
      expect(find.text('General Inquiries'), findsOneWidget);

      // Verify descriptions
      expect(
        find.text('Learn how to create and customize your own tours.'),
        findsOneWidget,
      );
      expect(
        find.text(
          'Find out how to connect with other users and share experiences.',
        ),
        findsOneWidget,
      );
      expect(
        find.text(
          'Understand the different roles and permissions within the app.',
        ),
        findsOneWidget,
      );
      expect(
        find.text(
          'Get answers to common questions about app features and functionality.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('should render Contact section with all items', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: HelpContactSection()));

      // Verify section title
      expect(find.text('Contact Us'), findsOneWidget);

      // Verify contact options
      expect(find.text('Email Support'), findsOneWidget);
      expect(find.text('Feedback'), findsOneWidget);
    });

    testWidgets('should render navigation bar with all items', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: HelpNavigationBar()));

      // Verify navigation items
      expect(find.text('Explore'), findsOneWidget);
      expect(find.text('Tours'), findsOneWidget);
      expect(find.text('Profile'), findsOneWidget);
    });
  });
}
