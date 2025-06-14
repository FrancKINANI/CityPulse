import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/features/auth/widgets/auth_form_field.dart';
import 'package:citypulse/features/auth/widgets/auth_button.dart';
import 'package:citypulse/features/auth/widgets/auth_header.dart';
import 'package:citypulse/features/auth/widgets/auth_footer.dart';

/// Écran de réinitialisation de mot de passe refactorisé utilisant des composants modulaires.
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});
  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;
  bool _resetSent = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _handleResetPassword() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // Simuler l'envoi d'un email de réinitialisation
      // À remplacer par l'appel réel au service d'authentification
      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _resetSent = true;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred. Please try again.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const AuthHeader(
                      title: "Reset Password",
                      subtitle:
                          "Enter your email and we'll send you instructions to reset your password",
                    ),

                    if (!_resetSent) ...[
                      AuthFormField(
                        controller: _emailController,
                        hintText: "Email",
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),

                      if (_errorMessage != null) ...[
                        const SizedBox(height: 16),
                        Text(
                          _errorMessage!,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],

                      const SizedBox(height: 24),

                      AuthButton(
                        text: 'Send Reset Link',
                        onPressed: _handleResetPassword,
                        isLoading: _isLoading,
                      ),
                    ] else ...[
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Theme.of(context).colorScheme.tertiary,
                              size: 48,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              "Reset link sent!",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "We've sent instructions to ${_emailController.text}",
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      AuthButton(
                        text: 'Back to Sign In',
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/signin');
                        },
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                    ],

                    const SizedBox(height: 24),

                    if (!_resetSent)
                      AuthFooter(
                        text: "Remember your password? ",
                        linkText: "Sign In",
                        onLinkPressed: () {
                          Navigator.pushReplacementNamed(context, '/signin');
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
