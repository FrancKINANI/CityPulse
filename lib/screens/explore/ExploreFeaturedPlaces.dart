/// Widget ExploreFeaturedPlaces
/// Affiche une liste de lieux en vedette sous forme de cards avec image et titre.
///
/// Props :
///   - List<FeaturedPlace> places : liste des lieux à afficher
import 'package:flutter/material.dart';

class FeaturedPlace {
  final String imageUrl;
  final String title;
  const FeaturedPlace({required this.imageUrl, required this.title});
}

class ExploreFeaturedPlaces extends StatelessWidget {
  final List<FeaturedPlace> places;
  const ExploreFeaturedPlaces({Key? key, required this.places})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
          child: const Text(
            "Featured Places",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < places.length; i += 2)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _FeaturedPlaceCard(place: places[i])),
                    if (i + 1 < places.length)
                      Expanded(child: _FeaturedPlaceCard(place: places[i + 1])),
                  ],
                ),
            ],
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
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
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
