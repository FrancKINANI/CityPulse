import 'package:flutter/material.dart';

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
      color: Theme.of(context).cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          Text(description, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 24),
          _buildInfoItem(context, Icons.access_time, 'Hours', hours),
          const SizedBox(height: 16),
          _buildInfoItem(context, Icons.phone, 'Phone', phone),
          const SizedBox(height: 16),
          _buildInfoItem(context, Icons.language, 'Website', website),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
    BuildContext context,
    IconData icon,
    String label,
    String value,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Theme.of(context).iconTheme.color),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 4),
              Text(value, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ],
    );
  }
}
