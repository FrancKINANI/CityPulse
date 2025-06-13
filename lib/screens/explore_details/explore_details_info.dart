import 'package:flutter/material.dart';
import '../../config/app_theme.dart';

class ExploreDetailsInfo extends StatelessWidget {
  final String description;
  final String hours;
  final String phone;
  final String website;

  const ExploreDetailsInfo({
    super.key,
    required this.description,
    required this.hours,
    required this.phone,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: TextStyle(fontSize: 14, color: AppTheme.textSecondaryColor),
          ),
          const SizedBox(height: 24),
          _buildInfoItem(Icons.access_time, 'Hours', hours),
          const SizedBox(height: 16),
          _buildInfoItem(Icons.phone, 'Phone', phone),
          const SizedBox(height: 16),
          _buildInfoItem(Icons.language, 'Website', website),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: AppTheme.textPrimaryColor),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textPrimaryColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  color: AppTheme.textSecondaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
