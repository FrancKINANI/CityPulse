import 'package:flutter/material.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';

class CreateTourStartScreen extends StatelessWidget {
  const CreateTourStartScreen({super.key});

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
          ), // Adjusted color
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Create a Tour',
          style: TextStyle(
            color: themeService.isDarkMode
                ? AppTheme.darkTextPrimaryColor
                : AppTheme.textPrimaryColor,
          ), // Adjusted color
        ),
        backgroundColor: themeService.isDarkMode
            ? AppTheme.darkBackgroundColor
            : AppTheme.backgroundColor, // Adjusted color
      ),
      body: Container(
        color: themeService.isDarkMode
            ? AppTheme.darkBackgroundColor
            : AppTheme.backgroundColor, // Background color
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'How would you like to start?',
                style: AppTheme.subheadingStyle.copyWith(
                  color: themeService.isDarkMode
                      ? AppTheme.darkTextPrimaryColor
                      : AppTheme.textPrimaryColor,
                ), // Adjusted color
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: themeService.isDarkMode
                    ? AppTheme.darkCardColor
                    : AppTheme.cardColor,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.creatingTourLoading);
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.auto_awesome,
                          size: 50,
                          color: themeService.isDarkMode
                              ? AppTheme.darkAccentColor
                              : AppTheme.accentColor,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Surprise Me',
                          style: AppTheme.headingStyle.copyWith(
                            color: themeService.isDarkMode
                                ? AppTheme.darkTextPrimaryColor
                                : AppTheme.textPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Let us create a personalized tour for you based on popular places and your preferences.',
                          style: AppTheme.captionStyle.copyWith(
                            color: themeService.isDarkMode
                                ? AppTheme.darkTextSecondaryColor
                                : AppTheme.textSecondaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: themeService.isDarkMode
                                  ? AppTheme.darkAccentColor
                                  : AppTheme.accentColor,
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
                              style: AppTheme.bodyStyle.copyWith(
                                color: themeService.isDarkMode
                                    ? AppTheme.darkPrimaryColor
                                    : AppTheme.primaryColor,
                                fontWeight: FontWeight.bold,
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: themeService.isDarkMode
                    ? AppTheme.darkCardColor
                    : AppTheme.cardColor,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.createTour);
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.edit,
                          size: 50,
                          color: themeService.isDarkMode
                              ? AppTheme.darkAccentColor
                              : AppTheme.accentColor,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Create Your Own',
                          style: AppTheme.headingStyle.copyWith(
                            color: themeService.isDarkMode
                                ? AppTheme.darkTextPrimaryColor
                                : AppTheme.textPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Create your own tour by selecting places, setting schedules, and customizing details.',
                          style: AppTheme.captionStyle.copyWith(
                            color: themeService.isDarkMode
                                ? AppTheme.darkTextSecondaryColor
                                : AppTheme.textSecondaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: themeService.isDarkMode
                                    ? AppTheme.darkAccentColor
                                    : AppTheme.accentColor,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.createTour);
                            },
                            child: Text(
                              'Select',
                              style: AppTheme.bodyStyle.copyWith(
                                color: themeService.isDarkMode
                                    ? AppTheme.darkAccentColor
                                    : AppTheme.accentColor,
                                fontWeight: FontWeight.bold,
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextSecondaryColor
                  : AppTheme.textSecondaryColor,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              color: themeService.isDarkMode
                  ? AppTheme.darkAccentColor
                  : AppTheme.accentColor,
            ),
            label: 'My Tours',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: themeService.isDarkMode
                  ? AppTheme.darkTextSecondaryColor
                  : AppTheme.textSecondaryColor,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: 1, // 'Tours' is selected as per image
        selectedItemColor: themeService.isDarkMode
            ? AppTheme.darkAccentColor
            : AppTheme.accentColor,
        unselectedItemColor: themeService.isDarkMode
            ? AppTheme.darkTextSecondaryColor
            : AppTheme.textSecondaryColor,
        backgroundColor: themeService.isDarkMode
            ? AppTheme.darkBackgroundColor
            : AppTheme.backgroundColor, // Adjusted color
        onTap: (index) {
          // Handle navigation
          if (index == 0) {
            Navigator.pushReplacementNamed(context, Routes.explore);
          } else if (index == 1) {
            // Navigate to create tour screen instead of yourTours
            Navigator.pushReplacementNamed(context, Routes.createTour);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, Routes.profile);
          }
        },
      ),
    );
  }
}
