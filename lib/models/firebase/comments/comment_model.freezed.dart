// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  CommentMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this CommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
    CommentModel value,
    $Res Function(CommentModel) then,
  ) = _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String placeId,
    String? parentId,
    String content,
    double rating,
    @TimestampConverter() Timestamp createdAt,
    String status,
    CommentMetadata metadata,
  });

  $CommentMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? placeId = null,
    Object? parentId = freezed,
    Object? content = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? status = null,
    Object? metadata = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            placeId: null == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as CommentMetadata,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentMetadataCopyWith<$Res> get metadata {
    return $CommentMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
    _$CommentModelImpl value,
    $Res Function(_$CommentModelImpl) then,
  ) = __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String placeId,
    String? parentId,
    String content,
    double rating,
    @TimestampConverter() Timestamp createdAt,
    String status,
    CommentMetadata metadata,
  });

  @override
  $CommentMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
    _$CommentModelImpl _value,
    $Res Function(_$CommentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? placeId = null,
    Object? parentId = freezed,
    Object? content = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? status = null,
    Object? metadata = null,
  }) {
    return _then(
      _$CommentModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        placeId: null == placeId
            ? _value.placeId
            : placeId // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as CommentMetadata,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl implements _CommentModel {
  const _$CommentModelImpl({
    required this.id,
    required this.userId,
    required this.placeId,
    this.parentId,
    required this.content,
    required this.rating,
    @TimestampConverter() required this.createdAt,
    required this.status,
    required this.metadata,
  });

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String placeId;
  @override
  final String? parentId;
  @override
  final String content;
  @override
  final double rating;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  final String status;
  @override
  final CommentMetadata metadata;

  @override
  String toString() {
    return 'CommentModel(id: $id, userId: $userId, placeId: $placeId, parentId: $parentId, content: $content, rating: $rating, createdAt: $createdAt, status: $status, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    placeId,
    parentId,
    content,
    rating,
    createdAt,
    status,
    metadata,
  );

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(this);
  }
}

abstract class _CommentModel implements CommentModel {
  const factory _CommentModel({
    required final String id,
    required final String userId,
    required final String placeId,
    final String? parentId,
    required final String content,
    required final double rating,
    @TimestampConverter() required final Timestamp createdAt,
    required final String status,
    required final CommentMetadata metadata,
  }) = _$CommentModelImpl;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get placeId;
  @override
  String? get parentId;
  @override
  String get content;
  @override
  double get rating;
  @override
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  String get status;
  @override
  CommentMetadata get metadata;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentMetadata _$CommentMetadataFromJson(Map<String, dynamic> json) {
  return _CommentMetadata.fromJson(json);
}

/// @nodoc
mixin _$CommentMetadata {
  int? get likes => throw _privateConstructorUsedError;
  int? get replies => throw _privateConstructorUsedError;

  /// Serializes this CommentMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentMetadataCopyWith<CommentMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentMetadataCopyWith<$Res> {
  factory $CommentMetadataCopyWith(
    CommentMetadata value,
    $Res Function(CommentMetadata) then,
  ) = _$CommentMetadataCopyWithImpl<$Res, CommentMetadata>;
  @useResult
  $Res call({int? likes, int? replies});
}

/// @nodoc
class _$CommentMetadataCopyWithImpl<$Res, $Val extends CommentMetadata>
    implements $CommentMetadataCopyWith<$Res> {
  _$CommentMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? likes = freezed, Object? replies = freezed}) {
    return _then(
      _value.copyWith(
            likes: freezed == likes
                ? _value.likes
                : likes // ignore: cast_nullable_to_non_nullable
                      as int?,
            replies: freezed == replies
                ? _value.replies
                : replies // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentMetadataImplCopyWith<$Res>
    implements $CommentMetadataCopyWith<$Res> {
  factory _$$CommentMetadataImplCopyWith(
    _$CommentMetadataImpl value,
    $Res Function(_$CommentMetadataImpl) then,
  ) = __$$CommentMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? likes, int? replies});
}

/// @nodoc
class __$$CommentMetadataImplCopyWithImpl<$Res>
    extends _$CommentMetadataCopyWithImpl<$Res, _$CommentMetadataImpl>
    implements _$$CommentMetadataImplCopyWith<$Res> {
  __$$CommentMetadataImplCopyWithImpl(
    _$CommentMetadataImpl _value,
    $Res Function(_$CommentMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? likes = freezed, Object? replies = freezed}) {
    return _then(
      _$CommentMetadataImpl(
        likes: freezed == likes
            ? _value.likes
            : likes // ignore: cast_nullable_to_non_nullable
                  as int?,
        replies: freezed == replies
            ? _value.replies
            : replies // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentMetadataImpl implements _CommentMetadata {
  const _$CommentMetadataImpl({this.likes, this.replies});

  factory _$CommentMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentMetadataImplFromJson(json);

  @override
  final int? likes;
  @override
  final int? replies;

  @override
  String toString() {
    return 'CommentMetadata(likes: $likes, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentMetadataImpl &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.replies, replies) || other.replies == replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, likes, replies);

  /// Create a copy of CommentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentMetadataImplCopyWith<_$CommentMetadataImpl> get copyWith =>
      __$$CommentMetadataImplCopyWithImpl<_$CommentMetadataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentMetadataImplToJson(this);
  }
}

abstract class _CommentMetadata implements CommentMetadata {
  const factory _CommentMetadata({final int? likes, final int? replies}) =
      _$CommentMetadataImpl;

  factory _CommentMetadata.fromJson(Map<String, dynamic> json) =
      _$CommentMetadataImpl.fromJson;

  @override
  int? get likes;
  @override
  int? get replies;

  /// Create a copy of CommentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentMetadataImplCopyWith<_$CommentMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
