import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:citypulse/config/firebase_options.dart' as DefaultFirebaseOptions;

void main() {
  group('Firebase Configuration Tests', () {
    late FirebaseApp app;
    late FirebaseAuth auth;
    late FirebaseFirestore firestore;
    late FirebaseStorage storage;
    late FirebaseMessaging messaging;
    late FirebaseAnalytics analytics;

    setUpAll(() async {
      // Initialiser Firebase
      app = await Firebase.initializeApp();
      auth = FirebaseAuth.instance;
      firestore = FirebaseFirestore.instance;
      storage = FirebaseStorage.instance;
      messaging = FirebaseMessaging.instance;
      analytics = FirebaseAnalytics.instance;
    });

    test('Firebase initialization', () async {
      expect(app, isNotNull);
      expect(auth, isNotNull);
      expect(firestore, isNotNull);
      expect(storage, isNotNull);
      expect(messaging, isNotNull);
      expect(analytics, isNotNull);
    });

    test('Authentication flow', () async {
      final email = 'test@example.com';
      final password = 'password123';

      try {
        // Créer un utilisateur test
        final userCredential = await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        expect(userCredential.user, isNotNull);

        // Se déconnecter
        await auth.signOut();
        expect(auth.currentUser, isNull);

        // Se reconnecter
        final signInCredential = await auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        expect(signInCredential.user, isNotNull);

        // Supprimer le compte test
        await signInCredential.user!.delete();
      } catch (e) {
        fail('Authentication test failed: $e');
      }
    });

    test('Firestore operations', () async {
      final testDoc = firestore.collection('test').doc('testDoc');

      try {
        // Créer un document
        await testDoc.set({
          'name': 'Test Document',
          'createdAt': FieldValue.serverTimestamp(),
        });

        // Lire le document
        final doc = await testDoc.get();
        expect(doc.exists, isTrue);
        expect(doc.data()?['name'], equals('Test Document'));

        // Mettre à jour le document
        await testDoc.update({
          'name': 'Updated Test Document',
        });

        // Supprimer le document
        await testDoc.delete();
      } catch (e) {
        fail('Firestore test failed: $e');
      }
    });

    test('Storage operations', () async {
      final testRef = storage.ref().child('test/test.txt');

      try {
        // Créer un fichier test
        final data = Uint8List.fromList('Test file content'.codeUnits);
        final uploadTask = testRef.putData(data);
        await uploadTask.whenComplete(() {});

        // Lire le fichier
        final downloadUrl = await testRef.getDownloadURL();
        expect(downloadUrl, isNotEmpty);

        // Supprimer le fichier
        await testRef.delete();
      } catch (e) {
        fail('Storage test failed: $e');
      }
    });

    test('Messaging functionality', () async {
      try {
        // Obtenir le token de notification
        final token = await messaging.getToken();
        expect(token, isNotEmpty);

        // Configurer les permissions
        await messaging.requestPermission(
          alert: true,
          badge: true,
          sound: true,
        );
      } catch (e) {
        fail('Messaging test failed: $e');
      }
    });

    test('Analytics tracking', () async {
      try {
        // Envoyer un événement de test
        await analytics.logEvent(
          name: 'test_event',
          parameters: {
            'test_param': 'test_value',
          },
        );
      } catch (e) {
        fail('Analytics test failed: $e');
      }
    });
  });
}
