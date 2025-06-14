import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/config/app_theme.dart';

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
            'Préférences',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 16),
          _buildDropdownSetting(
            themeService,
            'Langue',
            'Choisissez votre langue préférée',
            language,
            ['Français', 'English', 'Español', 'Deutsch'],
            onLanguageChanged,
            context,
          ),
          const Divider(),
          _buildDropdownSetting(
            themeService,
            'Thème',
            'Choisissez l\'apparence de l\'application',
            theme,
            ['Système', 'Clair', 'Sombre'],
            onThemeChanged,
            context,
          ),
          const Divider(),
          _buildSwitchSetting(
            themeService,
            'Localisation',
            'Autoriser l\'accès à votre position',
            locationEnabled,
            onLocationChanged,
          ),
          const Divider(),
          _buildSwitchSetting(
            themeService,
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
    ThemeService themeService,
    String title,
    String subtitle,
    String value,
    List<String> options,
    Function(String) onChanged, [
    BuildContext? parentContext,
  ]) {
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
          DropdownButton<String>(
            value: value,
            onChanged: (newValue) {
              if (newValue != null) {
                onChanged(newValue);

                // Si c'est le thème, on applique le changement
                if (title == 'Thème' && parentContext != null) {
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
            items: options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    color: themeService.isDarkMode
                        ? AppTheme.darkTextPrimaryColor
                        : AppTheme.textPrimaryColor,
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
