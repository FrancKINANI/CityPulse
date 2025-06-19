// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      placeId: json['placeId'] as String,
      rating: (json['rating'] as num).toDouble(),
      review: json['review'] as String?,
      createdAt: const TimestampConverter().fromJson(
        json['createdAt'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'placeId': instance.placeId,
      'rating': instance.rating,
      'review': instance.review,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
