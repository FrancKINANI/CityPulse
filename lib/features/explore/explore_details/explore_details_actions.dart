import 'package:flutter/material.dart';

class ExploreDetailsActions extends StatelessWidget {
  final VoidCallback onAddToTour;
  final VoidCallback onShare;
  final VoidCallback onCalendar;

  const ExploreDetailsActions({
    super.key,
    required this.onAddToTour,
    required this.onShare,
    required this.onCalendar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildActionButton(
              context: context,
              icon: Icons.add_circle_outline,
              label: 'Add to Tour',
              onPressed: onAddToTour,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _buildActionButton(
              context: context,
              icon: Icons.share,
              label: 'Share',
              onPressed: onShare,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _buildActionButton(
              context: context,
              icon: Icons.calendar_today,
              label: 'Calendar',
              onPressed: onCalendar,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.onPrimary, size: 24),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
