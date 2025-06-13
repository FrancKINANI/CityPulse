import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/navigation_service.dart';
import 'package:citypulse/config/routes.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/features/explore/widgets/explore_bottom_nav.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  int selectedNavIndex = 2; // 2 is for Profile section

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
      case 2: // Profile
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
            color: AppTheme.textPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppTheme.textPrimaryColor),
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: AppTheme.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: AppTheme.backgroundColor,
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: AppTheme.backgroundColor,
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
                                          color: AppTheme.cardColor,
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
                                          color: AppTheme.textPrimaryColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "sophia.bennett@email.com",
                                        style: TextStyle(
                                          color: AppTheme.textSecondaryColor,
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
                                child: const Text(
                                  "Account",
                                  style: TextStyle(
                                    color: AppTheme.darkPrimaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // Account Items
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b118c6a9-77b0-4f0c-bd51-0623e820af3c",
                                title: "Personal Information",
                                onTap: () {},
                                iconColor: AppTheme.accentColor,
                                textColor: AppTheme.darkPrimaryColor,
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/71d3cf13-15a4-4f71-bd54-ae44cc1c6eed",
                                title: "App Settings",
                                onTap: () {},
                                iconColor: AppTheme.accentColor,
                                textColor: AppTheme.darkPrimaryColor,
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9865ff56-5b1b-46d2-9d1f-89372e4a00a4",
                                title: "Notifications",
                                onTap: () {},
                                iconColor: AppTheme.accentColor,
                                textColor: AppTheme.darkPrimaryColor,
                              ),

                              // Support Section
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 16,
                                  bottom: 16,
                                  left: 16,
                                ),
                                child: const Text(
                                  "Support",
                                  style: TextStyle(
                                    color: AppTheme.darkPrimaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // Support Items
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0593b80e-dc23-444e-ad3a-8222bae962c5",
                                title: "Help Center",
                                onTap: () {},
                                iconColor: AppTheme.accentColor,
                                textColor: AppTheme.darkPrimaryColor,
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b3b06ff8-4315-4433-a25d-8ddb2c698b8b",
                                title: "Contact Us",
                                onTap: () {},
                                iconColor: AppTheme.accentColor,
                                textColor: AppTheme.darkPrimaryColor,
                              ),

                              // Logout Button
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppTheme.accentColor,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 9,
                                    ),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Log Out",
                                      style: TextStyle(
                                        color: AppTheme.darkTextPrimaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Spacer
                              Container(
                                color: AppTheme.backgroundColor,
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
      color: AppTheme.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppTheme.darkCardColor,
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
                color: textColor ?? AppTheme.darkTextPrimaryColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
