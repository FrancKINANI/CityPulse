import 'package:flutter/material.dart';

/// Widget AuthButton
/// Bouton d'action réutilisable pour les écrans d'authentification.
///
/// Props :
///   - String text : texte du bouton
///   - VoidCallback onPressed : callback lors du clic
///   - bool isLoading : si le bouton est en cours de chargement
///   - Color? backgroundColor : couleur de fond du bouton
///   - Color? textColor : couleur du texte du bouton

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;

  const AuthButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: isLoading
          ? CircularProgressIndicator(
              color: textColor ?? Theme.of(context).colorScheme.onPrimary,
            )
          : Text(
              text,
              style: TextStyle(
                color: textColor ?? Theme.of(context).colorScheme.onPrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
