import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:citypulse/models/firebase/converters/timestamp_converter.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    required String id,
    required String userId,
    required String placeId,
    required double rating,
    String? review,
    @TimestampConverter() required Timestamp createdAt,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) => 
      _$RatingModelFromJson(json);
}
