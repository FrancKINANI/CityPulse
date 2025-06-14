/// Widget ShareTourActionsSection
/// Affiche le bouton d'action principal (Done) de l'écran ShareTour.
///
/// Props :
///   - VoidCallback onDone : callback appelé lors du clic sur Done
///   - ThemeService themeService : service pour gérer le thème de l'application
library;

import 'package:flutter/material.dart';
import '../../config/app_theme.dart'; // Importer AppTheme

class ShareTourActionsSection extends StatelessWidget {
  final VoidCallback onDone;
  final ThemeService themeService;
  const ShareTourActionsSection({
    super.key,
    required this.onDone,
    required this.themeService,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onDone,
      child: IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: themeService.isDarkMode
                ? AppTheme.darkSecondaryColor
                : AppTheme.secondaryColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          width: double.infinity,
          child: Center(
            child: Text(
              "Done",
              style: TextStyle(
                color: themeService.isDarkMode
                    ? AppTheme.darkPrimaryColor
                    : AppTheme.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
