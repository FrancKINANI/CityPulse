import 'package:flutter/material.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Paramètres des notifications',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Notifications push'),
            subtitle: const Text('Recevez des notifications en temps réel'),
            value: true,
            onChanged: (bool value) {
              // TODO: Implement notification settings
            },
          ),
          SwitchListTile(
            title: const Text('Notifications par email'),
            subtitle: const Text('Recevez des résumés par email'),
            value: true,
            onChanged: (bool value) {
              // TODO: Implement notification settings
            },
          ),
          SwitchListTile(
            title: const Text('Notifications pour les attractions'),
            subtitle: const Text('Recevez des notifications pour les nouvelles attractions'),
            value: true,
            onChanged: (bool value) {
              // TODO: Implement notification settings
            },
          ),
        ],
      ),
    );
  }
}
