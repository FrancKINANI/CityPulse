import 'package:citypulse/config/app_theme.dart';
import 'package:flutter/material.dart';

class CreateTourHeader extends StatelessWidget {
  const CreateTourHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: AppTheme.darkPrimaryColor),
            onPressed: () => Navigator.pop(context),
          ),
          const Text(
            'Create Tour',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.darkPrimaryColor,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              // TODO: Implement help functionality
            },
          ),
        ],
      ),
    );
  }
}
