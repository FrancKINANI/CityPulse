import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isDarkMode;

  const ThemeButton({
    super.key,
    required this.onPressed,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isDarkMode ? Icons.light_mode : Icons.dark_mode,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
