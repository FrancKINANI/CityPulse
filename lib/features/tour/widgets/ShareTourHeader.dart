/// Widget ShareTourHeader
/// Affiche le header de l'écran ShareTour avec une image et un titre.
///
/// Props :
///   - String title : le titre du header
///   - String imageUrl : l'URL de l'image à afficher
library;

import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/services/theme_service.dart';

class ShareTourHeader extends StatelessWidget {
  final String title;
  final String imageUrl;
  final ThemeService themeService;
  const ShareTourHeader({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.themeService,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeService.isDarkMode
          ? AppTheme.darkBackgroundColor
          : AppTheme
                .backgroundColor, // Remplacé par la couleur de fond du thème
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12, right: 24),
            width: 24,
            height: 24,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
          Text(
            title,
            style: TextStyle(
              color: themeService.isDarkMode
                  ? AppTheme.darkTextPrimaryColor
                  : AppTheme
                        .textPrimaryColor, // Utiliser la couleur de texte primaire du thème
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
