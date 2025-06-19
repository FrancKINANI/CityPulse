// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteModelImpl _$$FavoriteModelImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteModelImpl(
      userId: json['userId'] as String,
      placeId: json['placeId'] as String,
      addedAt: const TimestampConverter().fromJson(
        json['addedAt'] as Map<String, dynamic>,
      ),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$FavoriteModelImplToJson(_$FavoriteModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'placeId': instance.placeId,
      'addedAt': const TimestampConverter().toJson(instance.addedAt),
      'notes': instance.notes,
    };
