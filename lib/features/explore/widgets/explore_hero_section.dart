/// Widget ExploreHeroSection
/// Affiche l'image principale, le titre, la description et la durée de lecture de la section hero de l'écran Explore.
///
/// Props :
///   - String imageUrl : URL de l'image principale
///   - String title : titre de la section
///   - String description : description courte
///   - String duration : durée de lecture ou info complémentaire
library;

import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';

class ExploreHeroSection extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String duration;
  const ExploreHeroSection({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            height: 201,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppTheme.textPrimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    color: AppTheme.textSecondaryColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  duration,
                  style: TextStyle(
                    color: AppTheme.textSecondaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
