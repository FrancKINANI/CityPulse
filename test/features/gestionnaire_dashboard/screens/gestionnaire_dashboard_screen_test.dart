import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:mockito/mockito.dart';
import 'package:citypulse/services/auth_service.dart';
import 'package:citypulse/features/gestionnaire_dashboard/screens/gestionnaire_dashboard_screen.dart';
import 'package:citypulse/config/app_config.dart';
import 'package:citypulse/features/gestionnaire_dashboard/widgets/gestionnaire_dashboard_header.dart';
import 'package:citypulse/features/gestionnaire_dashboard/widgets/gestionnaire_dashboard_stats.dart';

class MockAuthService extends Mock implements AuthService {}

void main() {
  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      theme: AppConfig.lightTheme,
      home: Provider<AuthService>.value(
        value: mockAuthService,
        child: const GestionnaireDashboardScreen(),
      ),
    );
  }

  group('GestionnaireDashboardScreen', () {
    testWidgets('renders dashboard header correctly', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(GestionnaireDashboardHeader), findsOneWidget);
      expect(find.text('Welcome back!'), findsOneWidget);
      expect(find.byIcon(Icons.notifications_active), findsOneWidget);
    });

    testWidgets('renders dashboard stats correctly', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(GestionnaireDashboardStats), findsOneWidget);
      expect(find.text('Statistiques'), findsOneWidget);
      expect(find.byIcon(Icons.place), findsOneWidget);
      expect(find.byIcon(Icons.map), findsOneWidget);
      expect(find.byIcon(Icons.people), findsOneWidget);
      expect(find.byIcon(Icons.comment), findsOneWidget);
    });

    testWidgets('handles theme changes', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Vérifier le thème initial
      expect(find.byType(Container), findsWidgets);
      
      // Changer le thème
      await tester.binding.setSurfaceMode(ThemeMode.dark);
      await tester.pumpAndSettle();

      // Vérifier que le thème s'est mis à jour
      final container = tester.widget<Container>(find.byType(Container).first);
      expect(container.decoration?.color, equals(AppConfig.darkTheme.colorScheme.surface));
    });

    testWidgets('handles user data updates', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Simuler une mise à jour des données utilisateur
      final header = tester.widget<GestionnaireDashboardHeader>(find.byType(GestionnaireDashboardHeader));
      expect(header.userName, isNotEmpty);
      expect(header.userRole, isNotEmpty);
      expect(header.pendingItems, greaterThanOrEqualTo(0));
    });

    testWidgets('handles navigation', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Vérifier la navigation vers les lieux
      await tester.tap(find.text('Lieux'));
      await tester.pumpAndSettle();
      expect(find.text('Gestion des lieux'), findsOneWidget);

      // Vérifier la navigation vers les tours
      await tester.tap(find.text('Tours'));
      await tester.pumpAndSettle();
      expect(find.text('Gestion des tours'), findsOneWidget);

      // Vérifier la navigation vers les utilisateurs
      await tester.tap(find.text('Utilisateurs'));
      await tester.pumpAndSettle();
      expect(find.text('Gestion des utilisateurs'), findsOneWidget);

      // Vérifier la navigation vers les avis
      await tester.tap(find.text('Avis en attente'));
      await tester.pumpAndSettle();
      expect(find.text('Modération des avis'), findsOneWidget);
    });

    testWidgets('handles error states', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Simuler une erreur de chargement des données
      when(mockAuthService.getUserData()).thenThrow(Exception('Failed to load data'));
      await tester.pumpAndSettle();

      expect(find.text('Erreur de chargement'), findsOneWidget);
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
    });
  });
}
