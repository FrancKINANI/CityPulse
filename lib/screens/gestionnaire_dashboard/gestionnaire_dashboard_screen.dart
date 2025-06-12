import 'package:flutter/material.dart';
import 'package:citypulse/screens/gestionnaire_dashboard/gestionnaire_dashboard_header.dart';
import 'package:citypulse/screens/gestionnaire_dashboard/gestionnaire_dashboard_stats.dart';
import 'package:citypulse/screens/gestionnaire_dashboard/gestionnaire_dashboard_actions.dart';
import 'package:citypulse/screens/gestionnaire_dashboard/gestionnaire_dashboard_list.dart';

class GestionnaireDashboardScreen extends StatelessWidget {
  final String userName;
  final String userRole;
  final String userAvatar;
  final int pendingItems;
  final List<ModificationItem> itemsToModerate;

  const GestionnaireDashboardScreen({
    super.key,
    required this.userName,
    required this.userRole,
    required this.userAvatar,
    required this.pendingItems,
    required this.itemsToModerate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestionnaireDashboardHeader(
                userName: userName,
                userRole: userRole,
                userAvatar: userAvatar,
                pendingItems: pendingItems,
              ),
              GestionnaireDashboardStats(
                totalPlaces: 150, // TODO: Get from API
                totalTours: 45, // TODO: Get from API
                totalUsers: 1200, // TODO: Get from API
                pendingReviews: pendingItems,
              ),
              GestionnaireDashboardActions(
                onAddPlace: () {
                  // TODO: Navigate to add place
                },
                onModerate: () {
                  // TODO: Navigate to moderation panel
                },
                onViewReports: () {
                  // TODO: Navigate to reports view
                },
                onSettings: () {
                  // TODO: Navigate to settings
                },
              ),
              GestionnaireDashboardList(
                items: itemsToModerate,
                onItemTap: (id) {
                  // TODO: Navigate to item details
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
