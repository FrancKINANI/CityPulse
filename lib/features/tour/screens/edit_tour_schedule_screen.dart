import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';

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
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Edit Tour Schedule',
          style: AppTheme.headingStyle.copyWith(color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor),
        ),
        backgroundColor: themeService.isDarkMode ? AppTheme.darkBackgroundColor : AppTheme.backgroundColor,
      ),
      body: Container(
        color: themeService.isDarkMode ? AppTheme.darkBackgroundColor : AppTheme.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Drag and drop to reorder, tap to set time:',
                style: AppTheme.headingStyle.copyWith(color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor),
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
                      color: themeService.isDarkMode ? AppTheme.darkCardColor : AppTheme.cardColor,
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
                                    style: AppTheme.bodyStyle.copyWith(
                                      color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
                                    ),
                                  ),
                                  TextFormField(
                                    initialValue: location['time'],
                                    style: AppTheme.captionStyle.copyWith(
                                      color: themeService.isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'HH:MM',
                                      hintStyle: AppTheme.captionStyle.copyWith(
                                        color: themeService.isDarkMode ? AppTheme.darkTextSecondaryColor : AppTheme.textSecondaryColor,
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
                              color: themeService.isDarkMode ? AppTheme.darkTextSecondaryColor : AppTheme.textSecondaryColor,
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
                    backgroundColor: themeService.isDarkMode ? AppTheme.darkAccentColor : AppTheme.accentColor,
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
                    style: AppTheme.bodyStyle.copyWith(
                      color: themeService.isDarkMode ? AppTheme.darkPrimaryColor : AppTheme.primaryColor,
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
