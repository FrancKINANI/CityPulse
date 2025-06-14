import 'package:flutter/material.dart';
// import 'package:citypulse/config/app_theme.dart'; // Supprimé car nous utilisons Theme.of(context)
// import 'package:citypulse/services/theme_service.dart'; // Supprimé car nous utilisons Theme.of(context)
// import 'package:provider/provider.dart'; // Supprimé si ThemeService n'est plus utilisé ici

class SettingsHeader extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userAvatar;
  final VoidCallback onEditProfile;

  const SettingsHeader({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userAvatar,
    required this.onEditProfile,
  });

  @override
  Widget build(BuildContext context) {
    // final themeService = Provider.of<ThemeService>(context); // Supprimé
    return Container(
      color: Theme.of(
        context,
      ).colorScheme.background, // Utilisation de Theme.of(context)
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BackButton(
                color: Theme.of(
                  context,
                ).iconTheme.color, // Utilisation de Theme.of(context)
              ),
              const SizedBox(width: 8),
              Text(
                'Paramètres',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  // Utilisation de Theme.of(context).textTheme
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.background.withOpacity(
                      0.1,
                    ), // Utilisation de Theme.of(context)
                    width: 2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.network(userAvatar, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        // Utilisation de Theme.of(context).textTheme
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      userEmail,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        // Utilisation de Theme.of(context).textTheme
                        // color: Theme.of(context).colorScheme.onSurfaceVariant, // Alternative for secondary text
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: onEditProfile,
                icon: Icon(
                  Icons.edit,
                  color: Theme.of(
                    context,
                  ).iconTheme.color, // Utilisation de Theme.of(context)
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
