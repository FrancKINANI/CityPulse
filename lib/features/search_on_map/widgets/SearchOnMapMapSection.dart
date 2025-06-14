/// Widget SearchOnMapMapSection
/// Affiche l'image de la carte sur l'écran SearchOnMap.
///
/// Props :
///   - String imageUrl : l'URL de l'image de la carte à afficher
library;
import 'package:flutter/material.dart';

class SearchOnMapMapSection extends StatelessWidget {
  final String imageUrl;
  const SearchOnMapMapSection({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: Image.network(imageUrl, fit: BoxFit.fill),
    );
  }
}
