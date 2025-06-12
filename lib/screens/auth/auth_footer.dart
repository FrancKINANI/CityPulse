import 'package:flutter/material.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF9BBFAA),
            fontSize: 14,
          ),
        ),
        TextButton(
          onPressed: onLinkPressed,
          child: Text(
            linkText,
            style: const TextStyle(
              color: Color(0xFF4CAF50),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}