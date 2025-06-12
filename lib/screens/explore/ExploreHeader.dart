/// Widget ExploreHeader
/// Affiche la barre de recherche et l'icône du header de l'écran Explore.
/// Utilisé en haut de la page Explore.
///
/// Props:
///   - String value: texte du champ de recherche
///   - ValueChanged<String> onChanged: callback lors de la saisie
import 'package:flutter/material.dart';

class ExploreHeader extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;
  const ExploreHeader({Key? key, required this.value, required this.onChanged})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF112116),
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
              color: const Color(0xFF264433),
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Color(0xFF264433),
              ),
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 8,
                right: 16,
              ),
              child: TextField(
                style: const TextStyle(color: Color(0xFF96C4A8), fontSize: 16),
                onChanged: onChanged,
                decoration: const InputDecoration(
                  hintText: "Search",
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
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
