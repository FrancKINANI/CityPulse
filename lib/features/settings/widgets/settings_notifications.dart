import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:provider/provider.dart';

class SettingsNotifications extends StatelessWidget {
  final bool pushEnabled;
  final bool emailEnabled;
  final bool tourUpdatesEnabled;
  final bool eventRemindersEnabled;
  final Function(bool) onPushChanged;
  final Function(bool) onEmailChanged;
  final Function(bool) onTourUpdatesChanged;
  final Function(bool) onEventRemindersChanged;

  const SettingsNotifications({
    super.key,
    required this.pushEnabled,
    required this.emailEnabled,
    required this.tourUpdatesEnabled,
    required this.eventRemindersEnabled,
    required this.onPushChanged,
    required this.onEmailChanged,
    required this.onTourUpdatesChanged,
    required this.onEventRemindersChanged,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Container(
      color: themeService.isDarkMode
          ? AppTheme.darkBackgroundColor
          : AppTheme.backgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notifications',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 16),
          _buildNotificationOption(
            themeService,
            'Notifications push',
            'Recevoir des notifications sur votre appareil',
            pushEnabled,
            onPushChanged,
          ),
          const Divider(),
          _buildNotificationOption(
            themeService,
            'Notifications email',
            'Recevoir des notifications par email',
            emailEnabled,
            onEmailChanged,
          ),
          const Divider(),
          _buildNotificationOption(
            themeService,
            'Mises à jour des tours',
            'Être notifié des changements dans vos tours',
            tourUpdatesEnabled,
            onTourUpdatesChanged,
          ),
          const Divider(),
          _buildNotificationOption(
            themeService,
            'Rappels d\'événements',
            'Recevoir des rappels pour vos événements',
            eventRemindersEnabled,
            onEventRemindersChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationOption(
    ThemeService themeService,
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: themeService.isDarkMode
                        ? AppTheme.darkTextPrimaryColor
                        : AppTheme.textPrimaryColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: themeService.isDarkMode
                        ? AppTheme.darkTextSecondaryColor
                        : AppTheme.textSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: AppTheme.secondaryColor,
          ),
        ],
      ),
    );
  }
}
