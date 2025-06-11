# Modifications apportées au projet CityPulse

## 1. Structure du projet

✅ Réorganisation des écrans dans le dossier `lib/screens`
✅ Ajout d'une navigation cohérente entre les écrans
✅ Mise en place d'une gestion d'état avec Provider
✅ Création de la structure des modèles et services

## 2. Actions réalisées

### Configuration de base

- Mise à jour du fichier `pubspec.yaml` avec les dépendances nécessaires
- Configuration du thème principal dans `main.dart`
- Mise en place des routes de navigation

### Modèles de données créés

- `User` : Gestion des utilisateurs
- `Tour` : Gestion des circuits touristiques
- `Event` : Gestion des événements
- `Place` : Gestion des lieux d'intérêt

### Services implémentés

- `AuthService` : Gestion de l'authentification
- `TourService` : Gestion des circuits et événements
- `NavigationService` : Gestion de la navigation entre les écrans
- `PreferencesService` : Gestion des préférences utilisateur
- `NotificationService` : Gestion des notifications locales
- `CalendarService` : Gestion des événements et du calendrier

## 3. Fonctionnalités ajoutées

- Navigation globale avec `NavigationService`
- Gestion des préférences utilisateur (thème, langue, notifications)
- Système de notifications locales
- Intégration des services dans le système de Provider

## 4. Dépendances ajoutées

- `provider`: Pour la gestion d'état
- `shared_preferences`: Pour le stockage local des données
- `google_fonts`: Pour utiliser les polices Google
- `http`: Pour les requêtes API
- `flutter_map`: Pour l'intégration de cartes
- `latlong2`: Pour la gestion des coordonnées géographiques
- `qr_flutter`: Pour la génération de QR codes
- `qr_code_scanner`: Pour scanner les QR codes
- `camera`: Pour l'accès à la caméra
- `path_provider`: Pour la gestion des fichiers
- `intl`: Pour l'internationalisation

## 3. Fonctionnalités implémentées

### 3.1 Authentification

- Écran de connexion (`SignIn.dart`)
- Écran d'inscription (`SignUp.dart`)
- Réinitialisation du mot de passe (`Reset.dart`)

### 3.2 Navigation principale

- Écran d'accueil (`Welcome.dart`)
- Exploration des tours (`Explore.dart`)
- Détails d'exploration (`ExploreDetails.dart`)
- Profil utilisateur (`Profile.dart`)
- Paramètres (`Setting.dart`)

### 3.3 Gestion des tours

- Création de tour (`CreatingATour.dart`)
- Ajout de lieux (`AddPlace.dart`)
- Partage de tour (`ShareTour.dart`)
- Vos tours (`YourTour.dart`)

### 3.4 Fonctionnalités additionnelles

- Scanner QR Code (`ScanQRCode.dart`)
- Recherche sur la carte (`SearchOnMap.dart`)
- Planification d'événements (`PlaceEventOnCalendar.dart`)
- Notifications (`Notifications.dart`)
- Aide et support (`Help.dart`)

### 3.5 Administration

- Panel de modération (`ModerationPanel.dart`)
- Tableau de bord gestionnaire (`GestionnaireDashboard.dart`)

## 4. Améliorations de l'interface utilisateur

- Thème cohérent
- Navigation intuitive
- Design responsive
- Gestion des erreurs
- Retours visuels pour les actions utilisateur

## 5. Structure des données

### 5.1 Modèles

- Utilisateur
- Tour
- Place
- Event
- Notification

### 5.2 Services

- Authentication Service
- Tour Service
- Place Service
- Map Service
- Notification Service

## 6. Prochaines étapes

1. Implémenter la persistance des données
2. Ajouter des tests unitaires et d'intégration
3. Optimiser les performances
4. Ajouter la gestion hors ligne
5. Implémenter les notifications push
6. Améliorer la documentation

## 7. Notes importantes

- Respecter les conventions de nommage Flutter
- Maintenir une structure de code propre et modulaire
- Documenter les changements importants
- Tester les fonctionnalités sur Android et iOS
