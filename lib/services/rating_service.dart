import '../models/firebase/ratings/rating_model.dart';
import 'firestore_service.dart';

class RatingService {
  final FirestoreService _firestoreService;

  RatingService(this._firestoreService);

  // Créer une nouvelle note
  Future<void> createRating(RatingModel rating) async {
    try {
      await _firestoreService
          .getRatingsCollection()
          .doc(rating.id)
          .set(rating.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la création de la note: $e');
    }
  }

  // Mettre à jour une note
  Future<void> updateRating(RatingModel rating) async {
    try {
      await _firestoreService
          .getRatingsCollection()
          .doc(rating.id)
          .update(rating.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la mise à jour de la note: $e');
    }
  }

  // Obtenir une note spécifique
  Future<RatingModel?> getRating(String ratingId) async {
    try {
      final doc = await _firestoreService.getRatingsCollection().doc(ratingId).get();
      if (doc.exists) {
        return RatingModel.fromJson(doc.data()!);
      }
      return null;
    } catch (e) {
      throw Exception('Erreur lors de la récupération de la note: $e');
    }
  }

  // Obtenir la note d'un utilisateur pour un lieu
  Future<RatingModel?> getUserRatingForPlace(String userId, String placeId) async {
    try {
      final docs = await _firestoreService
          .getRatingsCollection()
          .where('userId', isEqualTo: userId)
          .where('placeId', isEqualTo: placeId)
          .limit(1)
          .get();
      
      if (docs.docs.isNotEmpty) {
        return RatingModel.fromJson(docs.docs.first.data());
      }
      return null;
    } catch (e) {
      throw Exception('Erreur lors de la récupération de la note: $e');
    }
  }

  // Obtenir toutes les notes d'un lieu
  Future<List<RatingModel>> getPlaceRatings(String placeId) async {
    try {
      final docs = await _firestoreService
          .getRatingsCollection()
          .where('placeId', isEqualTo: placeId)
          .get();
      
      return docs.docs
          .map((doc) => RatingModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des notes: $e');
    }
  }

  // Obtenir la moyenne des notes d'un lieu
  Future<double> getPlaceAverageRating(String placeId) async {
    try {
      final ratings = await getPlaceRatings(placeId);
      if (ratings.isEmpty) return 0.0;
      
      final sum = ratings.fold(0.0, (sum, rating) => sum + rating.rating);
      return sum / ratings.length;
    } catch (e) {
      throw Exception('Erreur lors du calcul de la moyenne: $e');
    }
  }

  // Obtenir le nombre de notes d'un lieu
  Future<int> getPlaceRatingCount(String placeId) async {
    try {
      final snapshot = await _firestoreService
          .getRatingsCollection()
          .where('placeId', isEqualTo: placeId)
          .get();
      return snapshot.docs.length;
    } catch (e) {
      throw Exception('Erreur lors du comptage des notes: $e');
    }
  }

  // Supprimer une note
  Future<void> deleteRating(String ratingId) async {
    try {
      await _firestoreService
          .getRatingsCollection()
          .doc(ratingId)
          .delete();
    } catch (e) {
      throw Exception('Erreur lors de la suppression de la note: $e');
    }
  }

  // Obtenir les notes d'un utilisateur
  Future<List<RatingModel>> getUserRatings(String userId) async {
    try {
      final docs = await _firestoreService
          .getRatingsCollection()
          .where('userId', isEqualTo: userId)
          .get();
      
      return docs.docs
          .map((doc) => RatingModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des notes: $e');
    }
  }
}
