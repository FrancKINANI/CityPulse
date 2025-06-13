import 'package:flutter/material.dart';

class PlaceEventCalendarFilters extends StatelessWidget {
  const PlaceEventCalendarFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Filtres',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              FilterChip(
                label: const Text('Musique'),
                onSelected: (bool selected) {
                  // TODO: Implement filter selection
                },
              ),
              FilterChip(
                label: const Text('Art'),
                onSelected: (bool selected) {
                  // TODO: Implement filter selection
                },
              ),
              FilterChip(
                label: const Text('Conférences'),
                onSelected: (bool selected) {
                  // TODO: Implement filter selection
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
