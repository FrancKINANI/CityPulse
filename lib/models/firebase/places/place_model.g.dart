// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceModelImpl _$$PlaceModelImplFromJson(Map<String, dynamic> json) =>
    _$PlaceModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      category: json['category'] as String,
      ownerId: json['ownerId'] as String,
      openingHours: OpeningHours.fromJson(
        json['openingHours'] as Map<String, dynamic>,
      ),
      contact: Contact.fromJson(json['contact'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
      createdAt: const TimestampConverter().fromJson(
        json['createdAt'] as Map<String, dynamic>,
      ),
      status: json['status'] as String,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceModelImplToJson(_$PlaceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'category': instance.category,
      'ownerId': instance.ownerId,
      'openingHours': instance.openingHours,
      'contact': instance.contact,
      'images': instance.images,
      'rating': instance.rating,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'status': instance.status,
      'metadata': instance.metadata,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['street'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      coordinates: LatLng.fromJson(json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'country': instance.country,
      'coordinates': instance.coordinates,
    };

_$OpeningHoursImpl _$$OpeningHoursImplFromJson(Map<String, dynamic> json) =>
    _$OpeningHoursImpl(
      days: (json['days'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, OpeningDay.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$OpeningHoursImplToJson(_$OpeningHoursImpl instance) =>
    <String, dynamic>{'days': instance.days};

_$OpeningDayImpl _$$OpeningDayImplFromJson(Map<String, dynamic> json) =>
    _$OpeningDayImpl(
      open: json['open'] as String,
      close: json['close'] as String,
    );

Map<String, dynamic> _$$OpeningDayImplToJson(_$OpeningDayImpl instance) =>
    <String, dynamic>{'open': instance.open, 'close': instance.close};

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
  average: (json['average'] as num).toDouble(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{'average': instance.average, 'count': instance.count};

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      capacity: (json['capacity'] as num?)?.toInt(),
      priceRange: json['priceRange'] as String?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'capacity': instance.capacity,
      'priceRange': instance.priceRange,
      'features': instance.features,
    };
