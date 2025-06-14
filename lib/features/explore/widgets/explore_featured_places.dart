import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';

class FeaturedPlace {
  final String imageUrl;
  final String title;
  final String? description;

  const FeaturedPlace({
    required this.imageUrl,
    required this.title,
    this.description,
  });
}

class ExploreFeaturedPlaces extends StatelessWidget {
  final List<FeaturedPlace> places;
  final Function(FeaturedPlace)? onPlaceSelected;

  const ExploreFeaturedPlaces({
    super.key,
    required this.places,
    this.onPlaceSelected,
  });
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Featured Places',
            style: isDarkMode ? AppTheme.darkHeadingStyle : AppTheme.headingStyle,
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: places.length,
            itemBuilder: (context, index) {
              final place = places[index];
              return SizedBox(
                width: 220,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: isDarkMode ? AppTheme.darkCardColor : AppTheme.cardColor,
                  child: InkWell(
                    onTap: () => onPlaceSelected?.call(place),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.network(
                            place.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                place.title,
                                style: (isDarkMode ? AppTheme.darkBodyStyle : AppTheme.bodyStyle)
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              if (place.description != null) ...[
                                const SizedBox(height: 4),
                                Text(
                                  place.description!,
                                  style: isDarkMode ? AppTheme.darkCaptionStyle : AppTheme.captionStyle,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _FeaturedPlaceCard extends StatelessWidget {
  final FeaturedPlace place;
  const _FeaturedPlaceCard({required this.place});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            height: 173,
            width: double.infinity,
            child: Image.network(place.imageUrl, fit: BoxFit.fill),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 1),
            child: Text(
              place.title,
              style: TextStyle(
                color: isDarkMode ? AppTheme.darkTextPrimaryColor : AppTheme.textPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
