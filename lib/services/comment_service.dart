import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../models/firebase/comments/comment_model.dart';
import 'firestore_service.dart';

class CommentService {
  final FirestoreService _firestoreService;

  CommentService(this._firestoreService);

  // Créer un nouveau commentaire
  Future<void> createComment(CommentModel comment) async {
    try {
      await _firestoreService
          .getCommentsCollection()
          .doc(comment.id)
          .set(comment.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la création du commentaire: $e');
    }
  }

  // Mettre à jour un commentaire
  Future<void> updateComment(CommentModel comment) async {
    try {
      await _firestoreService
          .getCommentsCollection()
          .doc(comment.id)
          .update(comment.toJson());
    } catch (e) {
      throw Exception('Erreur lors de la mise à jour du commentaire: $e');
    }
  }

  // Obtenir un commentaire spécifique
  Future<CommentModel?> getComment(String commentId) async {
    try {
      final doc = await _firestoreService.getCommentsCollection().doc(commentId).get();
      if (doc.exists) {
        return CommentModel.fromJson(doc.data()!);
      }
      return null;
    } catch (e) {
      throw Exception('Erreur lors de la récupération du commentaire: $e');
    }
  }

  // Obtenir les commentaires d'un lieu
  Future<List<CommentModel>> getPlaceComments(String placeId) async {
    try {
      final docs = await _firestoreService
          .getCommentsCollection()
          .where('placeId', isEqualTo: placeId)
          .orderBy('createdAt', descending: true)
          .get();
      
      return docs.docs
          .map((doc) => CommentModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des commentaires: $e');
    }
  }

  // Obtenir le stream des commentaires d'un lieu
  Stream<List<CommentModel>> watchPlaceComments(String placeId) {
    return _firestoreService
        .getCommentsCollection()
        .where('placeId', isEqualTo: placeId)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((query) =>
            query.docs.map((doc) => CommentModel.fromJson(doc.data()!)).toList());
  }

  // Obtenir les commentaires d'un utilisateur
  Future<List<CommentModel>> getUserComments(String userId) async {
    try {
      final docs = await _firestoreService
          .getCommentsCollection()
          .where('userId', isEqualTo: userId)
          .orderBy('createdAt', descending: true)
          .get();
      
      return docs.docs
          .map((doc) => CommentModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des commentaires: $e');
    }
  }

  // Obtenir le stream des commentaires d'un utilisateur
  Stream<List<CommentModel>> watchUserComments(String userId) {
    return _firestoreService
        .getCommentsCollection()
        .where('userId', isEqualTo: userId)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((query) =>
            query.docs.map((doc) => CommentModel.fromJson(doc.data()!)).toList());
  }

  // Supprimer un commentaire
  Future<void> deleteComment(String commentId) async {
    try {
      await _firestoreService
          .getCommentsCollection()
          .doc(commentId)
          .delete();
    } catch (e) {
      throw Exception('Erreur lors de la suppression du commentaire: $e');
    }
  }

  // Obtenir les réponses à un commentaire
  Future<List<CommentModel>> getReplies(String parentId) async {
    try {
      final docs = await _firestoreService
          .getCommentsCollection()
          .where('parentId', isEqualTo: parentId)
          .orderBy('createdAt', descending: true)
          .get();
      
      return docs.docs
          .map((doc) => CommentModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des réponses: $e');
    }
  }

  // Obtenir le stream des réponses à un commentaire
  Stream<List<CommentModel>> watchReplies(String parentId) {
    return _firestoreService
        .getCommentsCollection()
        .where('parentId', isEqualTo: parentId)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((query) =>
            query.docs.map((doc) => CommentModel.fromJson(doc.data()!)).toList());
  }
}
