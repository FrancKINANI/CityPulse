/// Widget SearchOnMapFilters
/// Affiche les filtres de l'écran SearchOnMap (All, Places, Events, Tours).
/// Permet de sélectionner un filtre et notifie le parent via onSelect.
///
/// Props :
///   - String selected : le filtre actuellement sélectionné
///   - ValueChanged<String> onSelect : callback lors de la sélection
///   - List<String> filters : liste des filtres à afficher
library;

import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart'; // Importer AppTheme

class SearchOnMapFilters extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onSelect;
  final List<String> filters;
  const SearchOnMapFilters({
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
        children: filters.map((filter) {
          final isSelected = filter == selected;
          return InkWell(
            onTap: () => onSelect(filter),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: isSelected
                    ? AppTheme
                          .secondaryColor // Couleur secondaire pour le filtre sélectionné (orange)
                    : AppTheme
                          .primaryLightColor, // Couleur claire du thème pour les filtres non sélectionnés
              ),
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 16,
                right: 16,
              ),
              margin: const EdgeInsets.only(right: 12),
              child: Text(
                filter,
                style: TextStyle(
                  color: AppTheme
                      .textPrimaryColor, // Utiliser la couleur de texte primaire du thème
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
