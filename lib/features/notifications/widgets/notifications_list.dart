import 'package:flutter/material.dart';
import 'notification_item.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const NotificationItem(
          title: 'Nouvelles attractions',
          subtitle: 'Découvrez les nouvelles attractions ajoutées près de vous',
          time: 'Il y a 1 heure',
          icon: Icons.new_label,
        ),
        const NotificationItem(
          title: 'Tour terminé',
          subtitle: 'Félicitations pour avoir terminé votre tour !',
          time: 'Il y a 2 heures',
          icon: Icons.check_circle,
        ),
        const NotificationItem(
          title: 'Promotion',
          subtitle: 'Profitez de 20% de réduction sur les attractions',
          time: 'Il y a 3 heures',
          icon: Icons.local_offer,
        ),
      ],
    );
  }
}
