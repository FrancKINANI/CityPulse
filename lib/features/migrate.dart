import 'dart:io';

void main() {
  // Auth
  moveFile('screens/auth/signin_screen.dart', 'features/auth/signin_screen.dart');
  moveFile('screens/auth/signup_screen.dart', 'features/auth/signup_screen.dart');
  moveFile('screens/auth/reset_password_screen.dart', 'features/auth/reset_password_screen.dart');
  
  // Explore
  moveFile('screens/explore/explore_screen.dart', 'features/explore/explore_screen.dart');
  moveFile('screens/explore/ExploreHeader.dart', 'features/explore/ExploreHeader.dart');
  moveFile('screens/explore/ExploreFooter.dart', 'features/explore/ExploreFooter.dart');
  moveFile('screens/explore/ExploreHeroSection.dart', 'features/explore/ExploreHeroSection.dart');
  moveFile('screens/explore/ExploreFeaturedPlaces.dart', 'features/explore/ExploreFeaturedPlaces.dart');
  moveFile('screens/explore/ExploreBottomNav.dart', 'features/explore/ExploreBottomNav.dart');
  moveFile('screens/explore/ExploreQuickNav.dart', 'features/explore/ExploreQuickNav.dart');
  
  // Profile
  moveFile('screens/profile/EditProfile.dart', 'features/profile/EditProfile.dart');
  moveFile('screens/profile/ScanQRCode.dart', 'features/profile/ScanQRCode.dart');
  
  // Settings
  moveFile('screens/settings/settings_screen.dart', 'features/settings/settings_screen.dart');
  moveFile('screens/settings/settings_header.dart', 'features/settings/settings_header.dart');
  moveFile('screens/settings/settings_notifications.dart', 'features/settings/settings_notifications.dart');
  moveFile('screens/settings/settings_preferences.dart', 'features/settings/settings_preferences.dart');
  moveFile('screens/settings/settings_about.dart', 'features/settings/settings_about.dart');
  
  // Moderation
  moveFile('screens/ModerationPanel.dart', 'features/moderation/ModerationPanel.dart');
  
  // Notifications
  moveFile('screens/Notifications.dart', 'features/notifications/Notifications.dart');
  
  // Share Tour
  moveFile('screens/ShareTour.dart', 'features/share_tour/ShareTour.dart');
  
  // Gestionnaire Dashboard
  moveFile('screens/GestionnaireDashboard.dart', 'features/gestionnaire_dashboard/GestionnaireDashboard.dart');
  
  // Add Place
  moveFile('screens/AddPlace.dart', 'features/add_place/AddPlace.dart');
  
  // Search on Map
  moveFile('screens/SearchOnMap.dart', 'features/search_on_map/SearchOnMap.dart');
  
  // Place Event Calendar
  moveFile('screens/PlaceEventOnCalendar.dart', 'features/place_event_calendar/PlaceEventOnCalendar.dart');
}

void moveFile(String from, String to) {
  final fromPath = File('lib/$from');
  final toPath = File('lib/$to');
  
  if (fromPath.existsSync()) {
    final dir = toPath.parent;
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }
    fromPath.renameSync(toPath.path);
    print('Moved $from to $to');
  } else {
    print('File not found: $from');
  }
}
