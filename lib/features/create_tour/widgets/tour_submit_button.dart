import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/config/app_theme.dart';

class TourSubmitButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;

  const TourSubmitButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
  final bool isLoading;
  final VoidCallback onPressed;

  const TourSubmitButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: AppTheme.primaryButtonStyle.copyWith(
            backgroundColor: WidgetStateProperty.all(
              themeService.isDarkMode ? AppTheme.darkSecondaryColor : AppTheme.secondaryColor,
            ),
          ),
          child: isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
                  ),
                )
              : const Text(
                  'Create Tour',
                  style: TextStyle(
                    color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
