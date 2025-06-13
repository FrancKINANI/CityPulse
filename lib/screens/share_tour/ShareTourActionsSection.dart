/// Widget ShareTourActionsSection
/// Affiche le bouton d'action principal (Done) de l'écran ShareTour.
///
/// Props :
///   - VoidCallback onDone : callback appelé lors du clic sur Done
library;

import 'package:flutter/material.dart';
import '../../config/app_theme.dart'; // Importer AppTheme

class ShareTourActionsSection extends StatelessWidget {
  final VoidCallback onDone;
  const ShareTourActionsSection({super.key, required this.onDone});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onDone,
      child: IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppTheme
                .secondaryColor, // Remplacé par la couleur secondaire du thème (orange)
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          width: double.infinity,
          child: Center(
            child: Text(
              "Done",
              style: TextStyle(
                color: AppTheme
                    .backgroundColor, // Remplacé par la couleur de fond du thème (blanc)
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
