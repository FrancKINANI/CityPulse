import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:flutter/services.dart';

class TourCapacity extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;

  const TourCapacity({super.key, required this.controller, this.errorText});

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tour Capacity',
            style: themeService.isDarkMode ? AppTheme.darkHeadingStyle : AppTheme.headingStyle,
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: 'Enter maximum number of participants',
              hintStyle: TextStyle(color: themeService.isDarkMode ? AppTheme.darkTextSecondaryColor : AppTheme.textSecondaryColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: themeService.isDarkMode ? AppTheme.darkDividerColor : AppTheme.dividerColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: themeService.isDarkMode ? AppTheme.darkDividerColor : AppTheme.dividerColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: themeService.isDarkMode ? AppTheme.darkSecondaryColor : AppTheme.secondaryColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppTheme.errorColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppTheme.errorColor),
              ),
              errorStyle: TextStyle(color: AppTheme.errorColor),
              errorText: errorText,
            ),
          ),
        ],
      ),
    );
  }
}
