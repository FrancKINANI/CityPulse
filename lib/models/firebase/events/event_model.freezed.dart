// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get startDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get endDate => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  int get ticketsSold => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  EventMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
    EventModel value,
    $Res Function(EventModel) then,
  ) = _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String placeId,
    String ownerId,
    @TimestampConverter() Timestamp startDate,
    @TimestampConverter() Timestamp endDate,
    String type,
    double price,
    int capacity,
    int ticketsSold,
    String status,
    List<String> images,
    EventMetadata metadata,
  });

  $EventMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? placeId = null,
    Object? ownerId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? type = null,
    Object? price = null,
    Object? capacity = null,
    Object? ticketsSold = null,
    Object? status = null,
    Object? images = null,
    Object? metadata = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            placeId: null == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                      as String,
            ownerId: null == ownerId
                ? _value.ownerId
                : ownerId // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            capacity: null == capacity
                ? _value.capacity
                : capacity // ignore: cast_nullable_to_non_nullable
                      as int,
            ticketsSold: null == ticketsSold
                ? _value.ticketsSold
                : ticketsSold // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as EventMetadata,
          )
          as $Val,
    );
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventMetadataCopyWith<$Res> get metadata {
    return $EventMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
    _$EventModelImpl value,
    $Res Function(_$EventModelImpl) then,
  ) = __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String placeId,
    String ownerId,
    @TimestampConverter() Timestamp startDate,
    @TimestampConverter() Timestamp endDate,
    String type,
    double price,
    int capacity,
    int ticketsSold,
    String status,
    List<String> images,
    EventMetadata metadata,
  });

  @override
  $EventMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
    _$EventModelImpl _value,
    $Res Function(_$EventModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? placeId = null,
    Object? ownerId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? type = null,
    Object? price = null,
    Object? capacity = null,
    Object? ticketsSold = null,
    Object? status = null,
    Object? images = null,
    Object? metadata = null,
  }) {
    return _then(
      _$EventModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        placeId: null == placeId
            ? _value.placeId
            : placeId // ignore: cast_nullable_to_non_nullable
                  as String,
        ownerId: null == ownerId
            ? _value.ownerId
            : ownerId // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        capacity: null == capacity
            ? _value.capacity
            : capacity // ignore: cast_nullable_to_non_nullable
                  as int,
        ticketsSold: null == ticketsSold
            ? _value.ticketsSold
            : ticketsSold // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as EventMetadata,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl implements _EventModel {
  const _$EventModelImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.placeId,
    required this.ownerId,
    @TimestampConverter() required this.startDate,
    @TimestampConverter() required this.endDate,
    required this.type,
    required this.price,
    required this.capacity,
    required this.ticketsSold,
    required this.status,
    required final List<String> images,
    required this.metadata,
  }) : _images = images;

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String placeId;
  @override
  final String ownerId;
  @override
  @TimestampConverter()
  final Timestamp startDate;
  @override
  @TimestampConverter()
  final Timestamp endDate;
  @override
  final String type;
  @override
  final double price;
  @override
  final int capacity;
  @override
  final int ticketsSold;
  @override
  final String status;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final EventMetadata metadata;

  @override
  String toString() {
    return 'EventModel(id: $id, name: $name, description: $description, placeId: $placeId, ownerId: $ownerId, startDate: $startDate, endDate: $endDate, type: $type, price: $price, capacity: $capacity, ticketsSold: $ticketsSold, status: $status, images: $images, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.ticketsSold, ticketsSold) ||
                other.ticketsSold == ticketsSold) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    placeId,
    ownerId,
    startDate,
    endDate,
    type,
    price,
    capacity,
    ticketsSold,
    status,
    const DeepCollectionEquality().hash(_images),
    metadata,
  );

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(this);
  }
}

