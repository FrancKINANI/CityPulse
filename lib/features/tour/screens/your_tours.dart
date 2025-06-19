import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/features/tour/widgets/YourTourDaySection.dart';
import 'package:citypulse/features/tour/widgets/YourTourActionsSection.dart';
import 'package:citypulse/features/explore/widgets/explore_bottom_nav.dart';
import 'package:citypulse/services/navigation_service.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/models/firebase/tours/tour_model.dart';
import 'package:citypulse/services/tour_service.dart';

/// Écran YourTour réécrit pour utiliser des widgets extraits et documentés.
class YourTour extends StatefulWidget {
  final Tour? generatedTour;

  const YourTour({super.key, this.generatedTour});

  @override
  YourTourState createState() => YourTourState();
}

class YourTourState extends State<YourTour> {
  int selectedNavIndex = 1; // 1 is for Tours section

  @override
  void initState() {
    super.initState();
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
    // Vérifier si nous avons un tour généré depuis les arguments
    final TourModel? tourFromArgs =
        ModalRoute.of(context)?.settings.arguments as TourModel?;
    final TourModel? activeTour = widget.generatedTour ?? tourFromArgs;

    // Créer les étapes du tour à partir des lieux ou utiliser les données par défaut
    if (activeTour != null && activeTour.places.isNotEmpty) {
      tourSteps = activeTour.places.map((place) {
        // Générer une heure aléatoire pour la démonstration
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
      // Charger les données depuis Firestore
      if (tourSteps.isEmpty) {
        final tourService = Provider.of<TourService>(context, listen: false);
        tourService.fetchTours().then((tours) {
          if (tours.isNotEmpty) {
            setState(() {
              activeTour = tours.first;
              tourSteps = activeTour!.places.map((place) {
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
            });
          }
        }).catchError((error) {
          print('Erreur lors du chargement des tours: $error');
        });
      }
    }
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
          activeTour?.title ?? 'Your Tour',
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            color: Theme.of(context).appBarTheme.titleTextStyle?.color,
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Theme.of(context).appBarTheme.iconTheme?.color,
            ),
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
          color: Theme.of(context).scaffoldBackgroundColor,
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
                            style: Theme.of(context).textTheme.bodyLarge,
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
