import 'package:flutter/material.dart';

class ExploreDetailsHeader extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String rating;

  const ExploreDetailsHeader({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 320,
            width: double.infinity,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.tertiary,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(rating, style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
