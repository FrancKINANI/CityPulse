/// Widget YourTourActionsSection
/// Affiche les boutons d'action en bas de l'écran YourTour (ex : Edit Tour).
///
/// Props :
///   - VoidCallback onEdit : callback appelé lors du clic sur Edit Tour
///   - ThemeService themeService : service pour gérer le thème de l'application
library;
import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/services/theme_service.dart';

class YourTourActionsSection extends StatelessWidget {
  final VoidCallback onEdit;
  final ThemeService themeService;
  const YourTourActionsSection({
    super.key,
    required this.onEdit,
    required this.themeService,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onEdit,
          child: IntrinsicHeight(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: themeService.isDarkMode
                    ? AppTheme.darkAccentColor
                    : AppTheme.accentColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 9),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              width: double.infinity,
              child: Center(
                child: Text(
                  "Edit Tour",
                  style: TextStyle(
                    color: themeService.isDarkMode
                        ? AppTheme.darkPrimaryColor
                        : AppTheme.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          color: themeService.isDarkMode
              ? AppTheme.darkBackgroundColor
              : AppTheme.backgroundColor,
          height: 20,
          width: double.infinity,
        ),
      ],
    );
  }
}
