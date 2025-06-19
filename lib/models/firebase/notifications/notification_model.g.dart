// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationModelImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  type: json['type'] as String,
  content: json['content'] as String,
  read: json['read'] as bool,
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Map<String, dynamic>,
  ),
  metadata: NotificationMetadata.fromJson(
    json['metadata'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$NotificationModelImplToJson(
  _$NotificationModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'type': instance.type,
  'content': instance.content,
  'read': instance.read,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
  'metadata': instance.metadata,
};

_$NotificationMetadataImpl _$$NotificationMetadataImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationMetadataImpl(
  placeId: json['placeId'] as String?,
  eventId: json['eventId'] as String?,
);

Map<String, dynamic> _$$NotificationMetadataImplToJson(
  _$NotificationMetadataImpl instance,
) => <String, dynamic>{
  'placeId': instance.placeId,
  'eventId': instance.eventId,
};
