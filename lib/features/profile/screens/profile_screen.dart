import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/navigation_service.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/features/explore/widgets/explore_bottom_nav.dart';
import 'package:citypulse/services/auth_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  int selectedNavIndex = 3; // 3 is for Profile section

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
        navigationService.navigateToReplacement(Routes.yourTours);
        break;
      case 2: // Favorites
        navigationService.navigateToReplacement(Routes.favorites);
        break;
      case 3: // Profile
        // Already on profile screen
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Theme.of(context).textTheme.headlineSmall?.color,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Profile Info
                              Center(
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 16,
                                        ),
                                        width: 128,
                                        height: 128,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Theme.of(context).cardColor,
                                        ),
                                        child: ClipOval(
                                          child: Image.network(
                                            "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/fd151d05-98b8-447c-95bd-b04dd3c0651b",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        "Sophia Bennett",
                                        style: TextStyle(
                                          color: Theme.of(context).textTheme.headlineSmall?.color,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "sophia.bennett@email.com",
                                        style: TextStyle(
                                          color: Theme.of(context).textTheme.bodyMedium?.color,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Account Section
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 16,
                                  bottom: 16,
                                  left: 16,
                                ),
                                child: Text(
                                  "Account",
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),

                              // Account Items
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b118c6a9-77b0-4f0c-bd51-0623e820af3c",
                                title: "Personal Information",
                                onTap: () {
                                  final navigationService = Provider.of<NavigationService>(context, listen: false);
                                  navigationService.navigateTo(Routes.editProfile);
                                },
                                iconColor: Theme.of(context).colorScheme.tertiary,
                                textColor: Theme.of(context).textTheme.bodyLarge?.color,
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/71d3cf13-15a4-4f71-bd54-ae44cc1c6eed",
                                title: "App Settings",
                                onTap: () {
                                  final navigationService = Provider.of<NavigationService>(context, listen: false);
                                  navigationService.navigateTo(Routes.settings);
                                },
                                iconColor: Theme.of(context).colorScheme.tertiary,
                                textColor: Theme.of(context).textTheme.bodyLarge?.color,
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9865ff56-5b1b-46d2-9d1f-89372e4a00a4",
                                title: "Notifications",
                                onTap: () {
                                  final navigationService = Provider.of<NavigationService>(context, listen: false);
                                  navigationService.navigateTo(Routes.notifications);
                                },
                                iconColor: Theme.of(context).colorScheme.tertiary,
                                textColor: Theme.of(context).textTheme.bodyLarge?.color,
                              ),

                              // Support Section
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 16,
                                  bottom: 16,
                                  left: 16,
                                ),
                                child: Text(
                                  "Support",
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),

                              // Support Items
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0593b80e-dc23-444e-ad3a-8222bae962c5",
                                title: "Help Center",
                                onTap: () {
                                  final navigationService = Provider.of<NavigationService>(context, listen: false);
                                  navigationService.navigateTo(Routes.help);
                                },
                                iconColor: Theme.of(context).colorScheme.tertiary,
                                textColor: Theme.of(context).textTheme.bodyLarge?.color,
                              ),

                              // Logout Button
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    // Placeholder for logout logic
                                    final authService = Provider.of<AuthService>(context, listen: false);
                                    await authService.signOut();
                                    final navigationService = Provider.of<NavigationService>(context, listen: false);
                                    navigationService.navigateToReplacement(Routes.welcome);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Theme.of(context).colorScheme.tertiary,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 9,
                                    ),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Log Out",
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.onSecondary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Spacer
                              Container(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

  Widget _buildMenuItem({
    required String icon,
    required String title,
    required VoidCallback onTap,
    Color? iconColor,
    Color? textColor,
  }) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).cardColor,
              ),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ColorFiltered(
                  colorFilter: iconColor != null
                      ? ColorFilter.mode(iconColor, BlendMode.srcIn)
                      : const ColorFilter.mode(
                          Colors.transparent,
                          BlendMode.srcIn,
                        ),
                  child: Image.network(
                    icon,
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: textColor ?? Theme.of(context).textTheme.bodyLarge?.color,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
