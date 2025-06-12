import 'package:flutter/material.dart';

class TourLocation extends StatelessWidget {
  final List<Map<String, String>> selectedLocations;
  final Function(Map<String, String>) onLocationRemoved;
  final VoidCallback? onAddLocationButtonPressed;

  const TourLocation({
    super.key,
    required this.selectedLocations,
    required this.onLocationRemoved,
    this.onAddLocationButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tour Locations',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: selectedLocations.map((location) {
              return Chip(
                label: Text(location['name']!),
                onDeleted: () => onLocationRemoved(location),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: onAddLocationButtonPressed,
            icon: const Icon(Icons.add_location),
            label: const Text('Add Location'),
          ),
        ],
      ),
    );
  }
}
