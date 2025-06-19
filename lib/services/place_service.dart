import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../models/firebase/places/place_model.dart';
import '../models/firebase/categories/category_model.dart';
import 'firestore_service.dart';

class PlaceService {
  final FirestoreService _firestoreService;

  PlaceService(this._firestoreService);

  // Créer un nouveau lieu
  Future<void> createPlace(PlaceModel place) async {
    try {
      await _firestoreService
          .getPlacesCollection()
          .doc(place.id)
          .set(place.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la création du lieu: $e');
    }
  }

  // Mettre à jour un lieu
  Future<void> updatePlace(PlaceModel place) async {
    try {
      await _firestoreService
          .getPlacesCollection()
          .doc(place.id)
          .update(place.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la mise à jour du lieu: $e');
    }
  }

  // Obtenir un lieu spécifique
  Future<PlaceModel?> getPlace(String placeId) async {
    try {
      final doc = await _firestoreService.getPlacesCollection().doc(placeId).get();
      if (doc.exists) {
        return PlaceModel.fromJson(doc.data()!);
      }
      return null;
    } catch (e) {
      throw Exception('Erreur lors de la récupération du lieu: $e');
    }
  }

  // Obtenir tous les lieux
  Future<List<PlaceModel>> getAllPlaces() async {
    try {
      final docs = await _firestoreService.getPlacesCollection().get();
      return docs.docs
          .map((doc) => PlaceModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des lieux: $e');
    }
  }

  // Obtenir les lieux par catégorie
  Future<List<PlaceModel>> getPlacesByCategory(String categoryId) async {
    try {
      final docs = await _firestoreService
          .getPlacesCollection()
          .where('category', isEqualTo: categoryId)
          .get();
      return docs.docs
          .map((doc) => PlaceModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des lieux: $e');
    }
  }

  // Obtenir le stream des lieux
  Stream<List<PlaceModel>> watchPlaces() {
    return _firestoreService
        .getPlacesCollection()
        .snapshots()
        .map((query) =>
            query.docs.map((doc) => PlaceModel.fromJson(doc.data()!)).toList());
  }

  // Obtenir les lieux favoris d'un utilisateur
  Future<List<PlaceModel>> getUserFavorites(String userId) async {
    try {
      final favoriteDocs = await _firestoreService
          .getUserFavorites(userId)
          .get();
      
      final placeIds = favoriteDocs.docs.map((doc) => doc.id).toList();
      
      final places = await Future.wait(
        placeIds.map((id) => getPlace(id)).toList(),
      );
      
      return places.where((p) => p != null).map((p) => p!).toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des favoris: $e');
    }
  }

  // Ajouter un lieu aux favoris
  Future<void> addFavorite(String userId, String placeId) async {
    try {
      await _firestoreService
          .getUserFavorites(userId)
          .doc(placeId)
          .set({
        'addedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Erreur lors de l\'ajout aux favoris: $e');
    }
  }

  // Supprimer un lieu des favoris
  Future<void> removeFavorite(String userId, String placeId) async {
    try {
      await _firestoreService
          .getUserFavorites(userId)
          .doc(placeId)
          .delete();
    } catch (e) {
      throw Exception('Erreur lors de la suppression des favoris: $e');
    }
  }

  // Obtenir les catégories
  Future<List<CategoryModel>> getCategories() async {
    try {
      final docs = await _firestoreService.getCategoriesCollection().get();
      return docs.docs
          .map((doc) => CategoryModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des catégories: $e');
    }
  }
}
