// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourModelImpl _$$TourModelImplFromJson(Map<String, dynamic> json) =>
    _$TourModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      creatorId: json['creatorId'] as String,
      places: (json['places'] as List<dynamic>)
          .map((e) => TourPlace.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: (json['duration'] as num).toInt(),
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: json['status'] as String,
      createdAt: const TimestampConverter().fromJson(
        json['createdAt'] as Map<String, dynamic>,
      ),
      updatedAt: const TimestampConverter().fromJson(
        json['updatedAt'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$TourModelImplToJson(_$TourModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'creatorId': instance.creatorId,
      'places': instance.places,
      'events': instance.events,
      'duration': instance.duration,
      'rating': instance.rating,
      'images': instance.images,
      'status': instance.status,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };

_$TourPlaceImpl _$$TourPlaceImplFromJson(Map<String, dynamic> json) =>
    _$TourPlaceImpl(
      placeId: json['placeId'] as String,
      order: (json['order'] as num).toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TourPlaceImplToJson(_$TourPlaceImpl instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'order': instance.order,
      'notes': instance.notes,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
  average: (json['average'] as num).toDouble(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{'average': instance.average, 'count': instance.count};
