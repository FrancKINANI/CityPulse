# CityPulse - Tourism App Development Plan

## Current Status (as of June 11, 2025)

### ✅ Completed Tasks

1. Project Structure Organization

   - Created models (user.dart, tour.dart, event.dart)
   - Set up services (auth_service.dart, tour_service.dart, navigation_service.dart, etc.)
   - Added configuration files (app_config.dart, routes.dart)

2. Dependencies

   - Core Flutter packages (provider, shared_preferences, google_fonts)
   - Map and location packages (flutter_map, latlong2)
   - Utility packages (qr_flutter, camera, notifications)
   - Firebase packages (firebase_core, auth, firestore, storage, messaging)

3. Authentication UI
   - Implemented SignIn screen with Firebase Auth integration
   - Implemented SignUp screen with form validation
   - Implemented Reset Password functionality
   - Added loading states and error handling

### 🚧 In Progress

1. Firebase Configuration
   - Need to set up Firebase project in Firebase Console
   - Need to configure firebase_options.dart with actual credentials:
     - Web API Key
     - Android API Key
     - iOS API Key
     - Sender ID
     - App IDs
     - Client IDs
   - Need to download and add google-services.json for Android
   - Need to download and add GoogleService-Info.plist for iOS

### 📋 Upcoming Tasks

1. User Authentication & Profile

   - Implement AuthService methods with Firebase Auth
   - Create user profile in Firestore after signup
   - Add profile picture upload to Firebase Storage
   - Implement email verification

2. Tour Management

   - Create Firestore collections for tours
   - Implement tour creation flow
   - Add tour editing capabilities
   - Implement tour sharing functionality
   - Add QR code generation for tours

3. Places and Events

   - Set up Firestore collections for places and events
   - Implement place creation and editing
   - Add event scheduling functionality
   - Integrate with calendar

4. Map Integration

   - Implement map view with flutter_map
   - Add place markers on map
   - Implement search functionality
   - Add route planning between places

5. Notifications

   - Set up Firebase Cloud Messaging
   - Implement notification handling
   - Add notification preferences
   - Schedule event reminders

6. Admin Features

   - Create moderation panel
   - Implement content approval workflow
   - Add user management features
   - Create analytics dashboard

7. Testing & Optimization
   - Write unit tests for services
   - Add integration tests for main flows
   - Perform performance optimization
   - Test on multiple devices

### 🔧 Technical Requirements

1. Firebase Setup

   - Create Firebase project
   - Enable Authentication methods (Email/Password, Google Sign-In)
   - Set up Firestore rules
   - Configure Storage rules
   - Set up Cloud Functions if needed

2. Mobile Platform Configuration

   - Configure Android settings
   - Set up iOS certificates
   - Add necessary permissions
   - Configure deep links

3. Development Environment
   - Set up CI/CD pipeline
   - Configure code linting
   - Set up version control workflow
   - Establish deployment process

## Priority Order

1. Complete Firebase Configuration
2. Implement Core Authentication
3. Set up Tour Management
4. Add Places and Events
5. Integrate Maps
6. Configure Notifications
7. Add Admin Features
8. Testing and Deployment

## Notes

- Need Firebase project credentials before proceeding with authentication implementation
- Consider implementing social auth (Google, Apple) in future iterations
- Map implementation requires careful consideration of offline functionality
- Need to implement proper error handling throughout the app
- Consider implementing caching for better offline experience
