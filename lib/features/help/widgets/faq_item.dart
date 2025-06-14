import 'package:flutter/material.dart';

class FaqItem extends StatelessWidget {
  final String title;
  final String description;
  final String iconUrl;

  const FaqItem({
    super.key,
    required this.title,
    required this.description,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      width: double.infinity,
      child: Row(
        children: [
          // Icon container
          InkWell(
            onTap: () {
              print('Pressed');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.surface,
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(right: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 24,
                height: 24,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(iconUrl, fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  width: double.infinity,
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
