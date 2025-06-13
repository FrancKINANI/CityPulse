import 'share_tour/ShareTourHeader.dart';
import 'share_tour/ShareTourIntroSection.dart';
import 'share_tour/ShareTourShareSection.dart';
import 'share_tour/ShareTourImageSection.dart';
import 'share_tour/ShareTourActionsSection.dart';
import 'share_tour/ShareTourQuickNav.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header extrait
                const ShareTourHeader(
                  title: "Share Tour",
                  imageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8d212d01-18dd-4554-9808-c9708c2b9e89",
                ),

                /// Section intro extraite
                const ShareTourIntroSection(
                  title: "Share your tour",
                  description:
                      "Share this tour with your friends and family by sending them the link or letting them scan the QR code.",
                ),

                /// Section partage extraite
                const ShareTourShareSection(
                  link: "https://citypulse.app/tour/123456",
                  qrImageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/59c2531e-f0f7-436b-a3d0-52beb30d7001",
                ),

                /// Section image principale extraite
                const ShareTourImageSection(
                  imageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/911c41e3-6577-4aa8-89ba-ff34b616fb86",
                ),

                /// Section actions extraite
                ShareTourActionsSection(
                  onDone: () {
                    // TODO: Implémenter la logique de validation/retour
                    print('Done pressed');
                  },
                ),

                /// Barre de navigation rapide extraite
                ShareTourQuickNav(
                  selectedIndex: quickNavIndex,
                  onNav: (i) => setState(() => quickNavIndex = i),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
