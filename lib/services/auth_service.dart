import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user.dart';

class AuthService extends ChangeNotifier {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User? _currentUser;

  User? get currentUser => _currentUser;

  // Listen to auth state changes
  AuthService() {
    _auth.authStateChanges().listen((firebase_auth.User? firebaseUser) {
      if (firebaseUser == null) {
        _currentUser = null;
      } else {
        _loadUserData(firebaseUser);
      }
      notifyListeners();
    });
  }

  Future<void> _loadUserData(firebase_auth.User firebaseUser) async {
    try {
      final doc = await _firestore
          .collection('users')
          .doc(firebaseUser.uid)
          .get();
      if (doc.exists) {
        final data = doc.data()!;
        _currentUser = User(
          id: firebaseUser.uid,
          name: data['name'] ?? '',
          email: firebaseUser.email ?? '',
          photoUrl: data['photoUrl'],
          bio: data['bio'],
          interests: data['interests'],
          createdTours: List<String>.from(data['createdTours'] ?? []),
          savedTours: List<String>.from(data['savedTours'] ?? []),
        );
      } else {
        // Create a new user document if it doesn't exist
        _currentUser = User(
          id: firebaseUser.uid,
          name: firebaseUser.displayName ?? '',
          email: firebaseUser.email ?? '',
          photoUrl: firebaseUser.photoURL,
        );

        // Save the new user to Firestore
        await _firestore
            .collection('users')
            .doc(firebaseUser.uid)
            .set(_currentUser!.toJson());
      }
      notifyListeners();
    } catch (e) {
      print('Error loading user data: $e');
    }
  }

  Future<void> updateUserDetails({
    String? name,
    String? email,
    String? photoUrl,
  }) async {
    try {
      if (_currentUser == null) return;
      final user = _currentUser!;

      // Update Firestore
      await _firestore.collection('users').doc(user.id).update({
        if (name != null) 'name': name,
        if (email != null) 'email': email,
        if (photoUrl != null) 'photoUrl': photoUrl,
      });

      // Update local user
      if (name != null) user.name = name;
      if (email != null) user.email = email;
      if (photoUrl != null) user.photoUrl = photoUrl;

      notifyListeners();
    } catch (e) {
      print('Error updating user details: $e');
      rethrow;
    }
  }

  Future<bool> signIn(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _loadUserData(userCredential.user!);
      return true;
    } on firebase_auth.FirebaseAuthException catch (e) {
      print('Sign in error: ${e.message}');
      return false;
    } catch (e) {
      print('Sign in error: $e');
      return false;
    }
  }

  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return false;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final firebase_auth.AuthCredential credential =
          firebase_auth.GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );

      final userCredential = await _auth.signInWithCredential(credential);
      await _loadUserData(userCredential.user!);

      if (userCredential.additionalUserInfo?.isNewUser == true) {
        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'name': userCredential.user!.displayName ?? '',
          'email': userCredential.user!.email ?? '',
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
      return true;
    } on firebase_auth.FirebaseAuthException catch (e) {
      print('Google Sign-In error: ${e.message}');
      return false;
    } catch (e) {
      print('Google Sign-In error: $e');
      return false;
    }
  }

  Future<bool> signUp(String name, String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Create user document in Firestore
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'name': name,
        'email': email,
        'createdAt': FieldValue.serverTimestamp(),
      });

      await _loadUserData(userCredential.user!);
      return true;
    } on firebase_auth.FirebaseAuthException catch (e) {
      print('Sign up error: ${e.message}');
      return false;
    } catch (e) {
      print('Sign up error: $e');
      return false;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      _currentUser = null;
      notifyListeners();
    } catch (e) {
      print('Sign out error: $e');
    }
  }

  Future<bool> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return true;
    } on firebase_auth.FirebaseAuthException catch (e) {
      print('Password reset error: ${e.message}');
      return false;
    } catch (e) {
      print('Password reset error: $e');
      return false;
    }
  }

  Future<bool> updateProfile(Map<String, dynamic> data) async {
    try {
      if (_currentUser == null) return false;

      await _firestore.collection('users').doc(_currentUser!.id).update(data);

      if (data['name'] != null) {
        _currentUser = User(
          id: _currentUser!.id,
          name: data['name'],
          email: _currentUser!.email,
        );
        notifyListeners();
      }

      return true;
    } on firebase_auth.FirebaseAuthException catch (e) {
      print('Profile update error: ${e.message}');
      return false;
    } catch (e) {
      print('Profile update error: $e');
      return false;
    }
  }
}
