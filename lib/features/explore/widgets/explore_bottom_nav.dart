import 'package:flutter/material.dart';
import '../../../config/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';

class ExploreBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onIndexChanged;

  const ExploreBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: themeService.isDarkMode
                ? AppTheme.darkDividerColor
                : AppTheme.dividerColor,
            width: 1,
          ),
        ),
        color: themeService.isDarkMode
            ? AppTheme.darkBackgroundColor
            : AppTheme.backgroundColor,
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onIndexChanged,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: themeService.isDarkMode
            ? AppTheme.darkAccentColor
            : AppTheme.accentColor,
        unselectedItemColor: themeService.isDarkMode
            ? AppTheme.darkTextSecondaryColor
            : AppTheme.textSecondaryColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Tours'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
