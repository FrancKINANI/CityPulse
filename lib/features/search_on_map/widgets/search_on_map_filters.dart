import 'package:flutter/material.dart';

class SearchOnMapFilters extends StatelessWidget {
  const SearchOnMapFilters({Key? key}) : super(key: key);

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
                label: const Text('Restaurants'),
                onSelected: (bool selected) {
                  // TODO: Implement filter selection
                },
              ),
              FilterChip(
                label: const Text('Hôtels'),
                onSelected: (bool selected) {
                  // TODO: Implement filter selection
                },
              ),
              FilterChip(
                label: const Text('Musées'),
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
