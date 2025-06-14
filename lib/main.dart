import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:citypulse/config/firebase_options.dart';

// Configuration
import 'package:citypulse/config/routes.dart';

// Services
import 'package:citypulse/services/auth_service.dart';
import 'package:citypulse/services/tour_service.dart';
import 'package:citypulse/services/navigation_service.dart';
import 'package:citypulse/services/calendar_service.dart';
import 'package:citypulse/services/notification_service.dart';
import 'package:citypulse/services/theme_service.dart';

// Screens
import 'package:citypulse/features/main_screens/Welcome.dart';
import 'package:citypulse/features/auth/screens/signin_screen.dart';
import 'package:citypulse/features/explore/screens/explore_screen.dart';
import 'package:citypulse/features/tour/screens/create_tour_start_screen.dart';
import 'package:citypulse/features/tour/screens/create_tour_screen.dart';
import 'package:citypulse/features/tour/screens/add_to_tour_screen.dart';
import 'package:citypulse/features/tour/screens/edit_tour_schedule_screen.dart';
import 'package:citypulse/features/profile/screens/edit_profile_screen.dart';
import 'package:citypulse/features/profile/screens/profile_screen.dart';
import 'package:citypulse/features/tour/screens/creating_tour_loading_screen.dart';
import 'package:citypulse/features/tour/screens/YourTour.dart';
import 'package:citypulse/features/auth/screens/reset_password_screen.dart';
import 'package:citypulse/features/settings/screens/settings_screen.dart';
import 'package:citypulse/features/notifications/screens/notifications_screen.dart';
import 'package:citypulse/features/help/screens/help_screen.dart';
import 'package:citypulse/features/auth/screens/signup_screen.dart';
import 'package:citypulse/features/explore/explore_details/explore_details_screen.dart';
import 'package:citypulse/features/tour/screens/share_tour_screen.dart';
import 'package:citypulse/features/place_event_calendar/screens/place_event_on_calendar_screen.dart';
import 'package:citypulse/features/main_screens/ScanQRCode.dart';
import 'package:citypulse/features/search_on_map/screens/search_on_map_screen.dart';

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
      initialRoute: Routes.welcome,
      routes: {
        Routes.welcome: _welcomeRoute,
        Routes.signin: _signInRoute,
        Routes.signup: _signUpRoute,
        Routes.explore: _exploreRoute,
        Routes.exploreDetails: _exploreDetailsRoute,
        Routes.createTourStart: _createTourStartRoute,
        Routes.createTour: _createTourRoute,
        Routes.creatingTourLoading: _creatingTourLoadingRoute,
        Routes.addToTour: _addToTourRoute,
        Routes.editTourSchedule: _editTourScheduleRoute,
        Routes.yourTours: _yourToursRoute,
        Routes.shareTour: _shareTourRoute,
        Routes.profile: _profileRoute,
        Routes.settings: _settingsRoute,
        Routes.help: _helpRoute,
        Routes.scanQr: _scanQrRoute,
        Routes.searchMap: _searchMapRoute,
        Routes.calendar: _calendarRoute,
        Routes.notifications: _notificationsRoute,
        Routes.adminDashboard: _adminDashboardRoute,
        Routes.moderationPanel: _moderationPanelRoute,
        Routes.editProfile: _editProfileRoute,
        Routes.addPlace: _addPlaceRoute,
        Routes.reset: _resetRoute,
      },
    );
  }

  static Widget _welcomeRoute(BuildContext context) => const Welcome();
  static Widget _signInRoute(BuildContext context) => const SignInScreen();
  static Widget _signUpRoute(BuildContext context) => const SignUpScreen();
  static Widget _exploreRoute(BuildContext context) => const ExploreScreen();
  static Widget _exploreDetailsRoute(BuildContext context) =>
      const ExploreDetails();
  static Widget _createTourStartRoute(BuildContext context) =>
      const CreateTourStartScreen();
  static Widget _createTourRoute(BuildContext context) =>
      const CreateTourScreen();
  static Widget _creatingTourLoadingRoute(BuildContext context) =>
      const CreatingTourLoadingScreen();
  static Widget _addToTourRoute(BuildContext context) =>
      const AddToTourScreen();
  static Widget _editTourScheduleRoute(BuildContext context) =>
      EditTourScheduleScreen(selectedLocations: []);
  static Widget _yourToursRoute(BuildContext context) => const YourTour();
  static Widget _shareTourRoute(BuildContext context) => const ShareTour();
  static Widget _profileRoute(BuildContext context) => const ProfileScreen();
  static Widget _settingsRoute(BuildContext context) => const SettingsScreen(
    userName: 'Placeholder User',
    userEmail: 'placeholder@example.com',
    userAvatar:
        'https://example.com/placeholder.jpg', // Replace with a generic placeholder or actual user avatar URL
  );
  static Widget _helpRoute(BuildContext context) => const HelpScreen();
  static Widget _scanQrRoute(BuildContext context) => const ScanQRCode();
  static Widget _searchMapRoute(BuildContext context) => const SearchOnMap();
  static Widget _calendarRoute(BuildContext context) =>
      const PlaceEventOnCalendar();
  static Widget _notificationsRoute(BuildContext context) =>
      const Notifications();
  static Widget _adminDashboardRoute(BuildContext context) =>
      const PlaceholderScreen(title: 'Admin Dashboard');
  static Widget _moderationPanelRoute(BuildContext context) =>
      const PlaceholderScreen(title: 'Moderation Panel');
  static Widget _editProfileRoute(BuildContext context) =>
      const EditProfileScreen();
  static Widget _addPlaceRoute(BuildContext context) =>
      const PlaceholderScreen(title: 'Add Place');
  static Widget _resetRoute(BuildContext context) =>
      const ResetPasswordScreen();
}

// Simple placeholder screen for yet-to-be-migrated pages.
class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('$title coming soon'),
          ),
        ),
      ),
    );
  }
}
