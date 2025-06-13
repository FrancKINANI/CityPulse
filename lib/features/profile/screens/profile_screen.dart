import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_actions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),
            const ProfileActions(),
          ],
        ),
      ),
    );
  }
}
