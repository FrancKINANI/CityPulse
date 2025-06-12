/// Widget SearchOnMapFilters
/// Affiche les filtres de l'écran SearchOnMap (All, Places, Events, Tours).
/// Permet de sélectionner un filtre et notifie le parent via onSelect.
///
/// Props :
///   - String selected : le filtre actuellement sélectionné
///   - ValueChanged<String> onSelect : callback lors de la sélection
///   - List<String> filters : liste des filtres à afficher
import 'package:flutter/material.dart';

class SearchOnMapFilters extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onSelect;
  final List<String> filters;
  const SearchOnMapFilters({
    Key? key,
    required this.selected,
    required this.onSelect,
    required this.filters,
  }) : super(key: key);

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
                    ? const Color(0xFF356347)
                    : const Color(0xFF264433),
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
                  color: Colors.white,
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
