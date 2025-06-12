/// Widget YourTourActionsSection
/// Affiche les boutons d'action en bas de l'écran YourTour (ex : Edit Tour).
///
/// Props :
///   - VoidCallback onEdit : callback appelé lors du clic sur Edit Tour
import 'package:flutter/material.dart';

class YourTourActionsSection extends StatelessWidget {
  final VoidCallback onEdit;
  const YourTourActionsSection({Key? key, required this.onEdit})
    : super(key: key);

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
                color: const Color(0xFF93E0B2),
              ),
              padding: const EdgeInsets.symmetric(vertical: 9),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Edit Tour",
                  style: TextStyle(
                    color: Color(0xFF141E16),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          color: const Color(0xFF141E16),
          height: 20,
          width: double.infinity,
        ),
      ],
    );
  }
}
