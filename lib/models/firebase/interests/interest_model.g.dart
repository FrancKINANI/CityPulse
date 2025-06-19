// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterestModelImpl _$$InterestModelImplFromJson(Map<String, dynamic> json) =>
    _$InterestModelImpl(
      userId: json['userId'] as String,
      categoryId: json['categoryId'] as String,
      level: (json['level'] as num).toInt(),
      updatedAt: const TimestampConverter().fromJson(
        json['updatedAt'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$InterestModelImplToJson(_$InterestModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'categoryId': instance.categoryId,
      'level': instance.level,
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
