import 'package:flutter/material.dart';

class EditTourScheduleScreen extends StatefulWidget {
  final List<Map<String, String>> selectedLocations;

  const EditTourScheduleScreen({super.key, required this.selectedLocations});

  @override
  State<EditTourScheduleScreen> createState() => _EditTourScheduleScreenState();
}

class _EditTourScheduleScreenState extends State<EditTourScheduleScreen> {
  late List<Map<String, String>>
  _editableLocations; // List to hold mutable locations

  @override
  void initState() {
    super.initState();
    _editableLocations = List.from(widget.selectedLocations);
    // Initialize with a dummy time for each location for now
    for (var location in _editableLocations) {
      location['time'] = '00:00'; // Default time
    }
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final item = _editableLocations.removeAt(oldIndex);
      _editableLocations.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).appBarTheme.iconTheme?.color,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Edit Tour Schedule',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Drag and drop to reorder, tap to set time:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ReorderableListView.builder(
                  itemCount: _editableLocations.length,
                  itemBuilder: (context, index) {
                    final location = _editableLocations[index];
                    return Card(
                      key: ValueKey(location['name']),
                      color: Theme.of(context).cardColor,
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    location['name']!,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge,
                                  ),
                                  TextFormField(
                                    initialValue: location['time'],
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium,
                                    decoration: InputDecoration(
                                      hintText: 'HH:MM',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: Theme.of(context).hintColor,
                                          ),
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) {
                                      location['time'] = value;
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.drag_handle,
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  onReorder: _onReorder,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Implement saving schedule and navigating back or to next step
                    // For now, just pop with the updated list
                    Navigator.pop(context, _editableLocations);
                  },
                  child: Text(
                    'Save Schedule',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
