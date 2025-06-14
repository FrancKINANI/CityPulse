import 'package:flutter/material.dart';
import 'package:citypulse/features/tour/widgets/ShareTourHeader.dart';
import 'package:citypulse/features/tour/widgets/ShareTourIntroSection.dart';
import 'package:citypulse/features/tour/widgets/ShareTourShareSection.dart';
import 'package:citypulse/features/tour/widgets/ShareTourImageSection.dart';
import 'package:citypulse/features/tour/widgets/ShareTourActionsSection.dart';
import 'package:citypulse/features/tour/widgets/ShareTourQuickNav.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:citypulse/config/app_theme.dart';

/// Écran ShareTour réécrit pour utiliser des widgets extraits et documentés.
class ShareTour extends StatefulWidget {
  const ShareTour({super.key});
  @override
  ShareTourState createState() => ShareTourState();
}

class ShareTourState extends State<ShareTour> {
  int quickNavIndex = 1;
  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: themeService.isDarkMode
              ? AppTheme.darkBackgroundColor
              : AppTheme.backgroundColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header extrait
                ShareTourHeader(
                  title: "Share Tour",
                  imageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8d212d01-18dd-4554-9808-c9708c2b9e89",
                  themeService: themeService,
                ),

                /// Section intro extraite
                ShareTourIntroSection(
                  title: "Share your tour",
                  description:
                      "Share this tour with your friends and family by sending them the link or letting them scan the QR code.",
                  themeService: themeService,
                ),

                /// Section partage extraite
                ShareTourShareSection(
                  link: "https://citypulse.app/tour/123456",
                  qrImageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/59c2531e-f0f7-436b-a3d0-52beb30d7001",
                  themeService: themeService,
                ),

                /// Section image principale extraite
                ShareTourImageSection(
                  imageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/911c41e3-6577-4aa8-89ba-ff34b616fb86",
                  themeService: themeService,
                ),

                /// Section actions extraite
                ShareTourActionsSection(
                  onDone: () {
                    // TODO: Implémenter la logique de validation/retour
                    print('Done pressed');
                  },
                  themeService: themeService,
                ),

                /// Barre de navigation rapide extraite
                ShareTourQuickNav(
                  selectedIndex: quickNavIndex,
                  onNav: (i) => setState(() => quickNavIndex = i),
                  themeService: themeService,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
