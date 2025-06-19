import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required String id,
    required String userId,
    required String placeId,
    String? parentId,
    required String content,
    required double rating,
    required Timestamp createdAt,
    required String status,
    required CommentMetadata metadata,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) => 
      _$CommentModelFromJson(json);
}

@freezed
class CommentMetadata with _$CommentMetadata {
  const factory CommentMetadata({
    int? likes,
    int? replies,
  }) = _CommentMetadata;

  factory CommentMetadata.fromJson(Map<String, dynamic> json) => 
      _$CommentMetadataFromJson(json);
}
