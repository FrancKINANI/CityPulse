/// Widget SearchOnMapHeader
/// Affiche le header de l'écran SearchOnMap avec un titre centré et une image à droite.
///
/// Props :
///   - String title : le titre du header
///   - String imageUrl : l'URL de l'image à afficher à droite
library;
import 'package:flutter/material.dart';

class SearchOnMapHeader extends StatelessWidget {
  final String title;
  final String imageUrl;
  const SearchOnMapHeader({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF112116),
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 64, right: 16),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12, left: 24),
            width: 24,
            height: 24,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
