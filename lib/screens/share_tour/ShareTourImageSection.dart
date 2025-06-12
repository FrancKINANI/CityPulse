/// Widget ShareTourImageSection
/// Affiche la grande image principale de l'écran ShareTour.
///
/// Props :
///   - String imageUrl : l'URL de l'image à afficher
import 'package:flutter/material.dart';

class ShareTourImageSection extends StatelessWidget {
  final String imageUrl;
  const ShareTourImageSection({Key? key, required this.imageUrl})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(imageUrl, fit: BoxFit.fill),
      ),
    );
  }
}
