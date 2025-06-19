// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(
  Map<String, dynamic> json,
) => _$EventModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  placeId: json['placeId'] as String,
  ownerId: json['ownerId'] as String,
  startDate: const TimestampConverter().fromJson(
    json['startDate'] as Map<String, dynamic>,
  ),
  endDate: const TimestampConverter().fromJson(
    json['endDate'] as Map<String, dynamic>,
  ),
  type: json['type'] as String,
  price: (json['price'] as num).toDouble(),
  capacity: (json['capacity'] as num).toInt(),
  ticketsSold: (json['ticketsSold'] as num).toInt(),
  status: json['status'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  metadata: EventMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'placeId': instance.placeId,
      'ownerId': instance.ownerId,
      'startDate': const TimestampConverter().toJson(instance.startDate),
      'endDate': const TimestampConverter().toJson(instance.endDate),
      'type': instance.type,
      'price': instance.price,
      'capacity': instance.capacity,
      'ticketsSold': instance.ticketsSold,
      'status': instance.status,
      'images': instance.images,
      'metadata': instance.metadata,
    };

_$EventMetadataImpl _$$EventMetadataImplFromJson(Map<String, dynamic> json) =>
    _$EventMetadataImpl(
      ageRestriction: (json['ageRestriction'] as num?)?.toInt(),
      requiredDocuments: (json['requiredDocuments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$EventMetadataImplToJson(_$EventMetadataImpl instance) =>
    <String, dynamic>{
      'ageRestriction': instance.ageRestriction,
      'requiredDocuments': instance.requiredDocuments,
    };
