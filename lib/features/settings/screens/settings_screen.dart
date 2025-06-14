import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/features/settings/widgets/settings_header.dart';
import 'package:citypulse/features/settings/widgets/settings_notifications.dart';
import 'package:citypulse/features/settings/widgets/settings_preferences.dart';
import 'package:citypulse/features/settings/widgets/settings_about.dart';
import 'package:citypulse/services/theme_service.dart';

class SettingsScreen extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userAvatar;

  const SettingsScreen({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userAvatar,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);

    String currentThemeString;
    switch (themeService.themeMode) {
      case ThemeMode.light:
        currentThemeString = 'Clair';
        break;
      case ThemeMode.dark:
        currentThemeString = 'Sombre';
        break;
      case ThemeMode.system:
        currentThemeString = 'Système';
        break;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: const Text(
          'Paramètres',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsHeader(
                userName: userName,
                userEmail: userEmail,
                userAvatar: userAvatar,
                onEditProfile: () {
                  // TODO: Navigate to edit profile
                },
              ),
              SettingsNotifications(
                pushEnabled: true, // TODO: Get from preferences
                emailEnabled: true,
                tourUpdatesEnabled: true,
                eventRemindersEnabled: true,
                onPushChanged: (value) {
                  // TODO: Update preferences
                },
                onEmailChanged: (value) {
                  // TODO: Update preferences
                },
                onTourUpdatesChanged: (value) {
                  // TODO: Update preferences
                },
                onEventRemindersChanged: (value) {
                  // TODO: Update preferences
                },
              ),
              const SizedBox(height: 8),
              SettingsPreferences(
                language: 'Français', // TODO: Get from preferences
                theme: currentThemeString,
                locationEnabled: true,
                autoPlayVideos: false,
                onLanguageChanged: (value) {
                  // TODO: Update preferences
                },
                onThemeChanged: (newValue) {
                  ThemeMode newThemeMode;
                  switch (newValue) {
                    case 'Clair':
                      newThemeMode = ThemeMode.light;
                      break;
                    case 'Sombre':
                      newThemeMode = ThemeMode.dark;
                      break;
                    case 'Système':
                      newThemeMode = ThemeMode.system;
                      break;
                    default:
                      newThemeMode = ThemeMode.system;
                  }
                  themeService.setThemeMode(newThemeMode);
                },
                onLocationChanged: (value) {
                  // TODO: Update preferences
                },
                onAutoPlayVideosChanged: (value) {
                  // TODO: Update preferences
                },
              ),
              const SizedBox(height: 8),
              SettingsAbout(
                appVersion: '1.0.0', // TODO: Get from package info
                onPrivacyPolicy: () {
                  // TODO: Open privacy policy
                },
                onTermsOfService: () {
                  // TODO: Open terms of service
                },
                onLicenses: () {
                  // TODO: Show licenses
                },
                onHelp: () {
                  // TODO: Navigate to help
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
