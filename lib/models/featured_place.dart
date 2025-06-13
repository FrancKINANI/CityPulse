class FeaturedPlace {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final double rating;
  final int reviewCount;
  final String category;

  FeaturedPlace({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.reviewCount,
    required this.category,
  });

  factory FeaturedPlace.fromJson(Map<String, dynamic> json) {
    return FeaturedPlace(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      rating: json['rating'].toDouble(),
      reviewCount: json['reviewCount'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'rating': rating,
      'reviewCount': reviewCount,
      'category': category,
    };
  }
}
