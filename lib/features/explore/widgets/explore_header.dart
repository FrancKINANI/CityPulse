/// Widget ExploreHeader
/// Affiche la barre de recherche et l'icône du header de l'écran Explore.
/// Utilisé en haut de la page Explore.
///
/// Props:
///   - String value: texte du champ de recherche
///   - ValueChanged<String> onChanged: callback lors de la saisie
library;

import 'package:flutter/material.dart';

class ExploreHeader extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;
  const ExploreHeader({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: Theme.of(context).cardColor,
            ),
            padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.network(
                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9e9f6fef-45a5-43b2-ad75-66f858106d1d",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Theme.of(context).cardColor,
              ),
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 8,
                right: 16,
              ),
              child: TextField(
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontSize: 16,
                ),
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Theme.of(context).hintColor),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  border: InputBorder.none,
                ),
                controller: TextEditingController(text: value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
