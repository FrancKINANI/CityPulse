import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/models/tour.dart';
import 'package:citypulse/services/tour_service.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/features/tour/widgets/tour_progress_bar.dart';

class CreateTourScreen extends StatefulWidget {
  const CreateTourScreen({super.key});

  @override
  State<CreateTourScreen> createState() => _CreateTourScreenState();
}

class _CreateTourScreenState extends State<CreateTourScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _capacityController = TextEditingController();
  final _searchController = TextEditingController();
  final _tourService = TourService();

  final List<Place> _selectedPlaces = [];
  final List<String> _imageUrls = [];
  DateTime? _startDate;
  DateTime? _endDate;
  bool _isLoading = false;
  final int _currentStep = 1;
  final int _totalSteps = 5;
  String _selectedCategory = 'All';

  // Dummy data for search results
  final List<Map<String, dynamic>> _searchResults = [];

  // Dummy data for popular places
  final List<Map<String, dynamic>> _popularPlaces = [
    {
      'id': 'place-001',
      'name': 'The Grand Central Park',
      'description': 'A beautiful urban park with various attractions.',
      'latitude': 40.7812,
      'longitude': -73.9665,
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5159c3db-0018-425c-80ce-6ac1cf473856',
      'categories': ['Park', 'Nature', 'Recreation'],
      'openingHours': {
        'Monday': '6:00 AM - 10:00 PM',
        'Tuesday': '6:00 AM - 10:00 PM',
      },
      'isAccessible': true,
    },
    {
      'id': 'place-002',
      'name': 'The Modern Art Museum',
      'description': 'A museum dedicated to modern and contemporary art.',
      'latitude': 40.7614,
      'longitude': -73.9776,
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/15d523e2-d4d9-4bd3-a024-0f0b1d1e9f9c',
      'categories': ['Museum', 'Art', 'Culture'],
      'openingHours': {'Monday': 'Closed', 'Tuesday': '10:00 AM - 5:30 PM'},
      'isAccessible': true,
    },
    {
      'id': 'place-003',
      'name': 'The City Zoo',
      'description':
          'A zoo with a diverse collection of animals from around the world.',
      'latitude': 40.7850,
      'longitude': -73.9500,
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/94cb2c14-07a5-46a2-81c8-34f4d5320dd7',
      'categories': ['Zoo', 'Family', 'Nature'],
      'openingHours': {
        'Monday': '10:00 AM - 5:00 PM',
        'Tuesday': '10:00 AM - 5:00 PM',
      },
      'isAccessible': true,
    },
    {
      'id': 'place-004',
      'name': 'Historic Downtown',
      'description':
          'The historic center of the city with beautiful architecture.',
      'latitude': 40.7127,
      'longitude': -74.0059,
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/731c3db3-e1e6-48c1-ab49-3d29e9f7059d',
      'categories': ['Historic', 'Architecture', 'Shopping'],
      'openingHours': {'Monday': 'Open 24 hours', 'Tuesday': 'Open 24 hours'},
      'isAccessible': true,
    },
    {
      'id': 'place-005',
      'name': 'Riverside Restaurant Row',
      'description':
          'A collection of fine dining establishments along the river.',
      'latitude': 40.7580,
      'longitude': -73.9855,
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f507d848-ddab-4920-b075-2031d80aff69',
      'categories': ['Restaurant', 'Food', 'Nightlife'],
      'openingHours': {
        'Monday': '11:00 AM - 11:00 PM',
        'Tuesday': '11:00 AM - 11:00 PM',
      },
      'isAccessible': true,
    },
  ];

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _capacityController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        _searchResults.clear();
      });
      return;
    }

    // Filter places based on search query and selected category
    final filteredPlaces = _popularPlaces.where((place) {
      final nameMatch = place['name'].toString().toLowerCase().contains(
        query.toLowerCase(),
      );
      final descriptionMatch = place['description']
          .toString()
          .toLowerCase()
          .contains(query.toLowerCase());

      if (_selectedCategory == 'All') {
        return nameMatch || descriptionMatch;
      } else {
        final categories = List<String>.from(place['categories'] ?? []);
        return (nameMatch || descriptionMatch) &&
            categories.contains(_selectedCategory);
      }
    }).toList();

    setState(() {
      _searchResults.clear();
      _searchResults.addAll(filteredPlaces);
    });
  }

  void _addPlaceToTour(Map<String, dynamic> placeData) {
    final place = Place.fromJson(placeData);

    // Check if place is already added
    if (_selectedPlaces.any((p) => p.id == place.id)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${place.name} is already in your tour')),
      );
      return;
    }

    setState(() {
      _selectedPlaces.add(place);
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('${place.name} added to your tour')));
  }

  void _removePlaceFromTour(Place place) {
    setState(() {
      _selectedPlaces.removeWhere((p) => p.id == place.id);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${place.name} removed from your tour')),
    );
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    if (_selectedPlaces.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add at least one place to your tour'),
        ),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      final now = DateTime.now();
      final tour = Tour(
        id: 'tour-${now.millisecondsSinceEpoch}', // Will be set by Firestore in production
        title: _titleController.text.isEmpty
            ? 'My Custom Tour'
            : _titleController.text,
        description: _descriptionController.text,
        creatorId: 'current_user_id', // TODO: Get from auth service
        places: _selectedPlaces,
        createdAt: now,
        updatedAt: now,
        coverImage:
            _selectedPlaces.isNotEmpty && _selectedPlaces.first.imageUrl != null
            ? _selectedPlaces.first.imageUrl
            : 'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5159c3db-0018-425c-80ce-6ac1cf473856',
        tags: ['Custom', 'Manual'],
        difficulty: TourDifficulty.moderate,
        estimatedDuration: Duration(
          hours: _selectedPlaces.length,
        ), // Simple estimation
      );

      // In a real app, save the tour to the database
      // await _tourService.createTour(tour);

      if (mounted) {
        // Navigate to the tour details screen
        Navigator.pushReplacementNamed(
          context,
          Routes.yourTours,
          arguments: tour,
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error creating tour: $e')));
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Widget _buildFilterButton(String category, ThemeService themeService) {
    final isSelected = _selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ChoiceChip(
        label: Text(category),
        selected: isSelected,
        selectedColor: isSelected
            ? Theme.of(context).colorScheme.secondary
            : (themeService.isDarkMode
                  ? AppTheme.darkAccentColor
                  : AppTheme.accentColor),
        labelStyle: TextStyle(
          color: isSelected
              ? (themeService.isDarkMode
                    ? AppTheme.darkPrimaryColor
                    : AppTheme.primaryColor)
              : (themeService.isDarkMode
                    ? AppTheme.darkTextSecondaryColor
                    : AppTheme.textSecondaryColor),
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        backgroundColor: themeService.isDarkMode
            ? AppTheme.darkCardColor
            : AppTheme.cardColor,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = category;
            _performSearch(_searchController.text);
          });
        },
      ),
    );
  }

  Widget _buildPlaceCard(
    Map<String, dynamic> place,
    ThemeService themeService,
  ) {
    final isSelected = _selectedPlaces.any((p) => p.id == place['id']);

    return Card(
      color: isSelected
          ? (themeService.isDarkMode
                ? AppTheme.darkAccentColor.withOpacity(0.2)
                : AppTheme.accentColor.withOpacity(0.2))
          : (themeService.isDarkMode
                ? AppTheme.darkCardColor
                : AppTheme.cardColor),
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                place['imageUrl'] ?? 'https://via.placeholder.com/80',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 80,
                  height: 80,
                  color: themeService.isDarkMode
                      ? AppTheme.darkCardColor
                      : Colors.grey[300], // Adjust for dark mode if needed
                  child: Icon(
                    Icons.image_not_supported,
                    color: themeService.isDarkMode
                        ? AppTheme.darkTextSecondaryColor
                        : Colors.grey, // Adjust for dark mode if needed
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place['name'],
                    style: AppTheme.bodyStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: themeService.isDarkMode
                          ? AppTheme.darkTextPrimaryColor
                          : AppTheme.textPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    place['description'],
                    style: AppTheme.captionStyle.copyWith(
                      color: themeService.isDarkMode
                          ? AppTheme.darkTextSecondaryColor
                          : AppTheme.textSecondaryColor,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    (place['categories'] as List<dynamic>).join(' • '),
                    style: AppTheme.captionStyle.copyWith(
                      color: themeService.isDarkMode
                          ? AppTheme.darkTextSecondaryColor
                          : AppTheme.textSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : (themeService.isDarkMode
                          ? AppTheme.darkAccentColor
                          : AppTheme.accentColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
              onPressed: () {
                if (isSelected) {
                  // Remove place from tour
                  setState(() {
                    _selectedPlaces.removeWhere((p) => p.id == place['id']);
                  });
                } else {
                  // Add place to tour
                  _addPlaceToTour(place);
                }
              },
              child: Text(
                isSelected ? 'Remove' : 'Add to tour',
                style: AppTheme.captionStyle.copyWith(
                  color: themeService.isDarkMode
                      ? AppTheme.darkPrimaryColor
                      : AppTheme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: themeService.isDarkMode
                ? AppTheme.darkTextPrimaryColor
                : AppTheme.textPrimaryColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Create Tour',
          style: TextStyle(
            color: themeService.isDarkMode
                ? AppTheme.darkTextPrimaryColor
                : AppTheme.textPrimaryColor,
          ),
        ),
        backgroundColor: themeService.isDarkMode
            ? AppTheme.darkBackgroundColor
            : AppTheme.backgroundColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: themeService.isDarkMode
                ? AppTheme.darkBackgroundColor
                : AppTheme.backgroundColor,
            child: Column(
              children: [
                // Tour progress indicator
                TourProgressBar(
                  currentStep: _currentStep,
                  totalSteps: _totalSteps,
                ),

                // Tour description input
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tour Description',
                          style: AppTheme.subheadingStyle.copyWith(
                            color: themeService.isDarkMode
                                ? AppTheme.darkTextPrimaryColor
                                : AppTheme.textPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _descriptionController,
                          decoration: InputDecoration(
                            hintText:
                                'Enter a detailed description of your tour...',
                            filled: true,
                            fillColor: themeService.isDarkMode
                                ? AppTheme.darkCardColor
                                : AppTheme.cardColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            hintStyle: AppTheme.bodyStyle.copyWith(
                              color: themeService.isDarkMode
                                  ? AppTheme.darkTextSecondaryColor
                                  : AppTheme.textSecondaryColor,
                            ),
                          ),
                          style: AppTheme.bodyStyle.copyWith(
                            color: themeService.isDarkMode
                                ? AppTheme.darkTextPrimaryColor
                                : AppTheme.textPrimaryColor,
                          ),
                          maxLines: 4,
                        ),
                      ],
                    ),
                  ),
                ),

                // Tour locations section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tour Locations',
                        style: AppTheme.subheadingStyle.copyWith(
                          color: themeService.isDarkMode
                              ? AppTheme.darkTextPrimaryColor
                              : AppTheme.textPrimaryColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (_selectedPlaces.isNotEmpty) ...[
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: themeService.isDarkMode
                                ? AppTheme.darkCardColor
                                : AppTheme.cardColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Selected Places (${_selectedPlaces.length})',
                                style: AppTheme.bodyStyle.copyWith(
                                  color: themeService.isDarkMode
                                      ? AppTheme.darkTextPrimaryColor
                                      : AppTheme.textPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: _selectedPlaces.map((place) {
                                  return Chip(
                                    label: Text(
                                      place.name,
                                      style: TextStyle(
                                        color: themeService.isDarkMode
                                            ? AppTheme.darkPrimaryColor
                                            : AppTheme.primaryColor,
                                      ),
                                    ),
                                    backgroundColor: themeService.isDarkMode
                                        ? AppTheme.darkAccentColor
                                        : AppTheme.accentColor,
                                    deleteIconColor: themeService.isDarkMode
                                        ? AppTheme.darkPrimaryColor
                                        : AppTheme.primaryColor,
                                    onDeleted: () =>
                                        _removePlaceFromTour(place),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ],
                  ),
                ),

                // Search bar
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _searchController,
                    onChanged: _performSearch,
                    decoration: InputDecoration(
                      hintText: 'Search places, restaurants, attractions...',
                      filled: true,
                      fillColor: themeService.isDarkMode
                          ? AppTheme.darkCardColor
                          : AppTheme.cardColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: AppTheme.bodyStyle.copyWith(
                        color: themeService.isDarkMode
                            ? AppTheme.darkTextSecondaryColor
                            : AppTheme.textSecondaryColor,
                      ),
                    ),
                    style: AppTheme.bodyStyle.copyWith(
                      color: themeService.isDarkMode
                          ? AppTheme.darkTextPrimaryColor
                          : AppTheme.textPrimaryColor,
                    ),
                  ),
                ),

                // Filter buttons
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    children: [
                      _buildFilterButton('All', themeService),
                      _buildFilterButton('Park', themeService),
                      _buildFilterButton('Museum', themeService),
                      _buildFilterButton('Zoo', themeService),
                      _buildFilterButton('Historic', themeService),
                      _buildFilterButton('Restaurant', themeService),
                    ],
                  ),
                ),

                // Search results / Popular places
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _searchResults.isNotEmpty
                            ? 'Search Results'
                            : 'Popular Places',
                        style: AppTheme.subheadingStyle.copyWith(
                          color: themeService.isDarkMode
                              ? AppTheme.darkTextPrimaryColor
                              : AppTheme.textPrimaryColor,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _searchResults.isNotEmpty
                          ? ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: _searchResults.length,
                              itemBuilder: (context, index) {
                                return _buildPlaceCard(
                                  _searchResults[index],
                                  themeService,
                                );
                              },
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: _popularPlaces.length,
                              itemBuilder: (context, index) {
                                return _buildPlaceCard(
                                  _popularPlaces[index],
                                  themeService,
                                );
                              },
                            ),
                    ],
                  ),
                ),

                // Add to Tour button
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _handleSubmit,
                    style: AppTheme.primaryButtonStyle.copyWith(
                      backgroundColor: WidgetStateProperty.resolveWith<Color>((
                        Set<WidgetState> states,
                      ) {
                        if (states.contains(WidgetState.disabled)) {
                          return themeService.isDarkMode
                              ? AppTheme.darkSecondaryColor.withOpacity(0.5)
                              : AppTheme.secondaryColor.withOpacity(0.5);
                        }
                        return themeService.isDarkMode
                            ? AppTheme.darkSecondaryColor
                            : AppTheme.secondaryColor;
                      }),
                      foregroundColor: WidgetStateProperty.resolveWith<Color>((
                        Set<WidgetState> states,
                      ) {
                        return themeService.isDarkMode
                            ? AppTheme.darkPrimaryColor
                            : AppTheme.primaryColor;
                      }),
                    ),
                    child: _isLoading
                        ? SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              color: themeService.isDarkMode
                                  ? AppTheme.darkPrimaryColor
                                  : AppTheme.primaryColor,
                              strokeWidth: 2,
                            ),
                          )
                        : Text(
                            'Create Tour',
                            style: AppTheme.buttonText.copyWith(
                              color: themeService.isDarkMode
                                  ? AppTheme.darkPrimaryColor
                                  : AppTheme.primaryColor,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
