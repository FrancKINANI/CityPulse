import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_interest.dart';

class InterestService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _interestsCollection = 'user_interests';
  final List<String> _defaultCategories = [
    'restaurants',
    'monuments',
    'hotels',
    'shopping',
    'events',
    'culture'
  ];

  Future<void> saveInterests(String userId, List<String> interests) async {
    try {
      final batch = _firestore.batch();
      
      for (var interest in interests) {
        final data = UserInterest(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          userId: userId,
          interest: interest,
          category: _getDefaultCategory(interest),
          isCustom: !_defaultCategories.contains(interest.toLowerCase()),
          createdAt: DateTime.now(),
        );
        
        batch.set(
          _firestore.collection(_interestsCollection).doc(),
          data.toJson(),
        );
      }
      
      await batch.commit();
    } catch (e) {
      throw Exception('Erreur lors de la sauvegarde des intérêts: $e');
    }
  }

  Stream<List<UserInterest>> getUserInterests(String userId) {
    return _firestore
        .collection(_interestsCollection)
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => UserInterest.fromJson(doc.data()))
            .toList());
  }

  String _getDefaultCategory(String interest) {
    if (_defaultCategories.contains(interest.toLowerCase())) {
      return interest.toLowerCase();
    }
    return 'autre';
  }
}
