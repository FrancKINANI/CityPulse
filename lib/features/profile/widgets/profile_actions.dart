import 'package:flutter/material.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.edit, color: Theme.of(context).iconTheme.color),
            title: Text('Modifier le profil', style: Theme.of(context).textTheme.bodyLarge),
            onTap: () {
              // TODO: Implement edit profile
            },
          ),
          ListTile(
            leading: Icon(Icons.qr_code, color: Theme.of(context).iconTheme.color),
            title: Text('Scanner QR Code', style: Theme.of(context).textTheme.bodyLarge),
            onTap: () {
              // TODO: Implement QR code scanning
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
            title: Text('Déconnexion', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.error)),
            onTap: () {
              // TODO: Implement logout
            },
          ),
        ],
      ),
    );
  }
}
