import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/navigation_service.dart';
import '../../config/routes.dart';
import '../explore/explore_bottom_nav.dart';

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
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: const Color(0xFFFFFFFF),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: const Color(0xFF141E16),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header
                              Container(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        top: 12,
                                        bottom: 12,
                                        right: 24,
                                      ),
                                      width: 24,
                                      height: 24,
                                      child: Image.network(
                                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/cdbab2e9-b867-4a1c-aa22-beeecd910979",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const Text(
                                      "Profile",
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Profile Info
                              Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 16),
                                      width: 128,
                                      height: 128,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white24,
                                      ),
                                      child: Image.network(
                                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/fd151d05-98b8-447c-95bd-b04dd3c0651b",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      "Sophia Bennett",
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "sophia.bennett@email.com",
                                      style: TextStyle(
                                        color: Color(0xFF9BBFAA),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
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
                                    color: Color(0xFFFFFFFF),
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
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/71d3cf13-15a4-4f71-bd54-ae44cc1c6eed",
                                title: "App Settings",
                                onTap: () {},
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9865ff56-5b1b-46d2-9d1f-89372e4a00a4",
                                title: "Notifications",
                                onTap: () {},
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
                                    color: Color(0xFFFFFFFF),
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
                              ),
                              _buildMenuItem(
                                icon:
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b3b06ff8-4315-4433-a25d-8ddb2c698b8b",
                                title: "Contact Us",
                                onTap: () {},
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
                                      color: const Color(0xFF283F33),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 9,
                                    ),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "Log Out",
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Spacer
                              Container(
                                color: const Color(0xFF141E16),
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
  }) {
    return Container(
      color: const Color(0xFF141E16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF283F33),
              ),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  icon,
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
