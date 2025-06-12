import 'package:flutter/material.dart';

class AppConfig {
  // App Information
  static const String appName = 'CityPulse';
  static const String appVersion = '1.0.0';

  // Colors
  static const Color primaryColor = Colors.white;
  static const Color secondaryColor = Color(0xFFFF9800); // Orange
  static const Color accentColor = Color(0xFFFFB74D); // Light Orange
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Color(0xFF333333);
  static const Color errorColor = Color(0xFFE53935);
  static const Color successColor = Color(0xFF4CAF50);
  static const Color warningColor = Color(0xFFFFC107);
  
  // Dark Theme Colors
  static const Color darkPrimaryColor = Color(0xFF121212);
  static const Color darkSecondaryColor = Color(0xFFFF9800); // Orange
  static const Color darkAccentColor = Color(0xFFFFB74D); // Light Orange
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color darkTextColor = Colors.white;
  static const Color darkCardColor = Color(0xFF1E1E1E);

  // Text Styles
  static const TextStyle headingStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle subheadingStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: textColor,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 16.0,
    color: textColor,
  );

  // Dimensions
  static const double defaultPadding = 16.0;
  static const double defaultMargin = 16.0;
  static const double defaultRadius = 8.0;
  static const double defaultSpacing = 8.0;

  // API Configuration
  static const String apiBaseUrl = 'https://api.citypulse.com/v1';
  static const Duration apiTimeout = Duration(seconds: 30);

  // Cache Configuration
  static const Duration cacheDuration = Duration(hours: 24);
  static const int maxCacheSize = 50 * 1024 * 1024; // 50 MB

  // Map Configuration
  static const double defaultMapZoom = 13.0;
  static const double maxMapZoom = 18.0;
  static const double minMapZoom = 3.0;
  static const LatLng defaultLocation = LatLng(48.8566, 2.3522); // Paris

  // Image Configuration
  static const int maxImageSize = 5 * 1024 * 1024; // 5 MB
  static const List<String> supportedImageFormats = ['jpg', 'jpeg', 'png'];
  static const double maxImageDimension = 2048.0;

  // Tour Configuration
  static const int maxTourDuration = 8; // hours
  static const int maxPlacesPerTour = 20;
  static const int minPlacesPerTour = 2;

  // Event Configuration
  static const int maxEventParticipants = 50;
  static const Duration maxEventDuration = Duration(hours: 12);
  static const Duration minEventDuration = Duration(hours: 1);
}

class LatLng {
  final double latitude;
  final double longitude;

  const LatLng(this.latitude, this.longitude);
}
