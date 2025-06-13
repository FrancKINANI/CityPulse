import 'package:flutter/material.dart';

class LegacyActions extends StatelessWidget {
  final List<ActionItem> actions;

  const LegacyActions({
    Key? key,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final action in actions)
            ElevatedButton.icon(
              onPressed: action.onPressed,
              icon: Icon(action.icon),
              label: Text(action.label),
            ),
        ],
      ),
    );
  }
}

class ActionItem {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ActionItem({
    required this.icon,
    required this.label,
    required this.onPressed,
  });
}
