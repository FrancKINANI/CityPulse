import 'package:flutter/material.dart';
import 'package:citypulse/config/styles.dart';
import 'package:citypulse/config/routes.dart';

class CreatingTourLoadingScreen extends StatefulWidget {
  const CreatingTourLoadingScreen({super.key});

  @override
  State<CreatingTourLoadingScreen> createState() =>
      _CreatingTourLoadingScreenState();
}

class _CreatingTourLoadingScreenState extends State<CreatingTourLoadingScreen> {
  @override
  void initState() {
    super.initState();
    _simulateTourCreation();
  }

  Future<void> _simulateTourCreation() async {
    // Simulate network request or tour generation
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacementNamed(
        context,
        Routes.yourTours,
      ); // Navigate to Your Tour screen after loading
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppStyles.backgroundColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Creating Tour',
          style: TextStyle(color: AppStyles.backgroundColor),
        ),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Container(
        color: AppStyles.primaryColor,
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.5, // 50% as per screenshot
                backgroundColor: AppStyles.cardColor,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppStyles.accentColor,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '50% complete',
                style: AppStyles.body1.copyWith(
                  color: AppStyles.textLightColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Your personalized tour is being crafted. This may take a moment.',
                style: AppStyles.headline3.copyWith(color: AppStyles.textColor),
                textAlign: TextAlign.center,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ), // Changed icon to map as per screenshot
            label: 'My Tours',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 1, // 'My Tours' is selected as per image
        selectedItemColor: AppStyles.accentColor,
        unselectedItemColor: AppStyles.textLightColor,
        backgroundColor: AppStyles.primaryColor,
        onTap: (index) {
          // Handle navigation
          if (index == 0) {
            Navigator.pushReplacementNamed(context, Routes.explore);
          } else if (index == 1) {
            // Already on Tours related screen, or navigate to Your Tours
            Navigator.pushReplacementNamed(context, Routes.yourTours);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, Routes.profile);
          }
        },
      ),
    );
  }
}
