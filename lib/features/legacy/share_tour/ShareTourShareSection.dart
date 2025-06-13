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
  const ShareTourShareSection({
    super.key,
    required this.link,
    required this.qrImageUrl,
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
                border: const Border(
                  top: BorderSide(color: Color(0xFF356347), width: 1),
                  bottom: BorderSide(color: Color(0xFF356347), width: 1),
                  left: BorderSide(color: Color(0xFF356347), width: 1),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                color: const Color(0xFF1C3023),
              ),
              height: 56,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                link,
                style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xFF356347), width: 1),
                right: BorderSide(color: Color(0xFF356347), width: 1),
                bottom: BorderSide(color: Color(0xFF356347), width: 1),
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: Color(0xFF1C3023),
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
