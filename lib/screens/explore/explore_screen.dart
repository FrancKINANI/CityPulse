import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/app_theme.dart';
import '../../services/theme_service.dart';
import 'ExploreHeader.dart';
import 'ExploreFilters.dart';
import 'ExploreHeroSection.dart';
import 'ExploreFeaturedPlaces.dart';
import 'ExploreBottomNav.dart';
import '../../services/navigation_service.dart';
import '../../config/routes.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  String searchQuery = '';
  String selectedFilter = 'All';
  int selectedNavIndex = 0;

  final List<FeaturedPlace> featuredPlaces = [
    FeaturedPlace(
      imageUrl: "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
      title: "Central Park",
      description: "New York's iconic urban oasis",
    ),
    FeaturedPlace(
      imageUrl: "https://images.unsplash.com/photo-1582711012153-0fe66dfa3c18",
      title: "Museum of Art",
      description: "World-class art collection",
    ),
    FeaturedPlace(
      imageUrl: "https://images.unsplash.com/photo-1577593980495-6e7f67824439",
      title: "Historic District",
      description: "Preserved architectural beauty",
    ),
    FeaturedPlace(
      imageUrl: "https://images.unsplash.com/photo-1472851294608-062f824d29cc",
      title: "Artisan Alley",
      description: "Local crafts and boutiques",
    ),
  ];

  void _handleSearchChanged(String value) {
    setState(() {
      searchQuery = value;
    });
  }

  void _handleFilterChanged(String filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

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
        // Already on explore screen
        break;
      case 1: // Tours
        navigationService.navigateToReplacement(Routes.yourTours);
        break;
      case 2: // Profile
        navigationService.navigateToReplacement(Routes.profile);
        break;
    }
  }

  void _handlePlaceSelected(FeaturedPlace place) {
    final navigationService = Provider.of<NavigationService>(
      context,
      listen: false,
    );
    navigationService.navigateTo(Routes.exploreDetails, arguments: place);
  }

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      backgroundColor: themeService.isDarkMode ? AppTheme.darkBackgroundColor : AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExploreHeader(
                      value: searchQuery,
                      onChanged: _handleSearchChanged,
                    ),
                    ExploreFilters(
                      selected: selectedFilter,
                      onSelect: _handleFilterChanged,
                      filters: const ['All', 'Featured', 'New'],
                    ),
                    ExploreHeroSection(
                      imageUrl:
                          "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5159c3db-0018-425c-80ce-6ac1cf473856", // Placeholder image URL
                      title: "Discover Amazing Tours",
                      description:
                          "Explore unique experiences around the city.",
                      duration: "5 min read",
                    ),
                    ExploreFeaturedPlaces(
                      places: featuredPlaces,
                      onPlaceSelected: _handlePlaceSelected,
                    ),
                  ],
                ),
              ),
            ),
            ExploreBottomNav(
              selectedIndex: selectedNavIndex,
              onIndexChanged: _handleNavIndexChanged,
            ),
          ],
        ),
      ),
    );
  }
}
