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
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                color: AppStyles.backgroundColor,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.creatingTourLoading,
                    );
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.auto_awesome,
                          size: 50,
                          color: AppStyles.accentColor,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Surprise Me',
                          style: AppStyles.headline3.copyWith(color: AppStyles.textColor),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Let us create a personalized tour for you based on popular places and your preferences.',
                          style: AppStyles.body2.copyWith(color: AppStyles.textLightColor),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppStyles.accentColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                Routes.creatingTourLoading,
                              );
                            },
                            child: Text(
                              'Select',
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
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                color: AppStyles.backgroundColor,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.createTour,
                    );
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.edit,
                          size: 50,
                          color: AppStyles.accentColor,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Create Your Own',
                          style: AppStyles.headline3.copyWith(color: AppStyles.textColor),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Create your own tour by selecting places, setting schedules, and customizing details.',
                          style: AppStyles.body2.copyWith(color: AppStyles.textLightColor),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: AppStyles.accentColor,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                Routes.createTour,
                              );
                            },
                            child: Text(
                              'Select',
                              style: AppStyles.buttonText.copyWith(
                                color: AppStyles.accentColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
