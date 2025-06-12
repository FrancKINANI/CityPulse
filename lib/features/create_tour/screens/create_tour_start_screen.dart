import 'package:flutter/material.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/config/styles.dart';

class CreateTourStartScreen extends StatelessWidget {
  const CreateTourStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppStyles.backgroundColor,
          ), // Adjusted color
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Create a Tour',
          style: TextStyle(color: AppStyles.backgroundColor), // Adjusted color
        ),
        backgroundColor: AppStyles.primaryColor, // Adjusted color
      ),
      body: Container(
        color: AppStyles.primaryColor, // Background color
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'How would you like to start?',
                style: AppStyles.headline2.copyWith(
                  color: AppStyles.backgroundColor,
                ), // Adjusted color
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyles.accentColor, // Adjusted color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Implement 'Surprise Me' logic
                    Navigator.pushNamed(
                      context,
                      Routes.creatingTourLoading,
                    ); // Navigate to a loading screen for 'Surprise Me'
                  },
                  child: Text(
                    'Surprise Me',
                    style: AppStyles.buttonText.copyWith(
                      color: AppStyles.primaryColor,
                    ), // Adjusted color
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: AppStyles.accentColor,
                      width: 2,
                    ), // Adjusted color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Routes.createTour,
                    ); // Navigate to the manual creation screen
                  },
                  child: Text(
                    'Create Your Own',
                    style: AppStyles.buttonText.copyWith(
                      color: AppStyles.accentColor,
                    ), // Adjusted color
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
            icon: Icon(Icons.list_alt),
            label: 'My Tours',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 1, // 'Tours' is selected as per image
        selectedItemColor: AppStyles.accentColor,
        unselectedItemColor: AppStyles.textLightColor,
        backgroundColor: AppStyles.primaryColor, // Adjusted color
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
