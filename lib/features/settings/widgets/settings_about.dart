import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:provider/provider.dart';

class SettingsAbout extends StatelessWidget {
  final String appVersion;
  final VoidCallback onPrivacyPolicy;
  final VoidCallback onTermsOfService;
  final VoidCallback onLicenses;
  final VoidCallback onHelp;

  const SettingsAbout({
    super.key,
    required this.appVersion,
    required this.onPrivacyPolicy,
    required this.onTermsOfService,
    required this.onLicenses,
    required this.onHelp,
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
            'À propos',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 16),
          buildInfoRow(themeService, 'Version', appVersion),
          const Divider(),
          buildActionRow(
            themeService,
            'Politique de confidentialité',
            Icons.privacy_tip_outlined,
            onPrivacyPolicy,
          ),
          const Divider(),
          buildActionRow(
            themeService,
            'Conditions d\'utilisation',
            Icons.description_outlined,
            onTermsOfService,
          ),
          const Divider(),
          buildActionRow(
            themeService,
            'Licences',
            Icons.file_copy_outlined,
            onLicenses,
          ),
          const Divider(),
          buildActionRow(themeService, 'Aide', Icons.help_outline, onHelp),
        ],
      ),
    );
  }

  Widget buildInfoRow(ThemeService themeService, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme.textPrimaryColor,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextSecondaryColor
                  : AppTheme.textSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildActionRow(
    ThemeService themeService,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme.textPrimaryColor,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: themeService.isDarkMode
                      ? AppTheme.darkTextPrimaryColor
                      : AppTheme.textPrimaryColor,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme.textPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
