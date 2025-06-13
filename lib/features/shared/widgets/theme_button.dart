import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../services/theme_service.dart';
import '../../../config/app_theme.dart';

class ThemeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isDarkMode;

  const ThemeButton({
    super.key,
    required this.onPressed,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isDarkMode ? Icons.light_mode : Icons.dark_mode,
        color: Provider.of<ThemeService>(context).isDarkMode 
          ? AppTheme.darkTextPrimaryColor 
          : AppTheme.textPrimaryColor,
      ),
    );
  }
}
