import 'package:flutter/material.dart';
import 'auth/signup_screen.dart';
export 'auth/signup_screen.dart';

// Ce fichier est déprécié. Utilisez auth/signup_screen.dart à la place.
@Deprecated('Utilisez auth/signup_screen.dart à la place')
class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // Rediriger vers le nouveau composant
    return const SignUpScreen();
  }
}
