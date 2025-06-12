import 'package:flutter/material.dart';

class SettingsAbout extends StatelessWidget {
  final String appVersion;
  final VoidCallback onPrivacyPolicy;
  final VoidCallback onTermsOfService;
  final VoidCallback onLicenses;
  final VoidCallback onHelp;

  const SettingsAbout({
    super.key,
    required this.appVersion,
    required this.onPrivacyPolicy,
    required this.onTermsOfService,
    required this.onLicenses,
    required this.onHelp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'À propos',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF141E16),
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Version', appVersion),
          const Divider(),
          _buildActionRow(
            'Politique de confidentialité',
            Icons.privacy_tip_outlined,
            onPrivacyPolicy,
          ),
          const Divider(),
          _buildActionRow(
            'Conditions d\'utilisation',
            Icons.description_outlined,
            onTermsOfService,
          ),
          const Divider(),
          _buildActionRow('Licences', Icons.file_copy_outlined, onLicenses),
          const Divider(),
          _buildActionRow('Aide', Icons.help_outline, onHelp),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Color(0xFF141E16)),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xFF141E16).withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionRow(String title, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(icon, size: 24, color: const Color(0xFF141E16)),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, color: Color(0xFF141E16)),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(0xFF141E16),
            ),
          ],
        ),
      ),
    );
  }
}
