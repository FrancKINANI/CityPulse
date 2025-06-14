import 'package:flutter/material.dart';
// import 'package:citypulse/config/app_theme.dart'; // Supprimé car nous utilisons Theme.of(context)
import 'package:provider/provider.dart';
// import 'package:citypulse/services/theme_service.dart'; // Supprimé

class AddToTourScreen extends StatefulWidget {
  const AddToTourScreen({super.key});

  @override
  State<AddToTourScreen> createState() => _AddToTourScreenState();
}

class _AddToTourScreenState extends State<AddToTourScreen> {
  String _searchQuery = '';
  String _selectedCategory = 'Places';
  final Set<Map<String, String>> _selectedPlaces = {};

  // Dummy data for popular places, this would come from a service in a real app
  final List<Map<String, String>> _popularPlaces = [
    {
      'name': 'The Grand Central Park',
      'rating': '4.8',
      'reviews': '200 reviews',
      'type': 'Park',
      'distance': '1.2 mi',
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5159c3db-0018-425c-80ce-6ac1cf473856',
    },
    {
      'name': 'The Modern Art Museum',
      'rating': '4.7',
      'reviews': '150 reviews',
      'type': 'Museum',
      'distance': '2.5 mi',
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/15d523e2-d4d9-4bd3-a024-0f0b1d1e9f9c',
    },
    {
      'name': 'The City Zoo',
      'rating': '4.6',
      'reviews': '180 reviews',
      'type': 'Zoo',
      'distance': '3.1 mi',
      'imageUrl':
          'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/94cb2c14-07a5-46a2-81c8-34f4d5320dd7',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // final themeService = Provider.of<ThemeService>(context); // Supprimé
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).appBarTheme.iconTheme?.color,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Add to tour',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  filled: true,
                  fillColor: Theme.of(context).cardColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
                ),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _buildFilterButton('Places'),
                  _buildFilterButton('Restaurants'),
                  _buildFilterButton('Hotels'),
                  _buildFilterButton('Attractions'),
                  // Add more categories as needed
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Text(
                    'Popular',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  ..._popularPlaces
                      .where(
                        (place) =>
                            place['name']!.toLowerCase().contains(
                              _searchQuery.toLowerCase(),
                            ) &&
                            place['type']!.contains(_selectedCategory),
                      )
                      .map((place) => _buildPlaceCard(place)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, _selectedPlaces.toList());
                  },
                  child: Text(
                    'Add to tour',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(String category) {
    final isSelected = _selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ChoiceChip(
        label: Text(
          category,
          style: TextStyle(
            color: isSelected
                ? Theme.of(context).colorScheme.onPrimary
                : Theme.of(context).textTheme.bodyMedium?.color,
          ),
        ),
        selected: isSelected,
        selectedColor: Theme.of(context).colorScheme.primary,
        labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: isSelected
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).textTheme.bodyMedium?.color,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        backgroundColor: Theme.of(context).cardColor,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = category;
          });
        },
      ),
    );
  }

  Widget _buildPlaceCard(Map<String, String> place) {
    final isSelected = _selectedPlaces.contains(place);
    return Card(
      color: isSelected
          ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
          : Theme.of(context).cardColor,
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          setState(() {
            if (isSelected) {
              _selectedPlaces.remove(place);
            } else {
              _selectedPlaces.add(place);
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(place['imageUrl']!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place['name']!,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${place['rating']!} (${place['reviews']!})',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${place['type']!} • ${place['distance']!}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                    ),
                  ],
                ),
              ),
              Checkbox(
                value: isSelected,
                onChanged: (bool? newValue) {
                  setState(() {
                    if (newValue == true) {
                      _selectedPlaces.add(place);
                    } else {
                      _selectedPlaces.remove(place);
                    }
                  });
                },
                activeColor: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
