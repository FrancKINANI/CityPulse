import 'package:flutter/material.dart';
import '../models/firebase/tours/tour_model.dart';
import '../models/firebase/events/event_model.dart';
import 'firestore_service.dart';

class TourService extends ChangeNotifier {
  final FirestoreService _firestoreService;

  TourService(this._firestoreService);

  Future<List<TourModel>> fetchTours() async {
    try {
      final docs = await _firestoreService.getToursCollection().get();
      return docs.docs
          .map((doc) => TourModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des tours: $e');
    }
  }

  Future<TourModel> createTour(TourModel tour) async {
    try {
      final docRef = await _firestoreService.getToursCollection().add(tour.toJson());
      tour = tour.copyWith(id: docRef.id);
      await docRef.set(tour.toJson());
      return tour;
    } catch (e) {
      throw Exception('Erreur lors de la création du tour: $e');
    }
  }

  Future<bool> updateTour(TourModel tour) async {
    try {
      await _firestoreService
          .getToursCollection()
          .doc(tour.id)
          .update(tour.toJson());
      return true;
    } catch (e) {
      throw Exception('Erreur lors de la mise à jour du tour: $e');
    }
  }

  Future<bool> deleteTour(String tourId) async {
    try {
      await _firestoreService
          .getToursCollection()
          .doc(tourId)
          .delete();
      return true;
    } catch (e) {
      throw Exception('Erreur lors de la suppression du tour: $e');
    }
  }

  Future<List<TourModel>> searchTours(String query) async {
    try {
      final docs = await _firestoreService
          .getToursCollection()
          .where('name', isGreaterThanOrEqualTo: query)
          .where('name', isLessThanOrEqualTo: '$query\uf8ff')
          .get();
      
      return docs.docs
          .map((doc) => TourModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la recherche des tours: $e');
    }
  }

  Future<EventModel> createEvent(EventModel event) async {
    try {
      final docRef = await _firestoreService
          .getEventsCollection()
          .add(event.toJson());
      event = event.copyWith(id: docRef.id);
      await docRef.set(event.toJson());
      return event;
    } catch (e) {
      throw Exception('Erreur lors de la création de l\'événement: $e');
    }
  }

  Future<List<EventModel>> fetchEvents(String tourId) async {
    try {
      final docs = await _firestoreService
          .getEventsCollection()
          .where('tourId', isEqualTo: tourId)
          .get();
      
      return docs.docs
          .map((doc) => EventModel.fromJson(doc.data()!))
          .toList();
    } catch (e) {
      throw Exception('Erreur lors de la récupération des événements: $e');
    }
  }
}
