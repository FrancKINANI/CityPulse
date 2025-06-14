import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citypulse/features/auth/widgets/auth_form_field.dart';
import 'package:citypulse/config/app_config.dart';

void main() {
  Widget createWidgetUnderTest({
    required TextEditingController controller,
    required String hintText,
    bool obscureText = false,
    String? Function(String?)? validator,
    TextInputType keyboardType = TextInputType.text,
    bool autofocus = false,
    FocusNode? focusNode,
    Function(String)? onChanged,
    Function(String)? onSubmitted,
  }) {
    return MaterialApp(
      theme: AppConfig.lightTheme,
      home: Material(
        child: AuthFormField(
          controller: controller,
          hintText: hintText,
          obscureText: obscureText,
          validator: validator,
          keyboardType: keyboardType,
          autofocus: autofocus,
          focusNode: focusNode,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
        ),
      ),
    );
  }

  group('AuthFormField', () {
    testWidgets('renders correctly with email field', (tester) async {
      final controller = TextEditingController();
      await tester.pumpWidget(createWidgetUnderTest(
        controller: controller,
        hintText: 'Email',
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          if (!value.contains('@')) {
            return 'Please enter a valid email';
          }
          return null;
        },
      ));

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.text('Email'), findsOneWidget);
    });

    testWidgets('renders correctly with password field', (tester) async {
      final controller = TextEditingController();
      await tester.pumpWidget(createWidgetUnderTest(
        controller: controller,
        hintText: 'Password',
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
      ));

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
    });

    testWidgets('validates email field', (tester) async {
      final controller = TextEditingController();
      await tester.pumpWidget(createWidgetUnderTest(
        controller: controller,
        hintText: 'Email',
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          if (!value.contains('@')) {
            return 'Please enter a valid email';
          }
          return null;
        },
      ));

      // Entrer un email invalide
      await tester.enterText(find.byType(TextFormField), 'invalid');
      await tester.pump();

      // Vérifier l'erreur
      expect(find.text('Please enter a valid email'), findsOneWidget);
    });

    testWidgets('validates password field', (tester) async {
      final controller = TextEditingController();
      await tester.pumpWidget(createWidgetUnderTest(
        controller: controller,
        hintText: 'Password',
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
      ));

      // Entrer un mot de passe court
      await tester.enterText(find.byType(TextFormField), '123');
      await tester.pump();

      // Vérifier l'erreur
      expect(find.text('Password must be at least 6 characters'), findsOneWidget);
    });

    testWidgets('handles autofocus', (tester) async {
      final controller = TextEditingController();
      await tester.pumpWidget(createWidgetUnderTest(
        controller: controller,
        hintText: 'Test',
        autofocus: true,
      ));

      // Vérifier que le champ a le focus
      expect(tester.testTextInput.hasFocus, isTrue);
    });

    testWidgets('handles onChanged callback', (tester) async {
      final controller = TextEditingController();
      bool onChangedCalled = false;

      await tester.pumpWidget(createWidgetUnderTest(
        controller: controller,
        hintText: 'Test',
        onChanged: (value) {
          onChangedCalled = true;
        },
      ));

      // Entrer du texte
      await tester.enterText(find.byType(TextFormField), 'test');
      await tester.pump();

      // Vérifier que le callback a été appelé
      expect(onChangedCalled, isTrue);
    });

    testWidgets('handles onSubmitted callback', (tester) async {
      final controller = TextEditingController();
      bool onSubmittedCalled = false;

      await tester.pumpWidget(createWidgetUnderTest(
        controller: controller,
        hintText: 'Test',
        onSubmitted: (value) {
          onSubmittedCalled = true;
        },
      ));

      // Soumettre le champ
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();

      // Vérifier que le callback a été appelé
      expect(onSubmittedCalled, isTrue);
    });
  });
}
