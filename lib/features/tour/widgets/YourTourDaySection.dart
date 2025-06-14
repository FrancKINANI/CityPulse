/// Widget YourTourDaySection
/// Affiche une journée du tour avec son titre et la liste des étapes.
///
/// Props :
///   - String dayTitle : le titre de la journée (ex : 'Day 1')
///   - List<YourTourStep> steps : liste des étapes de la journée
///   - ThemeService themeService : service de thème pour les couleurs
library;

import 'package:flutter/material.dart';
import '../../../config/app_theme.dart';
import 'package:citypulse/services/theme_service.dart';

class YourTourStep {
  final String imageUrl;
  final String title;
  final String time;
  const YourTourStep({
    required this.imageUrl,
    required this.title,
    required this.time,
  });
}

class YourTourDaySection extends StatelessWidget {
  final String dayTitle;
  final List<YourTourStep> steps;
  final ThemeService themeService;
  const YourTourDaySection({
    super.key,
    required this.dayTitle,
    required this.steps,
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
            dayTitle,
            style: AppTheme.subheadingStyle.copyWith(
                color: themeService.isDarkMode
                    ? AppTheme.darkTextPrimaryColor
                    : AppTheme.textPrimaryColor),
          ),
        ),
        for (final step in steps) _YourTourStepCard(step: step, themeService: themeService),
      ],
    );
  }
}

class _YourTourStepCard extends StatelessWidget {
  final YourTourStep step;
  final ThemeService themeService;
  const _YourTourStepCard({required this.step, required this.themeService});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeService.isDarkMode ? AppTheme.darkCardColor : AppTheme.cardColor,
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 100,
            height: 56,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(step.imageUrl, fit: BoxFit.fill),
            ),
          ),
          IntrinsicWidth(
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    step.title,
                    style: AppTheme.bodyStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: themeService.isDarkMode
                          ? AppTheme.darkTextPrimaryColor
                          : AppTheme.textPrimaryColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 11),
                    child: Text(
                      step.time,
                      style: AppTheme.captionStyle.copyWith(
                        color: themeService.isDarkMode
                            ? AppTheme.darkTextSecondaryColor
                            : AppTheme.textSecondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
