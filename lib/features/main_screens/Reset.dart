import 'package:flutter/material.dart';
import '../legacy/screens/auth/reset_password_screen.dart';
export '../legacy/screens/auth/reset_password_screen.dart';

// Ce fichier est déprécié. Utilisez auth/reset_password_screen.dart à la place.
@Deprecated('Utilisez auth/reset_password_screen.dart à la place')
class Reset extends StatefulWidget {
  const Reset({super.key});
  @override
  ResetState createState() => ResetState();
}

class ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    // Rediriger vers le nouveau composant
    return const ResetPasswordScreen();
  }
}
