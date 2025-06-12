# Widgets extraits pour Explore

Ce dossier contient les composants modulaires de l'écran Explore.

## Structure
- `ExploreHeader.dart` : Header avec barre de recherche et icône.
- `ExploreFilters.dart` : Filtres (All, Featured, New, etc.).
- `ExploreHeroSection.dart` : Section hero avec image, titre, description.
- `ExploreFeaturedPlaces.dart` : Liste de lieux en vedette sous forme de cards.
- `ExploreQuickNav.dart` : Barre de navigation rapide en bas de l'écran.

## Utilisation
Chaque widget est documenté en haut de son fichier. Exemple d'intégration :
```dart
ExploreHeader(
  value: searchValue,
  onChanged: (v) => setState(() => searchValue = v),
)
ExploreFilters(
  selected: selectedFilter,
  onSelect: (f) => setState(() => selectedFilter = f),
  filters: ['All', 'Featured', 'New'],
)
ExploreHeroSection(
  imageUrl: '...',
  title: '...',
  description: '...',
  duration: '...',
)
ExploreFeaturedPlaces(
  places: [FeaturedPlace(imageUrl: '...', title: '...')],
)
ExploreQuickNav(
  selectedIndex: 0,
  onNav: (i) => setState(() => quickNavIndex = i),
)
```

## Tests
Pour chaque widget extrait, créez un fichier de test dans `test/explore/` :
- Vérifiez l'affichage des éléments principaux (titres, images, labels)
- Vérifiez la propagation des callbacks (onChanged, onSelect, onNav)

Exemples :
- `explore_filters_test.dart` : test des filtres
- `explore_featured_places_test.dart` : test des cards de lieux
- `explore_quick_nav_test.dart` : test de la navigation rapide

## Bonnes pratiques
- Gardez chaque widget sous 200 lignes
- Documentez chaque widget en haut de fichier
- Privilégiez la composition et la réutilisation 