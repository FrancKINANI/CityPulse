import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'config/firebase_options.dart';

// Configuration
import 'config/app_config.dart';
import 'config/routes.dart';

// Services
import 'services/auth_service.dart';
import 'services/tour_service.dart';
import 'services/navigation_service.dart';
import 'services/calendar_service.dart';
import 'services/notification_service.dart';

// Screens
import 'screens/Welcome.dart';
import 'screens/SignIn.dart';
import 'screens/SignUp.dart';
import 'screens/explore/explore_screen.dart';
import 'screens/ExploreDetails.dart';
import 'features/create_tour/screens/create_tour_screen.dart';
import 'features/create_tour/screens/create_tour_start_screen.dart';
import 'features/create_tour/screens/creating_tour_loading_screen.dart';
import 'screens/YourTour.dart';
import 'screens/ShareTour.dart';
import 'screens/Profile.dart';
import 'screens/Setting.dart';
import 'screens/help/help_screen.dart';
import 'screens/ScanQRCode.dart';
import 'screens/SearchOnMap.dart';
import 'screens/PlaceEventOnCalendar.dart';
import 'screens/Notifications.dart';
import 'screens/GestionnaireDashboard.dart';
import 'screens/ModerationPanel.dart';
import 'screens/EditProfile.dart';
import 'screens/AddPlace.dart';
import 'screens/Reset.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final navigationService = NavigationService();
  final authService = AuthService();
  final tourService = TourService();
  final calendarService = CalendarService();
  final notificationService = NotificationService();

  await notificationService.initNotification();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => authService),
        ChangeNotifierProvider(create: (_) => tourService),
        ChangeNotifierProvider(create: (_) => calendarService),
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

    return MaterialApp(
      title: 'CityPulse',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigationService.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppConfig.primaryColor,
          primary: AppConfig.primaryColor,
          secondary: AppConfig.secondaryColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headlineLarge: AppConfig.headingStyle,
          headlineMedium: AppConfig.subheadingStyle,
          bodyLarge: AppConfig.bodyStyle,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppConfig.primaryColor,
          foregroundColor: AppConfig.backgroundColor,
          elevation: 0,
        ),
      ),
      initialRoute: Routes.createTourStart,
      routes: {
        Routes.welcome: (context) => const Welcome(),
        Routes.signin: (context) => const SignIn(),
        Routes.signup: (context) => SignUp(),
        Routes.explore: (context) => const ExploreScreen(),
        Routes.exploreDetails: (context) => const ExploreDetails(),
        Routes.createTourStart: (context) => const CreateTourStartScreen(),
        Routes.createTour: (context) => const CreateTourScreen(),
        Routes.creatingTourLoading: (context) =>
            const CreatingTourLoadingScreen(),
        Routes.yourTours: (context) => const YourTour(),
        Routes.shareTour: (context) => const ShareTour(),
        Routes.profile: (context) => const Profile(),
        Routes.settings: (context) => const Setting(),
        Routes.help: (context) => const HelpScreen(),
        Routes.scanQr: (context) => const ScanQRCode(),
        Routes.searchMap: (context) => const SearchOnMap(),
        Routes.calendar: (context) => const PlaceEventOnCalendar(),
        Routes.notifications: (context) => const Notifications(),
        Routes.adminDashboard: (context) => const GestionnaireDashboard(),
        Routes.moderationPanel: (context) => const ModerationPanel(),
        Routes.editProfile: (context) => const EditProfile(),
        Routes.addPlace: (context) => const AddPlace(),
        Routes.reset: (context) => const Reset(),
      },
    );
  }
}
