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
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('À propos', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 16),
          buildInfoRow(context, 'Version', appVersion),
          const Divider(),
          buildActionRow(
            context,
            'Politique de confidentialité',
            Icons.privacy_tip_outlined,
            onPrivacyPolicy,
          ),
          const Divider(),
          buildActionRow(
            context,
            'Conditions d\'utilisation',
            Icons.description_outlined,
            onTermsOfService,
          ),
          const Divider(),
          buildActionRow(
            context,
            'Licences',
            Icons.file_copy_outlined,
            onLicenses,
          ),
          const Divider(),
          buildActionRow(context, 'Aide', Icons.help_outline, onHelp),
        ],
      ),
    );
  }

  Widget buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyLarge),
          Text(value, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }

  Widget buildActionRow(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(icon, size: 24, color: Theme.of(context).iconTheme.color),
            const SizedBox(width: 16),
            Expanded(
              child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Theme.of(context).iconTheme.color,
            ),
          ],
        ),
      ),
    );
  }
}
