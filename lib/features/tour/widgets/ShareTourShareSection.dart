/// Widget ShareTourShareSection
/// Affiche la zone de partage avec le lien et le QR code.
///
/// Props :
///   - String link : le lien à partager
///   - String qrImageUrl : l'URL de l'image du QR code
library;
import 'package:flutter/material.dart';

class ShareTourShareSection extends StatelessWidget {
  final String link;
  final String qrImageUrl;
  final ThemeService themeService;
  const ShareTourShareSection({
    super.key,
    required this.link,
    required this.qrImageUrl,
    required this.themeService,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: themeService.isDarkMode
                        ? AppTheme.darkSecondaryColor
                        : AppTheme.secondaryColor,
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: themeService.isDarkMode
                        ? AppTheme.darkSecondaryColor
                        : AppTheme.secondaryColor,
                    width: 1,
                  ),
                  left: BorderSide(
                    color: themeService.isDarkMode
                        ? AppTheme.darkSecondaryColor
                        : AppTheme.secondaryColor,
                    width: 1,
                  ),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                color: themeService.isDarkMode
                    ? AppTheme.darkCardColor
                    : AppTheme.cardColor,
              ),
              height: 56,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                link,
                style: TextStyle(
                  color: themeService.isDarkMode
                      ? AppTheme.darkTextPrimaryColor
                      : AppTheme.textPrimaryColor,
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: themeService.isDarkMode
                      ? AppTheme.darkSecondaryColor
                      : AppTheme.secondaryColor,
                  width: 1,
                ),
                right: BorderSide(
                  color: themeService.isDarkMode
                      ? AppTheme.darkSecondaryColor
                      : AppTheme.secondaryColor,
                  width: 1,
                ),
                bottom: BorderSide(
                  color: themeService.isDarkMode
                      ? AppTheme.darkSecondaryColor
                      : AppTheme.secondaryColor,
                  width: 1,
                ),
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: themeService.isDarkMode
                  ? AppTheme.darkSecondaryColor
                  : AppTheme.secondaryColor,
            ),
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              child: Image.network(
                qrImageUrl,
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
