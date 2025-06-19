// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  NotificationMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
    NotificationModel value,
    $Res Function(NotificationModel) then,
  ) = _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String type,
    String content,
    bool read,
    @TimestampConverter() Timestamp createdAt,
    NotificationMetadata metadata,
  });

  $NotificationMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? content = null,
    Object? read = null,
    Object? createdAt = null,
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
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            read: null == read
                ? _value.read
                : read // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as NotificationMetadata,
          )
          as $Val,
    );
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationMetadataCopyWith<$Res> get metadata {
    return $NotificationMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(
    _$NotificationModelImpl value,
    $Res Function(_$NotificationModelImpl) then,
  ) = __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String type,
    String content,
    bool read,
    @TimestampConverter() Timestamp createdAt,
    NotificationMetadata metadata,
  });

  @override
  $NotificationMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(
    _$NotificationModelImpl _value,
    $Res Function(_$NotificationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? content = null,
    Object? read = null,
    Object? createdAt = null,
    Object? metadata = null,
  }) {
    return _then(
      _$NotificationModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        read: null == read
            ? _value.read
            : read // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as NotificationMetadata,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl({
    required this.id,
    required this.userId,
    required this.type,
    required this.content,
    required this.read,
    @TimestampConverter() required this.createdAt,
    required this.metadata,
  });

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String type;
  @override
  final String content;
  @override
  final bool read;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  final NotificationMetadata metadata;

  @override
  String toString() {
    return 'NotificationModel(id: $id, userId: $userId, type: $type, content: $content, read: $read, createdAt: $createdAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    type,
    content,
    read,
    createdAt,
    metadata,
  );

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(this);
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel({
    required final String id,
    required final String userId,
    required final String type,
    required final String content,
    required final bool read,
    @TimestampConverter() required final Timestamp createdAt,
    required final NotificationMetadata metadata,
  }) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get type;
  @override
  String get content;
  @override
  bool get read;
  @override
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  NotificationMetadata get metadata;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationMetadata _$NotificationMetadataFromJson(Map<String, dynamic> json) {
  return _NotificationMetadata.fromJson(json);
}

/// @nodoc
mixin _$NotificationMetadata {
  String? get placeId => throw _privateConstructorUsedError;
  String? get eventId => throw _privateConstructorUsedError;

  /// Serializes this NotificationMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationMetadataCopyWith<NotificationMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMetadataCopyWith<$Res> {
  factory $NotificationMetadataCopyWith(
    NotificationMetadata value,
    $Res Function(NotificationMetadata) then,
  ) = _$NotificationMetadataCopyWithImpl<$Res, NotificationMetadata>;
  @useResult
  $Res call({String? placeId, String? eventId});
}

/// @nodoc
class _$NotificationMetadataCopyWithImpl<
  $Res,
  $Val extends NotificationMetadata
>
    implements $NotificationMetadataCopyWith<$Res> {
  _$NotificationMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? placeId = freezed, Object? eventId = freezed}) {
    return _then(
      _value.copyWith(
            placeId: freezed == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            eventId: freezed == eventId
                ? _value.eventId
                : eventId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationMetadataImplCopyWith<$Res>
    implements $NotificationMetadataCopyWith<$Res> {
  factory _$$NotificationMetadataImplCopyWith(
    _$NotificationMetadataImpl value,
    $Res Function(_$NotificationMetadataImpl) then,
  ) = __$$NotificationMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? placeId, String? eventId});
}

/// @nodoc
class __$$NotificationMetadataImplCopyWithImpl<$Res>
    extends _$NotificationMetadataCopyWithImpl<$Res, _$NotificationMetadataImpl>
    implements _$$NotificationMetadataImplCopyWith<$Res> {
  __$$NotificationMetadataImplCopyWithImpl(
    _$NotificationMetadataImpl _value,
    $Res Function(_$NotificationMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? placeId = freezed, Object? eventId = freezed}) {
    return _then(
      _$NotificationMetadataImpl(
        placeId: freezed == placeId
            ? _value.placeId
            : placeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        eventId: freezed == eventId
            ? _value.eventId
            : eventId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationMetadataImpl implements _NotificationMetadata {
  const _$NotificationMetadataImpl({this.placeId, this.eventId});

  factory _$NotificationMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationMetadataImplFromJson(json);

  @override
  final String? placeId;
  @override
  final String? eventId;

  @override
  String toString() {
    return 'NotificationMetadata(placeId: $placeId, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMetadataImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, eventId);

  /// Create a copy of NotificationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationMetadataImplCopyWith<_$NotificationMetadataImpl>
  get copyWith =>
      __$$NotificationMetadataImplCopyWithImpl<_$NotificationMetadataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationMetadataImplToJson(this);
  }
}

abstract class _NotificationMetadata implements NotificationMetadata {
  const factory _NotificationMetadata({
    final String? placeId,
    final String? eventId,
  }) = _$NotificationMetadataImpl;

  factory _NotificationMetadata.fromJson(Map<String, dynamic> json) =
      _$NotificationMetadataImpl.fromJson;

  @override
  String? get placeId;
  @override
  String? get eventId;

  /// Create a copy of NotificationMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationMetadataImplCopyWith<_$NotificationMetadataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
