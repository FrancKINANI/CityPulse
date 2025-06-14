/// Widget ShareTourIntroSection
/// Affiche le titre et la description d'introduction de l'écran ShareTour.
///
/// Props :
///   - String title : le titre d'intro
///   - String description : le texte de description
///   - ThemeService themeService : le service de gestion des thèmes
library;

import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/services/theme_service.dart';

class ShareTourIntroSection extends StatelessWidget {
  final String title;
  final String description;
  final ThemeService themeService;
  const ShareTourIntroSection({
    super.key,
    required this.title,
    required this.description,
    required this.themeService,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
          child: Text(
            title,
            style: TextStyle(
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme.textPrimaryColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          width: double.infinity,
          child: Text(
            description,
            style: TextStyle(
              color: themeService.isDarkMode
                  ? AppTheme.darkTextSecondaryColor
                  : AppTheme.textSecondaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
