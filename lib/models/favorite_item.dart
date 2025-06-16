import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'favorite_item.g.dart';

class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is Timestamp) {
      return json.toDate();
    } else if (json is String) {
      return DateTime.parse(json);
    } else {
      throw Exception('Invalid timestamp format');
    }
  }

  @override
  dynamic toJson(DateTime object) => object.toIso8601String();
}

@JsonSerializable()
class FavoriteItem {
  final String id;
  final String userId;
  final String itemId;
  final String itemType; // 'restaurant', 'monument', 'hotel', etc.
  final String title;
  final String imageUrl;
  final double rating;
  final String category;
  @TimestampConverter()
  final DateTime createdAt;

  FavoriteItem({
    required this.id,
    required this.userId,
    required this.itemId,
    required this.itemType,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.category,
    required this.createdAt,
  });

  factory FavoriteItem.fromJson(Map<String, dynamic> json) => _$FavoriteItemFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteItemToJson(this);
}
