import 'package:flutter/material.dart';

class PlaceEventCalendarActions extends StatelessWidget {
  const PlaceEventCalendarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement add event
              },
              icon: const Icon(Icons.add),
              label: const Text('Ajouter un événement'),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {
              // TODO: Implement filter events
            },
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
    );
  }
}
