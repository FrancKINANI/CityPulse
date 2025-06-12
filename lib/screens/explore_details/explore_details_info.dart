import 'package:flutter/material.dart';

class ExploreDetailsInfo extends StatelessWidget {
  final String description;
  final String hours;
  final String phone;
  final String website;

  const ExploreDetailsInfo({
    Key? key,
    required this.description,
    required this.hours,
    required this.phone,
    required this.website,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF112116),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Color(0xFF4A4A4A)),
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
        Icon(icon, size: 20, color: const Color(0xFF112116)),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF112116),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(fontSize: 14, color: Color(0xFF4A4A4A)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
