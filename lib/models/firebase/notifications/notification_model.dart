import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:citypulse/models/firebase/converters/timestamp_converter.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,
    required String userId,
    required String type,
    required String content,
    required bool read,
    @TimestampConverter() required Timestamp createdAt,
    required NotificationMetadata metadata,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => 
      _$NotificationModelFromJson(json);
}

@freezed
class NotificationMetadata with _$NotificationMetadata {
  const factory NotificationMetadata({
    String? placeId,
    String? eventId,
  }) = _NotificationMetadata;

  factory NotificationMetadata.fromJson(Map<String, dynamic> json) => 
      _$NotificationMetadataFromJson(json);
}
