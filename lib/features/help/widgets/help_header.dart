import 'package:flutter/material.dart';

class HelpHeader extends StatelessWidget {
  const HelpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
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
          Text(
            "Help",
            style: TextStyle(
              color: Theme.of(context).appBarTheme.foregroundColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
