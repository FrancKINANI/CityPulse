# CityPulse

CityPulse est une application Flutter multiplateforme dédiée à la découverte, l’exploration et la gestion des lieux touristiques et urbains. Elle offre une expérience personnalisée selon différents rôles utilisateurs (visiteur, utilisateur, propriétaire, administrateur) et intègre des fonctionnalités avancées de navigation, planification de circuits, gestion d’événements, et plus encore.

## Fonctionnalités principales

### Authentification et gestion des rôles
- Navigation post-authentification selon le rôle : visiteur, utilisateur, propriétaire, administrateur.
- Interfaces dédiées pour chaque rôle.
- Authentification via Firebase Auth (email/mot de passe).
- Interface d'authentification stylisée avec support dark/light mode et thème orange.
- Système de gestion des profils utilisateurs avec Firebase Firestore.
- Système d'intérêts personnalisés pour chaque utilisateur.
- Gestion des préférences utilisateur (thème, langue, notifications).
- Création automatique du profil utilisateur lors de l'inscription.
- Synchronisation des préférences et des intérêts.
- Support multi-langue intégré.
- Gestion des erreurs détaillée.

### Fonctionnalités visiteur (non connecté)
- Recherche de lieux avec filtres avancés.
- Intégration carte (flutter_map, geolocalisation).
- Accès aux pages de lieux détaillées (photos, horaires, contacts, avis).
- Navigation GPS jusqu’aux lieux.

### Fonctionnalités utilisateur (connecté)
- Gestion du profil utilisateur avec interface theme-aware.
- Système de favoris, historique de visites.
- Création et notation d'avis/commentaires.
- Création et partage de circuits touristiques personnalisés.
- Notifications personnalisées avec interface stylisée.
- Paramètres avec thème orange et support dark/light mode.

### Fonctionnalités propriétaire
- Tableau de bord propriétaire.
- Ajout/édition d’établissements (images, descriptions, horaires, tarifs).
- Gestion des événements et abonnements premium.
- Réponse aux avis clients, consultation de statistiques.

### Fonctionnalités administrateur
- Dashboard administration.
- Validation et modération des lieux.
- Gestion et modération des utilisateurs, commentaires et signalements.
- Gestion des catégories de lieux.
- Statistiques globales, outils de maintenance technique.

### Fonctionnalités transversales
- Système de notifications (Firebase Cloud Messaging, notifications locales).
- Système de QR code (création, scan pour partage de circuits/tours).
- Gestion des préférences utilisateur (thème orange, dark/light mode, langue).
- Support multilingue (intl).
- Gestion des permissions et de l'état de l'application (Provider).
- Tests unitaires, widgets et d'intégration.
- Interface utilisateur cohérente avec thème orange et support dark/light mode.

## Architecture logicielle

- **Clean Architecture** et organisation *feature-first* : chaque fonctionnalité a son propre dossier, avec séparation claire des modèles, services, vues et tests.
- Modèles de données générés avec Freezed et sérialisation JSON.
- Gestion d’état via Provider.
- Intégration Firebase (auth, firestore, storage, messaging).

## Stack & dépendances principales

- **Flutter** (Dart)
- **Firebase** (auth, firebase_core, firestore, storage, messaging)
- **Provider**, **shared_preferences**, **google_fonts**, **http**
- **flutter_map**, **latlong2** (cartographie)
- **qr_flutter**, **qr_code_scanner** (QR codes)
- **camera**, **image_picker**
- **intl** (internationalisation)
- **flutter_local_notifications**, **timezone**
- Voir `pubspec.yaml` pour la liste complète.

## Structure du projet

- `screens/` : Écrans principaux par feature (explore, profile, admin, etc.)
- `models/` : Modèles de données (User, Tour, Event, Place, etc.)
- `services/` : Services métiers (auth, tour, navigation, notifications, etc.)
- `test/` : Tests unitaires et d’intégration par fonctionnalité
- Voir le fichier [PLANNING.md](./PLANNING.md) pour la roadmap détaillée.

## Installation et lancement

1. **Prérequis** :
   - Flutter SDK >= 3.8.1
   - Compte Firebase (voir section configuration)
2. **Installation des dépendances** :
   ```bash
   flutter pub get
   ```
3. **Configuration Firebase** :
   - Créer un projet Firebase
   - Ajouter les fichiers `google-services.json` (Android) et `GoogleService-Info.plist` (iOS)
   - Configurer `firebase_options.dart` avec vos clés API
4. **Lancement** :
   ```bash
   flutter run
   ```
5. **Tests** :
   ```bash
   flutter test
   ```

## Bonnes pratiques & conventions

- Code modulaire, réutilisable et bien commenté.
- Respect des conventions de nommage Flutter/Dart.
- Documentation systématique en haut de chaque widget.
- Tests pour chaque nouveau composant/fonctionnalité.
- Optimisation des performances et responsive design.
- Gestion des erreurs et feedback utilisateur.
- Utilisation cohérente de Theme.of(context) pour le style.
- Composants theme-aware pour une cohérence visuelle.

## Roadmap

Voir [PLANNING.md](./PLANNING.md) et [TASK.md](./TASK.md) pour la liste détaillée des tâches passées, en cours, et à venir.

## Contribuer

1. Forker le repo, créer une branche, proposer une PR.
2. Documenter les changements dans les fichiers appropriés.
3. Respecter la structure et les conventions du projet.

## Licence

Ce projet est sous licence MIT. Voir [LICENSE](./LICENSE).

---

> Pour toute question, bug ou suggestion, ouvrir une issue ou contacter l’auteur principal : [FrancKINANI](https://github.com/FrancKINANI).
