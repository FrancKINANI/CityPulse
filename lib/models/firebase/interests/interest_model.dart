import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interest_model.freezed.dart';
part 'interest_model.g.dart';

@freezed
class InterestModel with _$InterestModel {
  const factory InterestModel({
    required String userId,
    required String categoryId,
    required int level,
    required Timestamp updatedAt,
  }) = _InterestModel;

  factory InterestModel.fromJson(Map<String, dynamic> json) => 
      _$InterestModelFromJson(json);
}
