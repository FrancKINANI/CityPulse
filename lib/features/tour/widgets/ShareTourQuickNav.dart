/// Widget ShareTourQuickNav
/// Affiche la barre de navigation rapide en bas de l'écran ShareTour.
///
/// Props :
///   - int selectedIndex : index sélectionné
///   - ValueChanged<int> onNav : callback lors de la sélection
library;

import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';

class ShareTourQuickNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onNav;
  const ShareTourQuickNav({
    super.key,
    required this.selectedIndex,
    required this.onNav,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    final items = [
      {
        'iconUrl':
            'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/35c761c9-d4fd-4157-976b-de871f847263',
        'label': 'Explore',
        'color': themeService.currentTheme.textSecondaryColor,
      },
      {
        'iconUrl':
            'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b3b23ebf-879b-4ab7-9ba9-d0e9bf996153',
        'label': 'My Tours',
        'color': themeService.currentTheme.textPrimaryColor,
      },
      {
        'iconUrl':
            'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/637949da-8f5f-4dee-98ab-101401ce477b',
        'label': 'Create',
        'color': themeService.currentTheme.textSecondaryColor,
      },
      {
        'iconUrl':
            'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/09fe8f8c-a25f-4eb3-a420-c1b75e6b5115',
        'label': 'Profile',
        'color': themeService.currentTheme.textSecondaryColor,
      },
    ];
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: themeService.currentTheme.dividerColor,
            width: 1,
          ),
        ),
        color: themeService.currentTheme.colorScheme.surface,
      ),
      padding: const EdgeInsets.only(top: 9, bottom: 9, left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(items.length, (i) {
          final item = items[i];
          final isSelected = i == selectedIndex;
          return Expanded(
            child: GestureDetector(
              onTap: () => onNav(i),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 8,
                      left: 20,
                      right: 20,
                    ),
                    height: 24,
                    child: Image.network(
                      item['iconUrl'] as String,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    item['label'] as String,
                    style: TextStyle(
                      color: isSelected
                          ? (themeService.isDarkMode
                              ? AppTheme.darkSecondaryColor
                              : AppTheme.secondaryColor)
                          : item['color'] as Color,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
