import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Obtenir la référence à une collection
  CollectionReference getCollection(String collectionName) {
    return _firestore.collection(collectionName);
  }

  // Obtenir la référence à un document spécifique
  DocumentReference getDocument(String collectionName, String docId) {
    return _firestore.collection(collectionName).doc(docId);
  }

  // Obtenir la référence à un sous-collection
  CollectionReference getSubCollection(
      String collectionName, String docId, String subCollectionName) {
    return _firestore
        .collection(collectionName)
        .doc(docId)
        .collection(subCollectionName);
  }

  // Obtenir la référence à un utilisateur
  DocumentReference getUserRef(String? userId) {
    return _firestore.collection('users').doc(userId ?? _auth.currentUser?.uid);
  }

  // Obtenir la référence à la collection des utilisateurs
  CollectionReference getUsersCollection() {
    return _firestore.collection('users');
  }

  // Obtenir la référence à la collection des places
  CollectionReference getPlacesCollection() {
    return _firestore.collection('places');
  }

  // Obtenir la référence à la collection des catégories
  CollectionReference getCategoriesCollection() {
    return _firestore.collection('categories');
  }

  // Obtenir la référence à la collection des tours
  CollectionReference getToursCollection() {
    return _firestore.collection('tours');
  }

  // Obtenir la référence à la collection des événements
  CollectionReference getEventsCollection() {
    return _firestore.collection('events');
  }

  // Obtenir la référence à la collection des commentaires
  CollectionReference getCommentsCollection() {
    return _firestore.collection('comments');
  }

  // Obtenir la référence à la collection des notes
  CollectionReference getRatingsCollection() {
    return _firestore.collection('ratings');
  }

  // Obtenir la référence à la collection des notifications
  CollectionReference getNotificationsCollection() {
    return _firestore.collection('notifications');
  }

  // Obtenir les préférences d'un utilisateur
  CollectionReference getUserPreferences(String userId) {
    return getUserRef(userId).collection('preferences');
  }

  // Obtenir les intérêts d'un utilisateur
  CollectionReference getUserInterests(String userId) {
    return getUserRef(userId).collection('interests');
  }

  // Obtenir les favoris d'un utilisateur
  CollectionReference getUserFavorites(String userId) {
    return getUserRef(userId).collection('favorites');
  }

  // Obtenir les notifications d'un utilisateur
  CollectionReference getUserNotifications(String userId) {
    return getUserRef(userId).collection('notifications');
  }

  // Obtenir les tours d'un utilisateur
  CollectionReference getUserTours(String userId) {
    return getUserRef(userId).collection('tours');
  }

  // Obtenir les événements d'un utilisateur
  CollectionReference getUserEvents(String userId) {
    return getUserRef(userId).collection('events');
  }

  // Obtenir les commentaires d'un utilisateur
  CollectionReference getUserComments(String userId) {
    return getUserRef(userId).collection('comments');
  }

  // Obtenir les notes d'un utilisateur
  CollectionReference getUserRatings(String userId) {
    return getUserRef(userId).collection('ratings');
  }

  // Obtenir les places d'un utilisateur
  CollectionReference getUserPlaces(String userId) {
    return getUserRef(userId).collection('places');
  }

  // Obtenir les catégories d'un utilisateur
  CollectionReference getUserCategories(String userId) {
    return getUserRef(userId).collection('categories');
  }
}
