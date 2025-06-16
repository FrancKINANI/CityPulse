// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteItem _$FavoriteItemFromJson(Map<String, dynamic> json) => FavoriteItem(
  id: json['id'] as String,
  userId: json['userId'] as String,
  itemId: json['itemId'] as String,
  itemType: json['itemType'] as String,
  title: json['title'] as String,
  imageUrl: json['imageUrl'] as String,
  rating: (json['rating'] as num).toDouble(),
  category: json['category'] as String,
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
);

Map<String, dynamic> _$FavoriteItemToJson(FavoriteItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'itemId': instance.itemId,
      'itemType': instance.itemType,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'rating': instance.rating,
      'category': instance.category,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
