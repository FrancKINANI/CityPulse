/// Widget YourTourHeader
/// Affiche le header de l'écran YourTour avec une image et un titre.
///
/// Props :
///   - String title : le titre du header
///   - String imageUrl : l'URL de l'image à afficher
library;

import 'package:flutter/material.dart';

class YourTourHeader extends StatelessWidget {
  final String title;
  final String imageUrl;
  const YourTourHeader({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12, right: 24),
            width: 24,
            height: 24,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
