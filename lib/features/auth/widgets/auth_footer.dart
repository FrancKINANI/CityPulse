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
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
          ),
        ),
        TextButton(
          onPressed: onLinkPressed,
          child: Text(
            linkText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
