import 'package:flutter/material.dart';

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
    Key? key,
    required this.language,
    required this.theme,
    required this.locationEnabled,
    required this.autoPlayVideos,
    required this.onLanguageChanged,
    required this.onThemeChanged,
    required this.onLocationChanged,
    required this.onAutoPlayVideosChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Préférences',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF141E16),
            ),
          ),
          const SizedBox(height: 16),
          _buildDropdownSetting(
            'Langue',
            'Choisissez votre langue préférée',
            language,
            ['Français', 'English', 'Español', 'Deutsch'],
            onLanguageChanged,
          ),
          const Divider(),
          _buildDropdownSetting(
            'Thème',
            'Choisissez l\'apparence de l\'application',
            theme,
            ['Système', 'Clair', 'Sombre'],
            onThemeChanged,
          ),
          const Divider(),
          _buildSwitchSetting(
            'Localisation',
            'Autoriser l\'accès à votre position',
            locationEnabled,
            onLocationChanged,
          ),
          const Divider(),
          _buildSwitchSetting(
            'Lecture automatique',
            'Lire automatiquement les vidéos',
            autoPlayVideos,
            onAutoPlayVideosChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownSetting(
    String title,
    String subtitle,
    String value,
    List<String> options,
    Function(String) onChanged,
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
          DropdownButton<String>(
            value: value,
            onChanged: (newValue) {
              if (newValue != null) {
                onChanged(newValue);
              }
            },
            items: options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF141E16),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchSetting(
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
