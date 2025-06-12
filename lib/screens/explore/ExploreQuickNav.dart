/// Widget ExploreQuickNav
/// Affiche la barre de navigation rapide en bas de l'écran Explore (Explore, Tours, Profile, etc.).
///
/// Props :
///   - ValueChanged<int> onNav : callback appelé avec l'index de la section sélectionnée
import 'package:flutter/material.dart';

class ExploreQuickNav extends StatelessWidget {
  final ValueChanged<int> onNav;
  final int selectedIndex;
  const ExploreQuickNav({
    Key? key,
    required this.onNav,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.explore, 'label': 'Explore'},
      {'icon': Icons.tour, 'label': 'Tours'},
      {'icon': Icons.person, 'label': 'Profile'},
    ];
    return Container(
      color: const Color(0xFF112116),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(items.length, (i) {
          final item = items[i];
          final isSelected = i == selectedIndex;
          return GestureDetector(
            onTap: () => onNav(i),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  item['icon'] as IconData,
                  color: isSelected ? const Color(0xFF356347) : Colors.white,
                ),
                Text(
                  item['label'] as String,
                  style: TextStyle(
                    color: isSelected ? const Color(0xFF356347) : Colors.white,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
