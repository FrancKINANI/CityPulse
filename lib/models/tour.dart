class Tour {
  final String id;
  final String title;
  final String description;
  final String creatorId;
  final List<Place> places;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String? coverImage;
  final double rating;
  final int reviewCount;
  final List<String> tags;
  final TourDifficulty difficulty;
  final Duration estimatedDuration;

  Tour({
    required this.id,
    required this.title,
    required this.description,
    required this.creatorId,
    required this.places,
    required this.createdAt,
    this.updatedAt,
    this.coverImage,
    this.rating = 0.0,
    this.reviewCount = 0,
    List<String>? tags,
    this.difficulty = TourDifficulty.moderate,
    required this.estimatedDuration,
  }) : tags = tags ?? [];

  factory Tour.fromJson(Map<String, dynamic> json) {
    return Tour(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      creatorId: json['creatorId'],
      places: (json['places'] as List).map((p) => Place.fromJson(p)).toList(),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      coverImage: json['coverImage'],
      rating: json['rating']?.toDouble() ?? 0.0,
      reviewCount: json['reviewCount'] ?? 0,
      tags: List<String>.from(json['tags'] ?? []),
      difficulty: TourDifficulty.values.firstWhere(
        (e) => e.toString() == 'TourDifficulty.${json['difficulty']}',
        orElse: () => TourDifficulty.moderate,
      ),
      estimatedDuration: Duration(minutes: json['estimatedDuration'] ?? 0),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'creatorId': creatorId,
      'places': places.map((p) => p.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'coverImage': coverImage,
      'rating': rating,
      'reviewCount': reviewCount,
      'tags': tags,
      'difficulty': difficulty.toString().split('.').last,
      'estimatedDuration': estimatedDuration.inMinutes,
    };
  }
}

class Place {
  final String id;
  final String name;
  final String description;
  final double latitude;
  final double longitude;
  final String? imageUrl;
  final List<String> categories;
  final Map<String, String> openingHours;
  final bool isAccessible;

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.latitude,
    required this.longitude,
    this.imageUrl,
    List<String>? categories,
    Map<String, String>? openingHours,
    this.isAccessible = true,
  }) : categories = categories ?? [],
       openingHours = openingHours ?? {};

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      imageUrl: json['imageUrl'],
      categories: List<String>.from(json['categories'] ?? []),
      openingHours: Map<String, String>.from(json['openingHours'] ?? {}),
      isAccessible: json['isAccessible'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'latitude': latitude,
      'longitude': longitude,
      'imageUrl': imageUrl,
      'categories': categories,
      'openingHours': openingHours,
      'isAccessible': isAccessible,
    };
  }
}

enum TourDifficulty { easy, moderate, challenging, difficult }
