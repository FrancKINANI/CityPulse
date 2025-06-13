import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../services/theme_service.dart';
import '../../../../config/app_theme.dart';

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
    final themeService = Provider.of<ThemeService>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: filters.map((filter) {
          final isSelected = filter == selected;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => onSelect(filter),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppTheme.primaryColor
                      : themeService.isDarkMode
                          ? AppTheme.darkBackgroundColor
                          : AppTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isSelected
                        ? AppTheme.primaryColor
                        : themeService.isDarkMode
                            ? AppTheme.darkTextSecondaryColor
                            : AppTheme.textSecondaryColor,
                  ),
                ),
                child: Text(
                  filter,
                  style: TextStyle(
                    color: isSelected
                        ? themeService.isDarkMode
                            ? AppTheme.darkTextPrimaryColor
                            : AppTheme.textPrimaryColor
                        : themeService.isDarkMode
                            ? AppTheme.darkTextSecondaryColor
                            : AppTheme.textSecondaryColor,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
