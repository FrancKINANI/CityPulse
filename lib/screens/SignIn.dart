import 'package:flutter/material.dart';
import 'auth/signin_screen.dart';
export 'auth/signin_screen.dart';

// Ce fichier est déprécié. Utilisez auth/signin_screen.dart à la place.
@Deprecated('Utilisez auth/signin_screen.dart à la place')
class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // Rediriger vers le nouveau composant
    return const SignInScreen();
  }
}
