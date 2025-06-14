import 'package:flutter/material.dart';
import '../widgets/help_header.dart';
import '../widgets/help_faq_section.dart';
import '../widgets/help_contact_section.dart';
import '../widgets/help_navigation_bar.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Main scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Header
                    HelpHeader(),
                    // FAQ Section
                    HelpFaqSection(),
                    // Contact Section
                    HelpContactSection(),
                  ],
                ),
              ),
            ),
            // Navigation Bar at bottom
            HelpNavigationBar(),
          ],
        ),
      ),
    );
  }
}
