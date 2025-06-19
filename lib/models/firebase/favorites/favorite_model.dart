import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:citypulse/models/firebase/converters/timestamp_converter.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({
    required String userId,
    required String placeId,
    @TimestampConverter() required Timestamp addedAt,
    String? notes,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) => 
      _$FavoriteModelFromJson(json);
}
