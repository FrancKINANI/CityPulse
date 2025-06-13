import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/theme_service.dart';
import '../../config/app_theme.dart';

/// Widget AuthHeader
/// En-tête pour les écrans d'authentification.
///
/// Props :
///   - String title : titre principal
///   - String? subtitle : sous-titre optionnel

class AuthHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const AuthHeader({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 48),
        Text(
          title,
          style: const TextStyle(
            color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        if (subtitle != null) ...[  
          const SizedBox(height: 16),
          Text(
            subtitle!,
            style: TextStyle(
              color: themeService.isDarkMode ? AppTheme.darkTextSecondaryColor : AppTheme.textSecondaryColor,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
        const SizedBox(height: 48),
      ],
    );
  }
}