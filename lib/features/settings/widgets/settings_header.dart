import 'package:flutter/material.dart';
import '../../config/app_theme.dart';
import '../../services/theme_service.dart';

class SettingsHeader extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userAvatar;
  final VoidCallback onEditProfile;

  const SettingsHeader({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userAvatar,
    required this.onEditProfile,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Container(
      color: themeService.isDarkMode ? AppTheme.darkBackgroundColor : AppTheme.backgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const BackButton(color: AppTheme.textColor),
              const SizedBox(width: 8),
              const Text(
                'Paramètres',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppTheme.backgroundColor.withOpacity(0.1),
                    width: 2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.network(userAvatar, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      userEmail,
                      style: TextStyle(
                        fontSize: 14,
                        color: themeService.isDarkMode ? AppTheme.darkTextSecondaryColor : AppTheme.textSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: onEditProfile,
                icon: Icon(Icons.edit, color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
