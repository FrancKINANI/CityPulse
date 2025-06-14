import 'package:citypulse/features/search_on_map/widgets/SearchOnMapHeader.dart';
import 'package:citypulse/features/search_on_map/widgets/SearchOnMapMapSection.dart';
import 'package:citypulse/features/search_on_map/widgets/SearchOnMapFilters.dart';
import 'package:citypulse/features/search_on_map/widgets/SearchOnMapSearchBars.dart';
import 'package:flutter/material.dart';

/// Écran SearchOnMap réécrit pour n'orchestrer que les widgets extraits et documentés.
class SearchOnMap extends StatefulWidget {
  const SearchOnMap({super.key});
  @override
  SearchOnMapState createState() => SearchOnMapState();
}

class SearchOnMapState extends State<SearchOnMap> {
  String textField1 = '';
  String textField2 = '';
  String selectedFilter = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header extrait
                const SearchOnMapHeader(
                  title: "CityPulse",
                  imageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c90cea25-e24e-4813-8742-97bce2c560af",
                ),

                /// Carte extraite
                const SearchOnMapMapSection(
                  imageUrl:
                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/510453c2-46bd-479c-b892-aea8ef829bda",
                ),

                /// Filtres extraits
                SearchOnMapFilters(
                  selected: selectedFilter,
                  onSelect: (f) => setState(() => selectedFilter = f),
                  filters: const ['All', 'Places', 'Events', 'Tours'],
                ),

                /// Barres de recherche extraites
                SearchOnMapSearchBars(
                  category: textField1,
                  distance: textField2,
                  onCategoryChanged: (v) => setState(() => textField1 = v),
                  onDistanceChanged: (v) => setState(() => textField2 = v),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
