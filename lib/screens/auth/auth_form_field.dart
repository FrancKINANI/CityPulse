import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/theme_service.dart';
import '../../config/app_theme.dart';

/// Widget AuthFormField
/// Champ de formulaire réutilisable pour les écrans d'authentification.
///
/// Props :
///   - TextEditingController controller : contrôleur du champ
///   - String hintText : texte d'indication
///   - bool obscureText : si le texte doit être masqué (mot de passe)
///   - String? Function(String?)? validator : fonction de validation
///   - TextInputType keyboardType : type de clavier à afficher
///   - bool autofocus : si le champ doit avoir le focus automatiquement
///   - FocusNode? focusNode : nœud de focus pour la gestion du focus
///   - Function(String)? onChanged : callback lors du changement de valeur
///   - Function(String)? onSubmitted : callback lors de la soumission

class AuthFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool autofocus;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const AuthFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.autofocus = false,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: themeService.isDarkMode ? AppTheme.darkCardColor : AppTheme.cardColor,
        hintText: hintText,
        hintStyle: TextStyle(color: themeService.isDarkMode ? AppTheme.darkTextSecondaryColor : AppTheme.textSecondaryColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
      validator: validator,
      keyboardType: keyboardType,
      autofocus: autofocus,
      focusNode: focusNode,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
    );
  }
}