import 'package:flutter/material.dart';
// import 'package:provider/provider.dart'; // Supprimé
// import 'package:citypulse/services/theme_service.dart'; // Supprimé
// import 'package:citypulse/config/app_theme.dart'; // Supprimé

class LoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;

  const LoadingIndicator({super.key, this.size = 20, this.color});

  @override
  Widget build(BuildContext context) {
    // final themeService = Provider.of<ThemeService>(context); // Supprimé
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: color ?? Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
