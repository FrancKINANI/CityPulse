import 'package:flutter/material.dart';

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
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Notifications',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF141E16),
            ),
          ),
          const SizedBox(height: 16),
          _buildNotificationOption(
            'Notifications push',
            'Recevoir des notifications sur votre appareil',
            pushEnabled,
            onPushChanged,
          ),
          const Divider(),
          _buildNotificationOption(
            'Notifications email',
            'Recevoir des notifications par email',
            emailEnabled,
            onEmailChanged,
          ),
          const Divider(),
          _buildNotificationOption(
            'Mises à jour des tours',
            'Être notifié des changements dans vos tours',
            tourUpdatesEnabled,
            onTourUpdatesChanged,
          ),
          const Divider(),
          _buildNotificationOption(
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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF141E16),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFF141E16).withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xFF2E7D32),
          ),
        ],
      ),
    );
  }
}
