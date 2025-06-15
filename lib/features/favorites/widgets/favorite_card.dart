import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/models/favorite_item.dart';
import 'package:citypulse/services/favorite_service.dart';
import 'package:citypulse/config/app_theme.dart';

class FavoriteCard extends StatelessWidget {
  final FavoriteItem favorite;

  const FavoriteCard({
    super.key,
    required this.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(favorite.imageUrl),
        backgroundColor: AppTheme.cardColor,
      ),
      title: Text(
        favorite.title,
        style: AppTheme.body1,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            favorite.category,
            style: AppTheme.captionStyle,
          ),
          const SizedBox(height: AppTheme.defaultSpacing),
          Row(
            children: List.generate(5, (index) {
              return Icon(
                index < favorite.rating ? Icons.star : Icons.star_border,
                size: 16,
                color: AppTheme.secondaryColor,
              );
            }),
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.delete_outline,
          color: AppTheme.errorColor,
        ),
        onPressed: () async {
          try {
            await FavoriteService().removeFavorite(favorite.id);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Retiré des favoris',
                  style: TextStyle(color: AppTheme.textPrimaryColor),
                ),
                backgroundColor: AppTheme.darkBackgroundColor,
              ),
            );
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Erreur: $e',
                  style: TextStyle(color: AppTheme.errorColor),
                ),
                backgroundColor: AppTheme.darkBackgroundColor,
              ),
            );
          }
        },
      ),
      onTap: () {
        // À implémenter : navigation vers le détail de l'élément
      },
    );
  }
}
