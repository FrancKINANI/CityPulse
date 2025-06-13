/// Widget ExploreFilters
/// Affiche les filtres de l'écran Explore (All, Featured, New, etc.).
/// Permet de sélectionner un filtre et notifie le parent via onSelect.
///
/// Props :
///   - String selected : le filtre actuellement sélectionné
///   - ValueChanged<String> onSelect : callback lors de la sélection
///   - List<String> filters : liste des filtres à afficher
library;

import 'package:flutter/material.dart';
import '../../config/app_theme.dart'; // Importer AppTheme

class ExploreFilters extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onSelect;
  final List<String> filters;
  const ExploreFilters({
    super.key,
    required this.selected,
    required this.onSelect,
    required this.filters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 7, bottom: 7, left: 12, right: 12),
      width: double.infinity,
      child: Row(
        children: [
          ...filters.map(
            (filter) => Padding(
              padding: const EdgeInsets.only(right: 12),
              child: InkWell(
                onTap: () => onSelect(filter),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: selected == filter
                        ? AppTheme
                              .secondaryColor // Couleur secondaire pour le filtre sélectionné (orange)
                        : AppTheme
                              .primaryLightColor, // Couleur claire du thème pour les filtres non sélectionnés
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 16,
                  ),
                  child: Text(
                    filter,
                    style: TextStyle(
                      color: selected == filter
                          ? AppTheme
                                .backgroundColor // Texte blanc sur fond orange (sélectionné)
                          : AppTheme
                                .textPrimaryColor, // Texte primaire sur fond clair (non sélectionné)
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
