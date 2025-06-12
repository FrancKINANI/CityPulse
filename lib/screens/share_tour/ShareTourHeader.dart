/// Widget ShareTourHeader
/// Affiche le header de l'écran ShareTour avec une image et un titre.
///
/// Props :
///   - String title : le titre du header
///   - String imageUrl : l'URL de l'image à afficher
import 'package:flutter/material.dart';

class ShareTourHeader extends StatelessWidget {
  final String title;
  final String imageUrl;
  const ShareTourHeader({Key? key, required this.title, required this.imageUrl})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF112116),
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
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
