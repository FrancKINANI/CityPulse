import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:citypulse/services/auth_service.dart';
import 'package:citypulse/config/app_config.dart';

// Mock de FirebaseAuth
class MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}

class MockUser extends Mock implements firebase_auth.User {}

class MockUserCredential extends Mock implements firebase_auth.UserCredential {}

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late AuthService authService;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    authService = AuthService();
  });

  group('AuthService', () {
    test('signIn - success', () async {
      // Arrange
      final mockUser = MockUser();
      final mockCredential = MockUserCredential();
      when(mockCredential.user).thenReturn(mockUser);
      when(mockFirebaseAuth.signInWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => mockCredential);

      // Act
      final result = await authService.signIn('test@example.com', 'password123');

      // Assert
      expect(result, true);
      verify(mockFirebaseAuth.signInWithEmailAndPassword(
        email: 'test@example.com',
        password: 'password123',
      )).called(1);
    });

    test('signIn - failure', () async {
      // Arrange
      when(mockFirebaseAuth.signInWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenThrow(firebase_auth.FirebaseAuthException());

      // Act & Assert
      expect(
        () => authService.signIn('invalid@example.com', 'wrongpassword'),
        throwsA(isA<Exception>()),
      );
    });

    test('signUp - success', () async {
      // Arrange
      final mockUser = MockUser();
      final mockCredential = MockUserCredential();
      when(mockCredential.user).thenReturn(mockUser);
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => mockCredential);

      // Act
      final result = await authService.signUp('new@example.com', 'password123');

      // Assert
      expect(result, true);
      verify(mockFirebaseAuth.createUserWithEmailAndPassword(
        email: 'new@example.com',
        password: 'password123',
      )).called(1);
    });

    test('signUp - failure', () async {
      // Arrange
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenThrow(firebase_auth.FirebaseAuthException());

      // Act & Assert
      expect(
        () => authService.signUp('invalid@example.com', 'password123'),
        throwsA(isA<Exception>()),
      );
    });

    test('signOut - success', () async {
      // Arrange
      when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);

      // Act
      await authService.signOut();

      // Assert
      verify(mockFirebaseAuth.signOut()).called(1);
    });

    test('signOut - failure', () async {
      // Arrange
      when(mockFirebaseAuth.signOut()).thenThrow(Exception());

      // Act & Assert
      expect(
        () => authService.signOut(),
        throwsA(isA<Exception>()),
      );
    });
  });
}
