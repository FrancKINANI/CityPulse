import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';

class SettingsPreferences extends StatelessWidget {
  final String language;
  final String theme;
  final bool locationEnabled;
  final bool autoPlayVideos;
  final Function(String) onLanguageChanged;
  final Function(String) onThemeChanged;
  final Function(bool) onLocationChanged;
  final Function(bool) onAutoPlayVideosChanged;

  const SettingsPreferences({
    super.key,
    required this.language,
    required this.theme,
    required this.locationEnabled,
    required this.autoPlayVideos,
    required this.onLanguageChanged,
    required this.onThemeChanged,
    required this.onLocationChanged,
    required this.onAutoPlayVideosChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.language, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text('Préférences', style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          const SizedBox(height: 16),
          _buildDropdownSetting(
            Icons.language,
            'Langue',
            'Choisissez votre langue préférée',
            language,
            ['Français', 'English', 'Español', 'Deutsch'],
            onLanguageChanged,
            context,
          ),
          const Divider(),
          _buildDropdownSetting(
            Icons.light_mode,
            'Thème',
            'Choisissez l\'apparence de l\'application',
            theme,
            ['Système', 'Clair', 'Sombre'],
            onThemeChanged,
            context,
          ),
          const Divider(),
          _buildSwitchSetting(
            Icons.location_on,
            'Localisation',
            'Autoriser l\'accès à votre position',
            locationEnabled,
            onLocationChanged,
            context,
          ),
          const Divider(),
          _buildSwitchSetting(
            Icons.play_circle,
            'Lecture automatique',
            'Lire automatiquement les vidéos',
            autoPlayVideos,
            onAutoPlayVideosChanged,
            context,
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownSetting(
    IconData icon,
    String title,
    String subtitle,
    String value,
    List<String> options,
    Function(String) onChanged,
    BuildContext parentContext,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(parentContext).colorScheme.primary),
          const SizedBox(width: 16),
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
          DropdownButton<String>(
            value: value,
            items: options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                onChanged(newValue);

                if (title == 'Thème') {
                  final themeService = Provider.of<ThemeService>(
                    parentContext,
                    listen: false,
                  );
                  switch (newValue) {
                    case 'Clair':
                      themeService.setThemeMode(ThemeMode.light);
                      break;
                    case 'Sombre':
                      themeService.setThemeMode(ThemeMode.dark);
                      break;
                    case 'Système':
                      themeService.setThemeMode(ThemeMode.system);
                      break;
                  }
                }
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchSetting(
    IconData icon,
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
          Icon(icon, color: Theme.of(parentContext).colorScheme.primary),
          const SizedBox(width: 16),
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
          ),
        ],
      ),
    );
  }
}
