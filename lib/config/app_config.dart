import 'package:flutter/material.dart';

class AppConfig {
  static const String appName = 'CityPulse';
  static const String version = '1.0.0';
  static const String baseUrl = 'https://api.citypulse.com';
  
  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 8.0;
  
  static const List<String> defaultCategories = [
    'Restaurants',
    'Hôtels',
    'Musées',
    'Parcs',
    'Bars',
    'Shopping'
  ];
}
