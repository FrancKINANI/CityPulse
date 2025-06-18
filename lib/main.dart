import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/features/main_screens/loading_screen.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/services/navigation_service.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/features/explore/screens/explore_screen.dart';
import 'package:citypulse/features/explore/explore_details/explore_details_screen.dart';
import 'package:citypulse/features/favorites/screens/favorites_screen.dart';
import 'package:citypulse/features/profile/screens/profile_screen.dart';
import 'package:citypulse/features/tour/screens/YourTour.dart';
import 'package:citypulse/features/auth/screens/signin_screen.dart';
import 'package:citypulse/features/auth/screens/signup_screen.dart';
import 'package:citypulse/features/auth/screens/reset_password_screen.dart';
import 'package:citypulse/features/interests/screens/interest_setup_screen.dart';
import 'package:citypulse/features/tour/screens/create_tour_start_screen.dart';
import 'package:citypulse/features/tour/screens/create_tour_screen.dart';
import 'package:citypulse/features/tour/screens/creating_tour_loading_screen.dart';
import 'package:citypulse/features/tour/screens/share_tour_screen.dart';
import 'package:citypulse/features/profile/screens/edit_profile_screen.dart';
import 'package:citypulse/features/settings/screens/settings_screen.dart';
import 'package:citypulse/features/help/screens/help_screen.dart';
import 'package:citypulse/features/main_screens/scanQRCode.dart';
import 'package:citypulse/features/search_on_map/screens/search_on_map_screen.dart';
import 'package:citypulse/features/place_event_calendar/screens/place_event_on_calendar_screen.dart';
import 'package:citypulse/features/notifications/screens/notifications_screen.dart';
import 'package:citypulse/features/add_place/screens/add_place_screen.dart';
import 'package:citypulse/features/tour/screens/add_to_tour_screen.dart';
import 'package:citypulse/features/tour/screens/edit_tour_schedule_screen.dart';
import 'package:citypulse/features/gestionnaire_dashboard/screens/gestionnaire_dashboard_screen.dart';
import 'package:citypulse/services/auth_service.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeService()),
        ChangeNotifierProvider(create: (_) => AuthService()),
        Provider(create: (_) => NavigationService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    final navigationService = Provider.of<NavigationService>(
      context,
      listen: false,
    );

    return MaterialApp(
      title: 'CityPulse',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getLightTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: themeService.themeMode,
      navigatorKey: navigationService.navigatorKey,
      routes: {
        Routes.welcome: (context) => const LoadingScreen(),
        Routes.explore: (context) => const ExploreScreen(),
        Routes.yourTours: (context) => const YourTour(),
        Routes.favorites: (context) => const FavoritesScreen(),
        Routes.profile: (context) => const ProfileScreen(),
        Routes.exploreDetails: (context) => const ExploreDetails(),
        Routes.signin: (context) => const SignInScreen(),
        Routes.signup: (context) => const SignUpScreen(),
        Routes.reset: (context) => const ResetPasswordScreen(),
        Routes.interestSetup: (context) => const InterestSetupScreen(),
        Routes.createTourStart: (context) => const CreateTourStartScreen(),
        Routes.createTour: (context) => const CreateTourScreen(),
        Routes.creatingTourLoading: (context) =>
            const CreatingTourLoadingScreen(),
        Routes.shareTour: (context) => const ShareTour(),
        Routes.editProfile: (context) => const EditProfileScreen(),
        Routes.settings: (context) => SettingsScreen(
          userName: 'John Doe',
          userEmail: 'john@example.com',
          userAvatar: '',
        ),
        Routes.help: (context) => const HelpScreen(),
        Routes.scanQr: (context) => const ScanQRCode(),
        Routes.searchMap: (context) => SearchOnMap(),
        Routes.calendar: (context) => PlaceEventOnCalendar(),
        Routes.notifications: (context) => const Notifications(),
        Routes.addPlace: (context) => const AddPlace(),
        Routes.addToTour: (context) => const AddToTourScreen(),
        Routes.editTourSchedule: (context) =>
            const EditTourScheduleScreen(selectedLocations: []),
        Routes.adminDashboard: (context) => GestionnaireDashboard(
          userName: 'Admin',
          userRole: 'Administrator',
          userAvatar: '',
        ),
      },
    );
  }
}
