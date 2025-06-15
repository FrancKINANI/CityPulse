import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/favorite_service.dart';
import 'package:citypulse/models/favorite_item.dart';
import 'package:citypulse/features/favorites/widgets/favorite_card.dart';
import 'package:citypulse/config/app_theme.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final FavoriteService _favoriteService = FavoriteService();
  String _selectedCategory = 'Tous';

  @override
  Widget build(BuildContext context) {
    final userId = Provider.of<String>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mes Favoris',
          style: AppTheme.headingStyle,
        ),
        centerTitle: true,
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: AppTheme.textPrimaryColor,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(AppTheme.defaultPadding),
            color: AppTheme.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Catégories',
                  style: AppTheme.body1.copyWith(
                    color: AppTheme.textPrimaryColor,
                  ),
                ),
                PopupMenuButton<String>(
                  color: AppTheme.cardColor,
                  icon: Icon(
                    Icons.filter_list,
                    color: AppTheme.textPrimaryColor,
                  ),
                  onSelected: (String category) {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        value: 'Tous',
                        child: Text(
                          'Tous',
                          style: AppTheme.body1,
                        ),
                      ),
                      PopupMenuItem(
                        value: 'restaurants',
                        child: Text(
                          'Restaurants',
                          style: AppTheme.body1,
                        ),
                      ),
                      PopupMenuItem(
                        value: 'monuments',
                        child: Text(
                          'Monuments',
                          style: AppTheme.body1,
                        ),
                      ),
                      PopupMenuItem(
                        value: 'hotels',
                        child: Text(
                          'Hôtels',
                          style: AppTheme.body1,
                        ),
                      ),
                      PopupMenuItem(
                        value: 'shopping',
                        child: Text(
                          'Shopping',
                          style: AppTheme.body1,
                        ),
                      ),
                      PopupMenuItem(
                        value: 'events',
                        child: Text(
                          'Événements',
                          style: AppTheme.body1,
                        ),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: StreamBuilder<List<FavoriteItem>>(
              stream: _favoriteService.getFavorites(userId),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppTheme.secondaryColor,
                    ),
                  );
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Erreur: ${snapshot.error}',
                      style: AppTheme.body1.copyWith(
                        color: AppTheme.errorColor,
                      ),
                    ),
                  );
                }

                final favorites = snapshot.data ?? [];
                
                // Filtrer par catégorie si nécessaire
                final filteredFavorites = _selectedCategory == 'Tous'
                    ? favorites
                    : favorites.where((f) => f.category == _selectedCategory).toList();

                if (filteredFavorites.isEmpty) {
                  return Center(
                    child: Text(
                      'Aucun favori trouvé',
                      style: AppTheme.body1.copyWith(
                        color: AppTheme.textSecondaryColor,
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(AppTheme.defaultPadding),
                  itemCount: filteredFavorites.length,
                  itemBuilder: (context, index) {
                    final favorite = filteredFavorites[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: AppTheme.defaultSpacing),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppTheme.defaultRadius),
                      ),
                      child: FavoriteCard(favorite: favorite),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
