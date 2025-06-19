import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    required String id,
    required String name,
    required String description,
    required Address address,
    required String category, // Category ID
    required String ownerId,
    required OpeningHours openingHours,
    required Contact contact,
    required List<String> images,
    required Rating rating,
    required Timestamp createdAt,
    required String status,
    required Metadata metadata,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) => 
      _$PlaceModelFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required String street,
    required String city,
    required String country,
    required LatLng coordinates,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => 
      _$AddressFromJson(json);
}

@freezed
class OpeningHours with _$OpeningHours {
  const factory OpeningHours({
    required Map<String, OpeningDay> days,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) => 
      _$OpeningHoursFromJson(json);
}

@freezed
class OpeningDay with _$OpeningDay {
  const factory OpeningDay({
    required String open,
    required String close,
  }) = _OpeningDay;

  factory OpeningDay.fromJson(Map<String, dynamic> json) => 
      _$OpeningDayFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    String? phone,
    String? email,
    String? website,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => 
      _$ContactFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double average,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => 
      _$RatingFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    int? capacity,
    String? priceRange,
    List<String>? features,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) => 
      _$MetadataFromJson(json);
}
