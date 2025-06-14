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
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Notifications', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 16),
          _buildNotificationOption(
            'Notifications push',
            'Recevoir des notifications sur votre appareil',
            pushEnabled,
            onPushChanged,
            context,
          ),
          const Divider(),
          _buildNotificationOption(
            'Notifications email',
            'Recevoir des notifications par email',
            emailEnabled,
            onEmailChanged,
            context,
          ),
          const Divider(),
          _buildNotificationOption(
            'Mises à jour des tours',
            'Être notifié des changements dans vos tours',
            tourUpdatesEnabled,
            onTourUpdatesChanged,
            context,
          ),
          const Divider(),
          _buildNotificationOption(
            'Rappels d\'événements',
            'Recevoir des rappels pour vos événements',
            eventRemindersEnabled,
            onEventRemindersChanged,
            context,
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
    BuildContext parentContext,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(parentContext).textTheme.bodyLarge),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(parentContext).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Theme.of(parentContext).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
