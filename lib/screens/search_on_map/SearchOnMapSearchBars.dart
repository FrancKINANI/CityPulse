/// Widget SearchOnMapSearchBars
/// Affiche les barres de recherche pour la catégorie et la distance sur l'écran SearchOnMap.
///
/// Props :
///   - String category : valeur du champ catégorie
///   - String distance : valeur du champ distance
///   - ValueChanged<String> onCategoryChanged : callback lors de la saisie catégorie
///   - ValueChanged<String> onDistanceChanged : callback lors de la saisie distance
library;
import 'package:flutter/material.dart';

class SearchOnMapSearchBars extends StatelessWidget {
  final String category;
  final String distance;
  final ValueChanged<String> onCategoryChanged;
  final ValueChanged<String> onDistanceChanged;
  const SearchOnMapSearchBars({
    super.key,
    required this.category,
    required this.distance,
    required this.onCategoryChanged,
    required this.onDistanceChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF264433),
              ),
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 16,
                right: 8,
              ),
              margin: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      onChanged: onCategoryChanged,
                      decoration: const InputDecoration(
                        hintText: "Category",
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 20,
                    child: Image(
                      image: NetworkImage(
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/2e7b7522-d113-4674-af52-ff9f11eda39e",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF264433),
              ),
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 16,
                right: 8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      onChanged: onDistanceChanged,
                      decoration: const InputDecoration(
                        hintText: "Distance",
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 20,
                    child: Image(
                      image: NetworkImage(
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/154b0f58-6f90-4120-8767-0b99c80b7f44",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
