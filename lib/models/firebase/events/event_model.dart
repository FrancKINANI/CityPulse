import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:citypulse/models/firebase/converters/timestamp_converter.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String name,
    required String description,
    required String placeId,
    required String ownerId,
    @TimestampConverter() required Timestamp startDate,
    @TimestampConverter() required Timestamp endDate,
    required String type,
    required double price,
    required int capacity,
    required int ticketsSold,
    required String status,
    required List<String> images,
    required EventMetadata metadata,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) => 
      _$EventModelFromJson(json);
}

@freezed
class EventMetadata with _$EventMetadata {
  const factory EventMetadata({
    int? ageRestriction,
    List<String>? requiredDocuments,
  }) = _EventMetadata;

  factory EventMetadata.fromJson(Map<String, dynamic> json) => 
      _$EventMetadataFromJson(json);
}
