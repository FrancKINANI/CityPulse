import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'config/firebase_options.dart';

// Configuration
import 'config/routes.dart';

// Services
import 'services/auth_service.dart';
import 'services/tour_service.dart';
import 'services/navigation_service.dart';
import 'services/calendar_service.dart';
import 'services/notification_service.dart';
import 'services/theme_service.dart';

// Screens
import 'features/legacy/screens/welcome_screen.dart';
import 'features/auth/screens/signin_screen.dart';
import 'features/explore/screens/explore_screen.dart';
import 'features/create_tour/screens/create_tour_start_screen.dart';
import 'features/create_tour/screens/create_tour_screen.dart';
import 'features/create_tour/screens/add_to_tour_screen.dart';
import 'features/create_tour/screens/edit_tour_schedule_screen.dart';
import 'features/profile/screens/edit_profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final navigationService = NavigationService();
  final authService = AuthService();
  final tourService = TourService();
  final calendarService = CalendarService();
  final notificationService = NotificationService();
  final themeService = ThemeService();

  await notificationService.initNotification();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => authService),
        ChangeNotifierProvider(create: (_) => tourService),
        ChangeNotifierProvider(create: (_) => calendarService),
        ChangeNotifierProvider(create: (_) => themeService),
        Provider.value(value: navigationService),
        Provider.value(value: notificationService),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final navigationService = Provider.of<NavigationService>(
      context,
      listen: false,
    );
    final themeService = Provider.of<ThemeService>(context);

    return MaterialApp(
      title: 'CityPulse',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigationService.navigatorKey,
      themeMode: themeService.themeMode,
      theme: themeService.getLightTheme(),
      darkTheme: themeService.getDarkTheme(),
      initialRoute: Routes.createTourStart,
      routes: {
        Routes.welcome: (context) => const Welcome(),
        Routes.signin: (context) => const SignInScreen(),
        Routes.signup: (context) => const PlaceholderScreen(title: 'Sign Up'),
        Routes.explore: (context) => const ExploreScreen(),
        Routes.exploreDetails: (context) => const PlaceholderScreen(title: 'Explore Details'),
        Routes.createTourStart: (context) => const CreateTourStartScreen(),
        Routes.createTour: (context) => const CreateTourScreen(),
        Routes.creatingTourLoading: (context) => const PlaceholderScreen(title: 'Creating Tour Loading'),
        Routes.addToTour: (context) => const AddToTourScreen(),
        Routes.editTourSchedule: (context) => EditTourScheduleScreen(selectedLocations: []),
        Routes.yourTours: (context) => const PlaceholderScreen(title: 'Your Tours'),
        Routes.shareTour: (context) => const PlaceholderScreen(title: 'Share Tour'),
        Routes.profile: (context) => const PlaceholderScreen(title: 'Profile'),
        Routes.settings: (context) => const PlaceholderScreen(title: 'Settings'),
        Routes.help: (context) => const PlaceholderScreen(title: 'Help'),
        Routes.scanQr: (context) => const PlaceholderScreen(title: 'Scan QR'),
        Routes.searchMap: (context) => const PlaceholderScreen(title: 'Search Map'),
        Routes.calendar: (context) => const PlaceholderScreen(title: 'Calendar'),
        Routes.notifications: (context) => const PlaceholderScreen(title: 'Notifications'),
        Routes.adminDashboard: (context) => const PlaceholderScreen(title: 'Admin Dashboard'),
        Routes.moderationPanel: (context) => const PlaceholderScreen(title: 'Moderation Panel'),
        Routes.editProfile: (context) => const EditProfileScreen(),
        Routes.addPlace: (context) => const PlaceholderScreen(title: 'Add Place'),
        Routes.reset: (context) => const PlaceholderScreen(title: 'Reset'),
      },
    );
  }
}

// Simple placeholder screen for yet-to-be-migrated pages.
class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title coming soon')),
    );
  }
}
