import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/config/app_theme.dart';

/// Widget AuthFooter
/// Pied de page pour les écrans d'authentification avec des liens vers d'autres écrans.
///
/// Props :
///   - String text : texte principal
///   - String linkText : texte du lien
///   - VoidCallback onLinkPressed : callback lors du clic sur le lien

class AuthFooter extends StatelessWidget {
  final String text;
  final String linkText;
  final VoidCallback onLinkPressed;

  const AuthFooter({
    super.key,
    required this.text,
    required this.linkText,
    required this.onLinkPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: themeService.isDarkMode
                ? AppTheme.darkTextSecondaryColor
                : AppTheme.textSecondaryColor,
            fontSize: 14,
          ),
        ),
        TextButton(
          onPressed: onLinkPressed,
          child: Text(
            linkText,
            style: TextStyle(
              color: themeService.isDarkMode
                  ? AppTheme.darkSecondaryColor
                  : AppTheme.secondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
