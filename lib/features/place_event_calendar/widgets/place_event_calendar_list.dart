import 'package:flutter/material.dart';

class PlaceEventCalendarList extends StatelessWidget {
  const PlaceEventCalendarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Conférence sur l\'art'),
              subtitle: const Text('15 juin 2025, 14:00-16:00'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  // TODO: Implement event actions
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.music_note),
              title: const Text('Concert de jazz'),
              subtitle: const Text('20 juin 2025, 20:00-22:30'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  // TODO: Implement event actions
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
