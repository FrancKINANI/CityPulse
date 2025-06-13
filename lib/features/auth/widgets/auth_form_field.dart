import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;

  const AuthFormField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
