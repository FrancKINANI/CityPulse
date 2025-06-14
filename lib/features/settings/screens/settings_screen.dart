import 'package:flutter/material.dart';
import 'package:citypulse/features/settings/widgets/settings_header.dart';
import 'package:citypulse/features/settings/widgets/settings_notifications.dart';
import 'package:citypulse/features/settings/widgets/settings_preferences.dart';
import 'package:citypulse/features/settings/widgets/settings_about.dart';

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                theme: 'Système',
                locationEnabled: true,
                autoPlayVideos: false,
                onLanguageChanged: (value) {
                  // TODO: Update preferences
                },
                onThemeChanged: (value) {
                  // TODO: Update preferences
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
