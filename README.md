# CityPulse

CityPulse is a Flutter application designed to help users discover and explore local places, track visits, and interact based on user roles (Visitor, User, Owner, Administrator). The project aims to provide a comprehensive experience for tourists and locals to find, review, and manage establishments with map integration, reviews, and personalized circuits.

## Features

### Authentication and Role Management

- Post-authentication navigation based on user role (Visitor, User, Owner, Administrator)
- Role-specific interfaces after login

### Visitor Features (Not Logged In)

- Search for places
- Map integration with geolocation to view places
- Detailed place pages (photos, hours, contact, reviews)
- GPS navigation to places

### User Features (Logged In)

- User profile management
- Favorites system (add/remove)
- Create and rate reviews/comments
- Personalized tourist circuit creation (select places, optimize itinerary)
- Share circuits
- Visit history
- Personalized notifications

### Owner Features

- Owner dashboard
- Add/edit establishments
- Image upload and description management
- Manage opening hours and pricing
- Respond to customer reviews
- Event management
- Premium subscription management
- View statistics

### Administrator Features

- Admin dashboard
- Place validation and moderation
- User management (suspension, validation)
- Comment and report moderation
- Manage place categories
- View global app statistics
- Technical maintenance and system configuration tools

### General Improvements & Testing

- Error handling and user feedback
- Performance optimization
- UX/UI improvements
- Unit, widget, and integration tests

### New Features

- Authentication (Sign in, Sign up, Sign out)
- User profile management
- Place discovery (model and test implemented)
- Reviews (model and test implemented)
- Tours (model and test implemented)
- Events (model and test implemented)

## Project Structure

- Follows Clean Architecture and feature-first organization
- Models use Freezed and JSON serialization
- Unit tests for each model and repository

## Progress

- [x] Auth and Place models implemented
- [x] Place model tested (see `test/features/places/data/models/place_model_test.dart`)
- [x] Review model tested (see `test/features/reviews/data/models/review_model_test.dart`)
- [x] Tour model tested (see `test/features/tours/data/models/tour_model_test.dart`)
- [x] Event model tested (see `test/features/events/data/models/event_model_test.dart`)
- [ ] More unit tests for other models (in progress)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Project Planning

For a detailed look at planned features and progress, see the [PLANNING.md](https://github.com/FrancKINANI/Local-Lens/blob/master/PLANNING.md) file.
