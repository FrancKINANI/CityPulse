import 'package:flutter/material.dart';
import '../../config/styles.dart';

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
          top: BorderSide(color: AppStyles.dividerColor, width: 1),
        ),
        color: AppStyles.backgroundColor,
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onIndexChanged,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: AppStyles.accentColor,
        unselectedItemColor: AppStyles.textLightColor,
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
