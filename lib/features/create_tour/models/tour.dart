class Tour {
  final String id;
  final String title;
  final String description;
  final List<String> locations;
  final DateTime startDate;
  final DateTime endDate;
  final double price;
  final int capacity;
  final List<String> imageUrls;
  final String guideId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Tour({
    required this.id,
    required this.title,
    required this.description,
    required this.locations,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.capacity,
    required this.imageUrls,
    required this.guideId,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'locations': locations,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'price': price,
      'capacity': capacity,
      'imageUrls': imageUrls,
      'guideId': guideId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory Tour.fromJson(Map<String, dynamic> json) {
    return Tour(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      locations: List<String>.from(json['locations'] as List),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      price: (json['price'] as num).toDouble(),
      capacity: json['capacity'] as int,
      imageUrls: List<String>.from(json['imageUrls'] as List),
      guideId: json['guideId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Tour copyWith({
    String? id,
    String? title,
    String? description,
    List<String>? locations,
    DateTime? startDate,
    DateTime? endDate,
    double? price,
    int? capacity,
    List<String>? imageUrls,
    String? guideId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Tour(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      locations: locations ?? this.locations,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      price: price ?? this.price,
      capacity: capacity ?? this.capacity,
      imageUrls: imageUrls ?? this.imageUrls,
      guideId: guideId ?? this.guideId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
