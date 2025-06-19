import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import '../models/firebase/users/user_model.dart';
import 'firestore_service.dart';

class UserService {
  final FirestoreService _firestoreService;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserService(this._firestoreService);

  // Créer un nouveau profil utilisateur
  Future<void> createUserProfile(UserModel user) async {
    try {
      await _firestoreService
          .getUserRef(user.id)
          .set(user.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la création du profil utilisateur: $e');
    }
  }

  // Mettre à jour le profil utilisateur
  Future<void> updateProfile(UserModel user) async {
    try {
      await _firestoreService
          .getUserRef(user.id)
          .update(user.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la mise à jour du profil: $e');
    }
  }

  // Obtenir le profil utilisateur
  Future<UserModel?> getUserProfile(String userId) async {
    try {
      final doc = await _firestoreService.getUserRef(userId).get();
      if (doc.exists) {
        return UserModel.fromJson(doc.data()!);
      }
      return null;
    } catch (e) {
      throw Exception('Erreur lors de la récupération du profil: $e');
    }
  }

  // Obtenir le stream du profil utilisateur
  Stream<UserModel?> watchUserProfile(String userId) {
    return _firestoreService
        .getUserRef(userId)
        .snapshots()
        .map((doc) {
      if (doc.exists) {
        return UserModel.fromJson(doc.data()!);
      }
      return null;
    });
  }

  // Mettre à jour les préférences
  Future<void> updatePreferences(String userId, Map<String, dynamic> preferences) async {
    try {
      await _firestoreService
          .getUserPreferences(userId)
          .doc('preferences')
          .set(preferences);
    } catch (e) {
      throw Exception('Erreur lors de la mise à jour des préférences: $e');
    }
  }

  // Obtenir les préférences
  Future<Map<String, dynamic>?> getPreferences(String userId) async {
    try {
      final doc = await _firestoreService
          .getUserPreferences(userId)
          .doc('preferences')
          .get();
      return doc.exists ? doc.data() : null;
    } catch (e) {
      throw Exception('Erreur lors de la récupération des préférences: $e');
    }
  }

  // Mettre à jour les intérêts
  Future<void> updateInterest(String userId, String categoryId, int level) async {
    try {
      await _firestoreService
          .getUserInterests(userId)
          .doc(categoryId)
          .set({
        'level': level,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Erreur lors de la mise à jour des intérêts: $e');
    }
  }

  // Obtenir les intérêts
  Future<List<InterestModel>> getInterests(String userId) async {
    try {
      final docs = await _firestoreService.getUserInterests(userId).get();
      return docs.docs
          .map((doc) => InterestModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des intérêts: $e');
    }
  }

  // Obtenir le stream des intérêts
  Stream<List<InterestModel>> watchInterests(String userId) {
    return _firestoreService
        .getUserInterests(userId)
        .snapshots()
        .map((query) =>
            query.docs.map((doc) => InterestModel.fromJson(doc.data()!)).toList());
  }
}