abstract class _EventModel implements EventModel {
  const factory _EventModel({
    required final String id,
    required final String name,
    required final String description,
    required final String placeId,
    required final String ownerId,
    @TimestampConverter() required final Timestamp startDate,
    @TimestampConverter() required final Timestamp endDate,
    required final String type,
    required final double price,
    required final int capacity,
    required final int ticketsSold,
    required final String status,
    required final List<String> images,
    required final EventMetadata metadata,
  }) = _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get placeId;
  @override
  String get ownerId;
  @override
  @TimestampConverter()
  Timestamp get startDate;
  @override
  @TimestampConverter()
  Timestamp get endDate;
  @override
  String get type;
  @override
  double get price;
  @override
  int get capacity;
  @override
  int get ticketsSold;
  @override
  String get status;
  @override
  List<String> get images;
  @override
  EventMetadata get metadata;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventMetadata _$EventMetadataFromJson(Map<String, dynamic> json) {
  return _EventMetadata.fromJson(json);
}

/// @nodoc
mixin _$EventMetadata {
  int? get ageRestriction => throw _privateConstructorUsedError;
  List<String>? get requiredDocuments => throw _privateConstructorUsedError;

  /// Serializes this EventMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventMetadataCopyWith<EventMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventMetadataCopyWith<$Res> {
  factory $EventMetadataCopyWith(
    EventMetadata value,
    $Res Function(EventMetadata) then,
  ) = _$EventMetadataCopyWithImpl<$Res, EventMetadata>;
  @useResult
  $Res call({int? ageRestriction, List<String>? requiredDocuments});
}

/// @nodoc
class _$EventMetadataCopyWithImpl<$Res, $Val extends EventMetadata>
    implements $EventMetadataCopyWith<$Res> {
  _$EventMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageRestriction = freezed,
    Object? requiredDocuments = freezed,
  }) {
    return _then(
      _value.copyWith(
            ageRestriction: freezed == ageRestriction
                ? _value.ageRestriction
                : ageRestriction // ignore: cast_nullable_to_non_nullable
                      as int?,
            requiredDocuments: freezed == requiredDocuments
                ? _value.requiredDocuments
                : requiredDocuments // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EventMetadataImplCopyWith<$Res>
    implements $EventMetadataCopyWith<$Res> {
  factory _$$EventMetadataImplCopyWith(
    _$EventMetadataImpl value,
    $Res Function(_$EventMetadataImpl) then,
  ) = __$$EventMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? ageRestriction, List<String>? requiredDocuments});
}

/// @nodoc
class __$$EventMetadataImplCopyWithImpl<$Res>
    extends _$EventMetadataCopyWithImpl<$Res, _$EventMetadataImpl>
    implements _$$EventMetadataImplCopyWith<$Res> {
  __$$EventMetadataImplCopyWithImpl(
    _$EventMetadataImpl _value,
    $Res Function(_$EventMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageRestriction = freezed,
    Object? requiredDocuments = freezed,
  }) {
    return _then(
      _$EventMetadataImpl(
        ageRestriction: freezed == ageRestriction
            ? _value.ageRestriction
            : ageRestriction // ignore: cast_nullable_to_non_nullable
                  as int?,
        requiredDocuments: freezed == requiredDocuments
            ? _value._requiredDocuments
            : requiredDocuments // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EventMetadataImpl implements _EventMetadata {
  const _$EventMetadataImpl({
    this.ageRestriction,
    final List<String>? requiredDocuments,
  }) : _requiredDocuments = requiredDocuments;

  factory _$EventMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventMetadataImplFromJson(json);

  @override
  final int? ageRestriction;
  final List<String>? _requiredDocuments;
  @override
  List<String>? get requiredDocuments {
    final value = _requiredDocuments;
    if (value == null) return null;
    if (_requiredDocuments is EqualUnmodifiableListView)
      return _requiredDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EventMetadata(ageRestriction: $ageRestriction, requiredDocuments: $requiredDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventMetadataImpl &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            const DeepCollectionEquality().equals(
              other._requiredDocuments,
              _requiredDocuments,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ageRestriction,
    const DeepCollectionEquality().hash(_requiredDocuments),
  );

  /// Create a copy of EventMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventMetadataImplCopyWith<_$EventMetadataImpl> get copyWith =>
      __$$EventMetadataImplCopyWithImpl<_$EventMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventMetadataImplToJson(this);
  }
}

abstract class _EventMetadata implements EventMetadata {
  const factory _EventMetadata({
    final int? ageRestriction,
    final List<String>? requiredDocuments,
  }) = _$EventMetadataImpl;

  factory _EventMetadata.fromJson(Map<String, dynamic> json) =
      _$EventMetadataImpl.fromJson;

  @override
  int? get ageRestriction;
  @override
  List<String>? get requiredDocuments;

  /// Create a copy of EventMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventMetadataImplCopyWith<_$EventMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
