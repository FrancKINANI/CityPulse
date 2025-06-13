import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/config/app_theme.dart';

class TourProgressBar extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const TourProgressBar({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinearProgressIndicator(
            value: currentStep / totalSteps,
            backgroundColor: themeService.isDarkMode ? AppTheme.darkDividerColor : AppTheme.dividerColor,
            valueColor: AlwaysStoppedAnimation<Color>(themeService.isDarkMode ? AppTheme.darkSecondaryColor : AppTheme.secondaryColor),
          ),
          const SizedBox(height: 8),
          Text(
            'Step $currentStep of $totalSteps',
            style: TextStyle(
              color: themeService.isDarkMode ? AppTheme.darkTextSecondaryColor : AppTheme.textSecondaryColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
