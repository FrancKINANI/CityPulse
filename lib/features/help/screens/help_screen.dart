import 'package:flutter/material.dart';
import '../widgets/help_faq_section.dart';
import '../widgets/help_contact_section.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 24,
              height: 24,
              child: const Icon(Icons.help_outline, color: Colors.white),
            ),
            const Text(
              "Help",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Main scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // FAQ Section
                    HelpFaqSection(),
                    // Contact Section
                    HelpContactSection(),
                  ],
                ),
              ),
            ),
            // Footer with additional links
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "For more assistance, visit our website or contact support.",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
