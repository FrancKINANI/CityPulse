import 'package:flutter/material.dart';
import 'explore_details_header.dart';
import 'explore_details_info.dart';
import 'explore_details_gallery.dart';
import 'explore_details_map.dart';
import 'explore_details_actions.dart';

class ExploreDetails extends StatelessWidget {
  const ExploreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ExploreDetailsHeader(
                    imageUrl: 'https://example.com/place-image.jpg',
                    title: 'Place Name',
                    location: 'Location Name',
                    rating: '4.5',
                  ),
                  ExploreDetailsInfo(
                    description: 'A detailed description of the place...',
                    hours: '9:00 AM - 10:00 PM',
                    phone: '+1 234 567 890',
                    website: 'www.example.com',
                  ),
                  ExploreDetailsGallery(
                    images: [
                      'https://example.com/image1.jpg',
                      'https://example.com/image2.jpg',
                      'https://example.com/image3.jpg',
                    ],
                  ),
                  ExploreDetailsMap(
                    latitude: 48.8566,
                    longitude: 2.3522,
                    address: '123 Example Street, City, Country',
                  ),
                  const SizedBox(height: 100), // Space for bottom actions
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ExploreDetailsActions(
                onAddToTour: () {
                  // TODO: Implement add to tour
                },
                onShare: () {
                  // TODO: Implement share
                },
                onCalendar: () {
                  // TODO: Implement calendar
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
