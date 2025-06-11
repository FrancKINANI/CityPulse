import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';

class AuthService extends ChangeNotifier {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
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
        );
      }
    } catch (e) {
      print('Error loading user data: $e');
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
    } catch (e) {
      print('Sign in error: $e');
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
    } catch (e) {
      print('Profile update error: $e');
      return false;
    }
  }
}
