import 'package:flutter/material.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/models/tour.dart';
import 'dart:math' as math;

class CreatingTourLoadingScreen extends StatefulWidget {
  const CreatingTourLoadingScreen({super.key});

  @override
  State<CreatingTourLoadingScreen> createState() =>
      _CreatingTourLoadingScreenState();
}

class _CreatingTourLoadingScreenState extends State<CreatingTourLoadingScreen>
    with TickerProviderStateMixin {
  late AnimationController _progressController;
  double _progressValue = 0.0;
  String _statusText = 'Analyzing your preferences...';
  bool _isGenerating = true;

  // Dummy data for popular places that would come from a service in a real app
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
  void initState() {
    super.initState();
    _progressController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..addListener(() {
            setState(() {
              _progressValue = _progressController.value;
              _updateStatusText(_progressValue);
            });
          });

    _progressController.forward();
    _generateSurpriseTour();
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  void _updateStatusText(double progress) {
    if (progress < 0.2) {
      _statusText = 'Analyzing your preferences...';
    } else if (progress < 0.4) {
      _statusText = 'Finding popular places nearby...';
    } else if (progress < 0.6) {
      _statusText = 'Optimizing your route...';
    } else if (progress < 0.8) {
      _statusText = 'Creating your personalized tour...';
    } else {
      _statusText = 'Almost ready!';
    }
  }

  Future<void> _generateSurpriseTour() async {
    // Simulate AI/recommendation algorithm processing
    await Future.delayed(const Duration(seconds: 5));

    if (!mounted) return;

    // Select random places from our dummy data (in a real app, this would use a recommendation algorithm)
    final selectedPlaces = List<Map<String, dynamic>>.from(_popularPlaces);
    selectedPlaces.shuffle(math.Random());
    final tourPlaces = selectedPlaces.take(3).toList(); // Take 3 random places

    // Create a new tour with the selected places
    final now = DateTime.now();
    final tour = Tour(
      id: 'surprise-${now.millisecondsSinceEpoch}',
      title: 'Your Surprise Tour',
      description:
          'A personalized tour created just for you, featuring some of the city\'s most interesting locations.',
      places: tourPlaces.map((place) => Place.fromJson(place)).toList(),
      createdAt: now,
      updatedAt: now,
      coverImage: tourPlaces.first['imageUrl'],
      rating: 0.0, // New tour has no rating yet
      reviewCount: 0, // New tour has no reviews yet
      tags: ['Surprise', 'Personalized'],
      difficulty: TourDifficulty.moderate,
      estimatedDuration: const Duration(
        hours: 4,
      ), // Estimated duration based on number of places
      creatorId:
          'current_user_id', // In a real app, this would be the current user's ID
    );

    // In a real app, save the tour to the database
    // await _tourService.createTour(tour);

    setState(() {
      _isGenerating = false;
    });

    // Navigate to the tour details screen after a short delay
    await Future.delayed(const Duration(milliseconds: 500));
    if (mounted) {
      Navigator.pushReplacementNamed(
        context,
        Routes.yourTours,
        arguments: tour, // Pass the generated tour to the next screen
      );
    }
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
          'Creating Tour',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearProgressIndicator(
                  value: _progressValue,
                  backgroundColor: Colors.orange.shade100,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '${(_progressValue * 100).toInt()}% complete',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  _statusText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 239,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5159c3db-0018-425c-80ce-6ac1cf473856", // Placeholder image, replace with actual loading animation or image
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // if (!_isGenerating) // Show the button only after generation is complete
                // SizedBox(
                //   width: double.infinity,
                //   height: 50,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.orange, // Explicitly setting orange for consistency
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(12),
                //       ),
                //     ),
                //     onPressed: () {
                //       // Go back to the previous screen (e.g., tour details or tour list)
                //       Navigator.pop(context);
                //     },
                //     child: Text(
                //       'Done',
                //       style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
