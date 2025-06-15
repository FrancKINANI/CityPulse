import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/favorite_item.dart';

class FavoriteService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _favoritesCollection = 'favorites';

  Future<void> addFavorite(FavoriteItem favorite) async {
    try {
      await _firestore.collection(_favoritesCollection).add(favorite.toJson());
    } catch (e) {
      throw Exception('Erreur lors de l\'ajout aux favoris: $e');
    }
  }

  Future<void> removeFavorite(String favoriteId) async {
    try {
      await _firestore.collection(_favoritesCollection).doc(favoriteId).delete();
    } catch (e) {
      throw Exception('Erreur lors de la suppression du favori: $e');
    }
  }

  Stream<List<FavoriteItem>> getFavorites(String userId) {
    return _firestore
        .collection(_favoritesCollection)
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => FavoriteItem.fromJson(doc.data()))
            .toList());
  }

  Future<bool> isFavorite(String userId, String itemId) async {
    try {
      final snapshot = await _firestore
          .collection(_favoritesCollection)
          .where('userId', isEqualTo: userId)
          .where('itemId', isEqualTo: itemId)
          .get();

      return snapshot.docs.isNotEmpty;
    } catch (e) {
      throw Exception('Erreur lors de la vérification du favori: $e');
    }
  }
}
