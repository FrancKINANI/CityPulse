import 'package:flutter/material.dart';
import 'package:citypulse/config/styles.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppStyles.backgroundColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Add to tour',
          style: TextStyle(color: AppStyles.backgroundColor),
        ),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Container(
        color: AppStyles.primaryColor,
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
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppStyles.textLightColor,
                  ),
                  filled: true,
                  fillColor: AppStyles.cardColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: AppStyles.body1.copyWith(
                    color: AppStyles.textLightColor,
                  ),
                ),
                style: AppStyles.body1.copyWith(color: AppStyles.textColor),
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
                    style: AppStyles.headline3.copyWith(
                      color: AppStyles.textColor,
                    ),
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
                      .map((place) => _buildPlaceCard(place))
                      .toList(),
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
                    backgroundColor: AppStyles.accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, _selectedPlaces.toList());
                  },
                  child: Text(
                    'Add to tour',
                    style: AppStyles.buttonText.copyWith(
                      color: AppStyles.primaryColor,
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
        label: Text(category),
        selected: isSelected,
        selectedColor: AppStyles.accentColor,
        labelStyle: AppStyles.caption.copyWith(
          color: isSelected ? AppStyles.primaryColor : AppStyles.textLightColor,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        backgroundColor: AppStyles.cardColor,
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
      color: isSelected ? AppStyles.cardColorSelected : AppStyles.cardColor,
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
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  place['imageUrl']!,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place['name']!,
                      style: AppStyles.body1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${place['rating']} \u2022 ${place['reviews']}',
                      style: AppStyles.body2,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${place['type']} \u2022 ${place['distance']}',
                      style: AppStyles.body2,
                    ),
                  ],
                ),
              ),
              if (isSelected)
                const Icon(Icons.check_circle, color: AppStyles.accentColor),
            ],
          ),
        ),
      ),
    );
  }
}
