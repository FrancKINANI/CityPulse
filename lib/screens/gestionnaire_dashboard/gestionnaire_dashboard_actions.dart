import 'package:flutter/material.dart';

class GestionnaireDashboardActions extends StatelessWidget {
  final VoidCallback onAddPlace;
  final VoidCallback onModerate;
  final VoidCallback onViewReports;
  final VoidCallback onSettings;

  const GestionnaireDashboardActions({
    super.key,
    required this.onAddPlace,
    required this.onModerate,
    required this.onViewReports,
    required this.onSettings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Actions rapides',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF141E16),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildActionButton(
                  icon: Icons.add_location,
                  label: 'Ajouter un lieu',
                  onTap: onAddPlace,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildActionButton(
                  icon: Icons.manage_search,
                  label: 'Modérer',
                  onTap: onModerate,
                  isHighlighted: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildActionButton(
                  icon: Icons.report_outlined,
                  label: 'Voir les signalements',
                  onTap: onViewReports,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildActionButton(
                  icon: Icons.settings,
                  label: 'Paramètres',
                  onTap: onSettings,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    bool isHighlighted = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isHighlighted
              ? const Color(0xFF1E2D22)
              : const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: isHighlighted ? Colors.white : const Color(0xFF141E16),
              size: 24,
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isHighlighted ? Colors.white : const Color(0xFF141E16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
