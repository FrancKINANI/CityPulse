/// Widget YourTourActionsSection
/// Affiche les boutons d'action en bas de l'écran YourTour (ex : Edit Tour).
///
/// Props :
///   - VoidCallback onEdit : callback appelé lors du clic sur Edit Tour
///
library;

import 'package:flutter/material.dart';

class YourTourActionsSection extends StatelessWidget {
  final VoidCallback onEdit;
  const YourTourActionsSection({super.key, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onEdit,
          child: IntrinsicHeight(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary,
              ),
              padding: const EdgeInsets.symmetric(vertical: 9),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              width: double.infinity,
              child: Center(
                child: Text(
                  "Edit Tour",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          height: 20,
          width: double.infinity,
        ),
      ],
    );
  }
}
