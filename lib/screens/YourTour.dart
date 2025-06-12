import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'your_tour/YourTourHeader.dart'; // Removed import
import 'your_tour/YourTourDaySection.dart';
import 'your_tour/YourTourActionsSection.dart';
import 'explore/ExploreBottomNav.dart';
import '../services/navigation_service.dart';
import '../config/routes.dart';
import '../config/styles.dart'; // Added import for AppStyles

/// Écran YourTour réécrit pour utiliser des widgets extraits et documentés.
class YourTour extends StatefulWidget {
  const YourTour({super.key});
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
    // Exemple de données pour la journée 1
    final day1Steps = [
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppStyles.backgroundColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Your Tour',
          style: TextStyle(color: AppStyles.backgroundColor),
        ),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // YourTourHeader removed as it's not in the screenshot's AppBar

                      // Day 1 section
                      YourTourDaySection(dayTitle: "Day 1", steps: day1Steps),

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
