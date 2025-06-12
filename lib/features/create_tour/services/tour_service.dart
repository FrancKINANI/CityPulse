import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/tour.dart';

class TourService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = 'tours';

  Future<Tour> createTour(Tour tour) async {
    try {
      final docRef = await _firestore
          .collection(_collection)
          .add(tour.toJson());
      return tour.copyWith(id: docRef.id);
    } catch (e) {
      throw Exception('Failed to create tour: $e');
    }
  }

  Future<Tour> getTour(String id) async {
    try {
      final doc = await _firestore.collection(_collection).doc(id).get();
      if (!doc.exists) {
        throw Exception('Tour not found');
      }
      return Tour.fromJson(doc.data()!);
    } catch (e) {
      throw Exception('Failed to get tour: $e');
    }
  }

  Future<List<Tour>> getTours() async {
    try {
      final querySnapshot = await _firestore.collection(_collection).get();
      return querySnapshot.docs
          .map((doc) => Tour.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get tours: $e');
    }
  }

  Future<void> updateTour(Tour tour) async {
    try {
      await _firestore
          .collection(_collection)
          .doc(tour.id)
          .update(tour.toJson());
    } catch (e) {
      throw Exception('Failed to update tour: $e');
    }
  }

  Future<void> deleteTour(String id) async {
    try {
      await _firestore.collection(_collection).doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete tour: $e');
    }
  }

  Future<List<Tour>> getToursByGuide(String guideId) async {
    try {
      final querySnapshot = await _firestore
          .collection(_collection)
          .where('guideId', isEqualTo: guideId)
          .get();
      return querySnapshot.docs
          .map((doc) => Tour.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get guide tours: $e');
    }
  }
}
