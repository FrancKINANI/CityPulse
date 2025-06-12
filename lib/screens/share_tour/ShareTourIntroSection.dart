/// Widget ShareTourIntroSection
/// Affiche le titre et la description d'introduction de l'écran ShareTour.
///
/// Props :
///   - String title : le titre d'intro
///   - String description : le texte de description
import 'package:flutter/material.dart';

class ShareTourIntroSection extends StatelessWidget {
  final String title;
  final String description;
  const ShareTourIntroSection({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          width: double.infinity,
          child: Text(
            description,
            style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
          ),
        ),
      ],
    );
  }
}
