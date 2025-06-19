// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      placeId: json['placeId'] as String,
      parentId: json['parentId'] as String?,
      content: json['content'] as String,
      rating: (json['rating'] as num).toDouble(),
      createdAt: const TimestampConverter().fromJson(
        json['createdAt'] as Map<String, dynamic>,
      ),
      status: json['status'] as String,
      metadata: CommentMetadata.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'placeId': instance.placeId,
      'parentId': instance.parentId,
      'content': instance.content,
      'rating': instance.rating,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'status': instance.status,
      'metadata': instance.metadata,
    };

_$CommentMetadataImpl _$$CommentMetadataImplFromJson(
  Map<String, dynamic> json,
) => _$CommentMetadataImpl(
  likes: (json['likes'] as num?)?.toInt(),
  replies: (json['replies'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CommentMetadataImplToJson(
  _$CommentMetadataImpl instance,
) => <String, dynamic>{'likes': instance.likes, 'replies': instance.replies};
