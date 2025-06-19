import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:citypulse/models/firebase/events/event_model.dart';
import 'package:citypulse/models/firebase/converters/timestamp_converter.dart';

part 'tour_model.freezed.dart';
part 'tour_model.g.dart';

@freezed
class TourModel with _$TourModel {
  const factory TourModel({
    required String id,
    required String name,
    required String description,
    required String creatorId,
    required List<TourPlace> places,
    required List<EventModel> events,
    required int duration,
    required Rating rating,
    required List<String> images,
    required String status,
    @TimestampConverter() required Timestamp createdAt,
    @TimestampConverter() required Timestamp updatedAt,
  }) = _TourModel;

  factory TourModel.fromJson(Map<String, dynamic> json) => 
      _$TourModelFromJson(json);
}

@freezed
class TourPlace with _$TourPlace {
  const factory TourPlace({
    required String placeId,
    required int order,
    String? notes,
  }) = _TourPlace;

  factory TourPlace.fromJson(Map<String, dynamic> json) => 
      _$TourPlaceFromJson(json);
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
