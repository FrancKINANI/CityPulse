import 'package:flutter/material.dart';
import 'package:citypulse/config/styles.dart';

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
          icon: const Icon(Icons.arrow_back, color: AppStyles.textColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Edit Tour Schedule',
          style: AppStyles.headline3.copyWith(color: AppStyles.textColor),
        ),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Container(
        color: AppStyles.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Drag and drop to reorder, tap to set time:',
                style: AppStyles.headline3.copyWith(color: AppStyles.textColor),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ReorderableListView.builder(
                  itemCount: _editableLocations.length,
                  itemBuilder: (context, index) {
                    final location = _editableLocations[index];
                    return Card(
                      key: ValueKey(
                        location['name'],
                      ), // Unique key for reordering
                      color: AppStyles.cardColor,
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
                                    style: AppStyles.body1.copyWith(
                                      color: AppStyles.textColor,
                                    ),
                                  ),
                                  TextFormField(
                                    initialValue: location['time'],
                                    style: AppStyles.body2.copyWith(
                                      color: AppStyles.textColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'HH:MM',
                                      hintStyle: AppStyles.body2.copyWith(
                                        color: AppStyles.textLightColor,
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
                            const Icon(
                              Icons.drag_handle,
                              color: AppStyles.textLightColor,
                            ), // Drag handle
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
                    backgroundColor: AppStyles.accentColor,
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
                    style: AppStyles.buttonText.copyWith(
                      color: AppStyles.primaryColor,
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
