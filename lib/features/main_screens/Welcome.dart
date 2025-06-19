import 'package:flutter/material.dart';
import 'package:citypulse/features/auth/screens/signin_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    _navigateToExplore();
  }

  Future<void> _navigateToExplore() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const SigninScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Bienvenue sur CityPulse',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            // Bouton optionnel - la navigation automatique vers l'écran de connexion est déjà implémentée
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (context) => const ExploreScreen(),
            //       ),
            //     );
            //   },
            //   child: const Text('Explorer'),
            // ),
          ],
        ),
      ),
    );
  }
}
