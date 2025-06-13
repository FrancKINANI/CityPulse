import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../config/app_theme.dart';
import '../../../../services/theme_service.dart';
import '../../../../services/auth_service.dart';
import 'package:citypulse/features/shared/widgets/auth_form_field.dart';
import 'package:citypulse/features/shared/widgets/auth_button.dart';

/// Écran de connexion refactorisé utilisant des composants modulaires.
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignIn() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final success = await Provider.of<AuthService>(context, listen: false).signIn(
        _emailController.text.trim(),
        _passwordController.text,
      );

      if (success) {
        if (!mounted) return;
        Navigator.pushReplacementNamed(context, '/explore');
      } else {
        setState(() {
          _errorMessage = 'Invalid email or password';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred. Please try again.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: themeService.isDarkMode ? AppTheme.darkBackgroundColor : AppTheme.backgroundColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32),
                    
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
                    
                    const SizedBox(height: 16),
                    
                    AuthFormField(
                      controller: _passwordController,
                      hintText: "Password",
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                    
                    if (_errorMessage != null) ...[  
                      const SizedBox(height: 16),
                      Text(
                        _errorMessage!,
                        style: const TextStyle(color: Colors.red, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                    
                    const SizedBox(height: 24),
                    
                    AuthButton(
                      text: 'Sign In',
                      onPressed: _handleSignIn,
                      isLoading: _isLoading,
                    ),
                    
                    const SizedBox(height: 16),
                    
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/reset');
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF9BBFAA),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: const Text('Sign Up'),
                        ),
                      ],
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