import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../services/theme_service.dart';
import '../../../../config/app_theme.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      body: Container(
        color: themeService.isDarkMode ? AppTheme.darkBackgroundColor : AppTheme.backgroundColor,
        child: Center(
          child: Text(
            'Welcome to CityPulse',
            style: TextStyle(
              color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
