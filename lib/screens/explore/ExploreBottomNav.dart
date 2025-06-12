import 'package:flutter/material.dart';
import '../../config/app_theme.dart';

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
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppTheme.dividerColor, width: 1),
        ),
        color: AppTheme.backgroundColor,
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onIndexChanged,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: AppTheme.accentColor,
        unselectedItemColor: AppTheme.textSecondaryColor,
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
