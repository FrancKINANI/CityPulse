import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  group('Network Conditions Tests', () {
    late FirebaseAuth auth;
    late FirebaseFirestore firestore;
    late FirebaseStorage storage;
    late Connectivity connectivity;

    setUpAll(() async {
      auth = FirebaseAuth.instance;
      firestore = FirebaseFirestore.instance;
      storage = FirebaseStorage.instance;
      connectivity = Connectivity();
    });

    test('Offline mode', () async {
      // Simuler une connexion offline
      await connectivity.setMockConnectivityResult(ConnectivityResult.none);

      try {
        // Authentification
        final email = 'test@example.com';
        final password = 'password123';
        await auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Network error'));
      }

      try {
        // Firestore
        final doc = firestore.collection('test').doc('testDoc');
        await doc.set({
          'name': 'Test Document',
        });
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Network error'));
      }

      try {
        // Storage
        final ref = storage.ref().child('test/test.txt');
        final data = Uint8List.fromList('Test file content'.codeUnits);
        await ref.putData(data);
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Network error'));
      }
    });

    test('Slow network', () async {
      // Simuler une connexion lente
      await connectivity.setMockConnectivityResult(ConnectivityResult.mobile);

      final email = 'test@example.com';
      final password = 'password123';

      // Mesurer le temps de réponse
      final stopwatch = Stopwatch()..start();
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      stopwatch.stop();

      // Vérifier que la réponse n'est pas trop longue
      expect(stopwatch.elapsedMilliseconds, lessThan(5000));
    });

    test('No internet connection', () async {
      // Simuler une connexion sans internet
      await connectivity.setMockConnectivityResult(ConnectivityResult.none);

      try {
        // Vérifier que les opérations Firebase échouent
        await firestore.collection('test').doc('testDoc').get();
        fail('Should have thrown an exception');
      } catch (e) {
        expect(e.toString(), contains('Network error'));
      }
    });

    test('Network recovery', () async {
      // Simuler une connexion offline
      await connectivity.setMockConnectivityResult(ConnectivityResult.none);

      // Créer un document avec persistence
      final doc = firestore.collection('test').doc('testDoc');
      await doc.set({
        'name': 'Test Document',
        'createdAt': FieldValue.serverTimestamp(),
      });

      // Simuler une connexion de retour
      await connectivity.setMockConnectivityResult(ConnectivityResult.wifi);

      // Vérifier que le document est synchronisé
      final syncedDoc = await doc.get();
      expect(syncedDoc.exists, isTrue);
      expect(syncedDoc.data()?['name'], equals('Test Document'));
    });
  });
}
