import 'package:flutter/material.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Modifier le profil'),
            onTap: () {
              // TODO: Implement edit profile
            },
          ),
          ListTile(
            leading: const Icon(Icons.qr_code),
            title: const Text('Scanner QR Code'),
            onTap: () {
              // TODO: Implement QR code scanning
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Déconnexion'),
            onTap: () {
              // TODO: Implement logout
            },
          ),
        ],
      ),
    );
  }
}
