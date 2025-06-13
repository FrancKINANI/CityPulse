import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/features/legacy/your_tour/YourTourDaySection.dart';
import 'package:citypulse/features/legacy/your_tour/YourTourActionsSection.dart';
import 'package:citypulse/features/explore/widgets/explore_bottom_nav.dart';
import 'package:citypulse/services/navigation_service.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/models/tour.dart';

/// Écran YourTour réécrit pour utiliser des widgets extraits et documentés.
class YourTour extends StatefulWidget {
  final Tour? generatedTour;

  const YourTour({super.key, this.generatedTour});

  @override
  YourTourState createState() => YourTourState();
}

class YourTourState extends State<YourTour> {
  int selectedNavIndex = 1; // 1 is for Tours section

  void _handleNavIndexChanged(int index) {
    setState(() {
      selectedNavIndex = index;
    });

    final navigationService = Provider.of<NavigationService>(
      context,
      listen: false,
    );
    switch (index) {
      case 0: // Explore
        navigationService.navigateToReplacement(Routes.explore);
        break;
      case 1: // Tours
        // Already on tours screen
        break;
      case 2: // Profile
        navigationService.navigateToReplacement(Routes.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Check if we have a generated tour from arguments
    final Tour? tourFromArgs =
        ModalRoute.of(context)?.settings.arguments as Tour?;
    final Tour? activeTour = widget.generatedTour ?? tourFromArgs;

    // Create steps from the tour places or use default example data
    List<YourTourStep> tourSteps = [];

    if (activeTour != null && activeTour.places.isNotEmpty) {
      // Create steps from the tour places
      tourSteps = activeTour.places.map((place) {
        // Generate a random time for demonstration purposes
        // In a real app, this would come from the tour schedule
        final startHour = 9 + tourSteps.length;
        final endHour = startHour + 2;
        final timeString = "$startHour:00 AM - $endHour:00 PM";

        return YourTourStep(
          imageUrl:
              place.imageUrl ??
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d3ae6b70-6d69-45c7-9210-aa17b6a9d4c1",
          title: place.name,
          time: timeString,
        );
      }).toList();
    } else {
      // Use example data if no tour is provided
      tourSteps = [
        YourTourStep(
          imageUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d3ae6b70-6d69-45c7-9210-aa17b6a9d4c1",
          title: "Central Park Stroll",
          time: "10:00 AM - 12:00 PM",
        ),
        YourTourStep(
          imageUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/168752b4-bdae-4314-a60e-044439f883fd",
          title: "Lunch at The Smith",
          time: "12:30 PM - 2:00 PM",
        ),
        YourTourStep(
          imageUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1162584d-9181-4a65-a35e-b560390a78b8",
          title: "Metropolitan Museum of Art",
          time: "2:30 PM - 4:30 PM",
        ),
        YourTourStep(
          imageUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/731c3db3-e1e6-48c1-ab49-3d29e9f7059d",
          title: "Shopping on Fifth Avenue",
          time: "5:00 PM - 7:00 PM",
        ),
        YourTourStep(
          imageUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f507d848-ddab-4920-b075-2031d80aff69",
          title: "Dinner at Carbone",
          time: "7:30 PM - 9:30 PM",
        ),
      ];
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.darkPrimaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          activeTour?.title ?? 'Your Tour',
          style: TextStyle(color: AppTheme.textPrimaryColor),
        ),
        backgroundColor: AppTheme.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: AppTheme.darkPrimaryColor),
            tooltip: 'Create Tour',
            onPressed: () {
              final navigationService = Provider.of<NavigationService>(
                context,
                listen: false,
              );
              navigationService.navigateTo(Routes.createTourStart);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: AppTheme.backgroundColor,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Display tour description if available
                      if (activeTour?.description != null)
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            activeTour!.description,
                            style: AppTheme.bodyStyle.copyWith(
                              color: AppTheme.textPrimaryColor,
                            ),
                          ),
                        ),

                      // Day 1 section
                      YourTourDaySection(dayTitle: "Day 1", steps: tourSteps),

                      // Actions section
                      YourTourActionsSection(
                        onEdit: () {
                          // TODO: Implement tour editing logic
                          print('Edit Tour pressed');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // Bottom navigation
              ExploreBottomNav(
                selectedIndex: selectedNavIndex,
                onIndexChanged: _handleNavIndexChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
