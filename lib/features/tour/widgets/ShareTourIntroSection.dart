/// Widget ShareTourIntroSection
/// Affiche le titre et la description d'introduction de l'écran ShareTour.
///
/// Props :
///   - String title : le titre d'intro
///   - String description : le texte de description
library;

import 'package:flutter/material.dart';

class ShareTourIntroSection extends StatelessWidget {
  final String title;
  final String description;
  const ShareTourIntroSection({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
          child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          width: double.infinity,
          child: Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
