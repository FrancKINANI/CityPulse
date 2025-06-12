import 'your_tour/YourTourHeader.dart';
import 'your_tour/YourTourDaySection.dart';
import 'your_tour/YourTourActionsSection.dart';
import 'package:flutter/material.dart';

/// Écran YourTour réécrit pour utiliser des widgets extraits et documentés.
class YourTour extends StatefulWidget {
  const YourTour({super.key});
  @override
  YourTourState createState() => YourTourState();
}

class YourTourState extends State<YourTour> {
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
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header extrait
                const YourTourHeader(
                  title: "Your Tour",
                  imageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/73f33957-b3c7-479c-bd44-cb99af5dffba",
                ),

                /// Section Day 1 extraite
                YourTourDaySection(dayTitle: "Day 1", steps: day1Steps),

                /// Section actions extraite
                YourTourActionsSection(
                  onEdit: () {
                    // TODO: Implémenter la logique d'édition du tour
                    print('Edit Tour pressed');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
