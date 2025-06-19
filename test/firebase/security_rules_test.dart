import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

void main() {
  group('Security Rules Tests', () {
    late FirebaseAuth auth;
    late FirebaseFirestore firestore;
    late FirebaseStorage storage;

    setUpAll(() async {
      auth = FirebaseAuth.instance;
      firestore = FirebaseFirestore.instance;
      storage = FirebaseStorage.instance;
    });

    test('Authentication required', () async {
      // Tester l'accès sans authentification
      try {
        await firestore.collection('users').doc('test').get();
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Permission denied'));
      }

      try {
        await storage.ref().child('test').getDownloadURL();
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Permission denied'));
      }
    });

    test('Data validation', () async {
      // Créer un utilisateur test
      final testUser = await auth.createUserWithEmailAndPassword(
        email: 'test@example.com',
        password: 'password123',
      );

      try {
        // Tester la validation des données
        await firestore.collection('users').doc(testUser.user!.uid).set({
          'name': 'Test User',
          'email': 'invalid-email',  // Email invalide
        });
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Invalid data'));
      }

      // Nettoyer
      await testUser.user!.delete();
    });

    test('Access control', () async {
      // Créer deux utilisateurs
      final user1 = await auth.createUserWithEmailAndPassword(
        email: 'user1@example.com',
        password: 'password123',
      );

      final user2 = await auth.createUserWithEmailAndPassword(
        email: 'user2@example.com',
        password: 'password123',
      );

      try {
        // User1 essaie d'accéder aux données de User2
        await firestore.collection('users').doc(user2.user!.uid).get();
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Permission denied'));
      }

      // Nettoyer
      await user1.user!.delete();
      await user2.user!.delete();
    });

    test('Rate limiting', () async {
      // Créer un utilisateur test
      final testUser = await auth.createUserWithEmailAndPassword(
        email: 'test@example.com',
        password: 'password123',
      );

      try {
        // Tenter de créer trop de documents rapidement
        for (int i = 0; i < 100; i++) {
          await firestore.collection('test').doc('test$i').set({
            'name': 'Test Document $i',
          });
        }
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Rate limit exceeded'));
      }

      // Nettoyer
      await testUser.user!.delete();
    });

    test('File size limits', () async {
      // Créer un utilisateur test
      final testUser = await auth.createUserWithEmailAndPassword(
        email: 'test@example.com',
        password: 'password123',
      );

      try {
        // Tenter d'uploader un fichier trop grand
        final largeFile = Uint8List(1024 * 1024 * 10); // 10MB
        await storage.ref().child('test/large_file').putData(largeFile);
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('File too large'));
      }

      // Nettoyer
      await testUser.user!.delete();
    });
  });
}
