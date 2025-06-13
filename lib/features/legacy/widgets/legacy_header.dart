import 'package:flutter/material.dart';

class LegacyHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const LegacyHeader({
    Key? key,
    required this.title,
    this.subtitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          if (subtitle.isNotEmpty)
            const SizedBox(height: 8),
          if (subtitle.isNotEmpty)
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
        ],
      ),
    );
  }
}
