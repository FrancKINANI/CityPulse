import 'package:flutter/material.dart';

class HelpHeader extends StatelessWidget {
  const HelpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF141E16),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12, right: 24),
            width: 24,
            height: 24,
            child: Image.network(
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/76b823a0-a069-40e2-8686-bedbd61318d8",
              fit: BoxFit.fill,
            ),
          ),
          const Text(
            "Help",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
