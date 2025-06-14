import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:mockito/mockito.dart';
import 'package:citypulse/services/auth_service.dart';
import 'package:citypulse/features/auth/screens/signin_screen.dart';
import 'package:citypulse/config/app_config.dart';

class MockAuthService extends Mock implements AuthService {}

void main() {
  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: Provider<AuthService>.value(
        value: mockAuthService,
        child: const SignInScreen(),
      ),
    );
  }

  group('SignInScreen', () {
    testWidgets('renders email and password fields', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Vérifie que les champs sont présents
      expect(find.byType(TextField), findsNWidgets(2));
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
    });

    testWidgets('validates email field', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Remplir un email invalide
      await tester.enterText(find.byType(TextField).at(0), 'invalid');
      await tester.pump();

      // Vérifier la validation
      expect(find.text('Please enter a valid email'), findsOneWidget);
    });

    testWidgets('validates password field', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Remplir un mot de passe court
      await tester.enterText(find.byType(TextField).at(1), '123');
      await tester.pump();

      // Vérifier la validation
      expect(find.text('Password must be at least 6 characters'), findsOneWidget);
    });

    testWidgets('handles sign in success', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Configurer le mock pour réussir
      when(mockAuthService.signIn(any, any)).thenAnswer((_) async => true);

      // Remplir les champs
      await tester.enterText(find.byType(TextField).at(0), 'test@example.com');
      await tester.enterText(find.byType(TextField).at(1), 'password123');

      // Cliquer sur le bouton de connexion
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      // Vérifier que l'authentification a été appelée
      verify(mockAuthService.signIn('test@example.com', 'password123')).called(1);
    });

    testWidgets('handles sign in failure', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Configurer le mock pour échouer
      when(mockAuthService.signIn(any, any)).thenAnswer((_) async => false);

      // Remplir les champs
      await tester.enterText(find.byType(TextField).at(0), 'test@example.com');
      await tester.enterText(find.byType(TextField).at(1), 'wrongpassword');

      // Cliquer sur le bouton de connexion
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      // Vérifier l'erreur
      expect(find.text('Invalid email or password'), findsOneWidget);
    });

    testWidgets('navigates to reset password screen', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Cliquer sur le lien de réinitialisation
      await tester.tap(find.text('Forgot Password?'));
      await tester.pumpAndSettle();

      // Vérifier la navigation
      expect(find.text('Reset Password'), findsOneWidget);
    });

    testWidgets('navigates to sign up screen', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Cliquer sur le lien d'inscription
      await tester.tap(find.text('Sign Up'));
      await tester.pumpAndSettle();

      // Vérifier la navigation
      expect(find.text('Sign Up'), findsOneWidget);
    });
  });
}
