// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourModel _$TourModelFromJson(Map<String, dynamic> json) {
  return _TourModel.fromJson(json);
}

/// @nodoc
mixin _$TourModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  List<TourPlace> get places => throw _privateConstructorUsedError;
  List<EventModel> get events => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TourModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourModelCopyWith<TourModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourModelCopyWith<$Res> {
  factory $TourModelCopyWith(TourModel value, $Res Function(TourModel) then) =
      _$TourModelCopyWithImpl<$Res, TourModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String creatorId,
    List<TourPlace> places,
    List<EventModel> events,
    int duration,
    Rating rating,
    List<String> images,
    String status,
    @TimestampConverter() Timestamp createdAt,
    @TimestampConverter() Timestamp updatedAt,
  });

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$TourModelCopyWithImpl<$Res, $Val extends TourModel>
    implements $TourModelCopyWith<$Res> {
  _$TourModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? creatorId = null,
    Object? places = null,
    Object? events = null,
    Object? duration = null,
    Object? rating = null,
    Object? images = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
            creatorId: null == creatorId
                ? _value.creatorId
                : creatorId // ignore: cast_nullable_to_non_nullable
                      as String,
            places: null == places
                ? _value.places
                : places // ignore: cast_nullable_to_non_nullable
                      as List<TourPlace>,
            events: null == events
                ? _value.events
                : events // ignore: cast_nullable_to_non_nullable
                      as List<EventModel>,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as Rating,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
          )
          as $Val,
    );
  }

  /// Create a copy of TourModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TourModelImplCopyWith<$Res>
    implements $TourModelCopyWith<$Res> {
  factory _$$TourModelImplCopyWith(
    _$TourModelImpl value,
    $Res Function(_$TourModelImpl) then,
  ) = __$$TourModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String creatorId,
    List<TourPlace> places,
    List<EventModel> events,
    int duration,
    Rating rating,
    List<String> images,
    String status,
    @TimestampConverter() Timestamp createdAt,
    @TimestampConverter() Timestamp updatedAt,
  });

  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$TourModelImplCopyWithImpl<$Res>
    extends _$TourModelCopyWithImpl<$Res, _$TourModelImpl>
    implements _$$TourModelImplCopyWith<$Res> {
  __$$TourModelImplCopyWithImpl(
    _$TourModelImpl _value,
    $Res Function(_$TourModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? creatorId = null,
    Object? places = null,
    Object? events = null,
    Object? duration = null,
    Object? rating = null,
    Object? images = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TourModelImpl(
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
        creatorId: null == creatorId
            ? _value.creatorId
            : creatorId // ignore: cast_nullable_to_non_nullable
                  as String,
        places: null == places
            ? _value._places
            : places // ignore: cast_nullable_to_non_nullable
                  as List<TourPlace>,
        events: null == events
            ? _value._events
            : events // ignore: cast_nullable_to_non_nullable
                  as List<EventModel>,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as Rating,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourModelImpl implements _TourModel {
  const _$TourModelImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.creatorId,
    required final List<TourPlace> places,
    required final List<EventModel> events,
    required this.duration,
    required this.rating,
    required final List<String> images,
    required this.status,
    @TimestampConverter() required this.createdAt,
    @TimestampConverter() required this.updatedAt,
  }) : _places = places,
       _events = events,
       _images = images;

  factory _$TourModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String creatorId;
  final List<TourPlace> _places;
  @override
  List<TourPlace> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  final List<EventModel> _events;
  @override
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final int duration;
  @override
  final Rating rating;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String status;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  @TimestampConverter()
  final Timestamp updatedAt;

  @override
  String toString() {
    return 'TourModel(id: $id, name: $name, description: $description, creatorId: $creatorId, places: $places, events: $events, duration: $duration, rating: $rating, images: $images, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    creatorId,
    const DeepCollectionEquality().hash(_places),
    const DeepCollectionEquality().hash(_events),
    duration,
    rating,
    const DeepCollectionEquality().hash(_images),
    status,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TourModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourModelImplCopyWith<_$TourModelImpl> get copyWith =>
      __$$TourModelImplCopyWithImpl<_$TourModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourModelImplToJson(this);
  }
}

abstract class _TourModel implements TourModel {
  const factory _TourModel({
    required final String id,
    required final String name,
    required final String description,
    required final String creatorId,
    required final List<TourPlace> places,
    required final List<EventModel> events,
    required final int duration,
    required final Rating rating,
    required final List<String> images,
    required final String status,
    @TimestampConverter() required final Timestamp createdAt,
    @TimestampConverter() required final Timestamp updatedAt,
  }) = _$TourModelImpl;

  factory _TourModel.fromJson(Map<String, dynamic> json) =
      _$TourModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get creatorId;
  @override
  List<TourPlace> get places;
  @override
  List<EventModel> get events;
  @override
  int get duration;
  @override
  Rating get rating;
  @override
  List<String> get images;
  @override
  String get status;
  @override
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  @TimestampConverter()
  Timestamp get updatedAt;

  /// Create a copy of TourModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourModelImplCopyWith<_$TourModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TourPlace _$TourPlaceFromJson(Map<String, dynamic> json) {
  return _TourPlace.fromJson(json);
}

/// @nodoc
mixin _$TourPlace {
  String get placeId => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this TourPlace to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourPlaceCopyWith<TourPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourPlaceCopyWith<$Res> {
  factory $TourPlaceCopyWith(TourPlace value, $Res Function(TourPlace) then) =
      _$TourPlaceCopyWithImpl<$Res, TourPlace>;
  @useResult
  $Res call({String placeId, int order, String? notes});
}

/// @nodoc
class _$TourPlaceCopyWithImpl<$Res, $Val extends TourPlace>
    implements $TourPlaceCopyWith<$Res> {
  _$TourPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? order = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            placeId: null == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                      as String,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TourPlaceImplCopyWith<$Res>
    implements $TourPlaceCopyWith<$Res> {
  factory _$$TourPlaceImplCopyWith(
    _$TourPlaceImpl value,
    $Res Function(_$TourPlaceImpl) then,
  ) = __$$TourPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeId, int order, String? notes});
}

/// @nodoc
class __$$TourPlaceImplCopyWithImpl<$Res>
    extends _$TourPlaceCopyWithImpl<$Res, _$TourPlaceImpl>
    implements _$$TourPlaceImplCopyWith<$Res> {
  __$$TourPlaceImplCopyWithImpl(
    _$TourPlaceImpl _value,
    $Res Function(_$TourPlaceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? order = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$TourPlaceImpl(
        placeId: null == placeId
            ? _value.placeId
            : placeId // ignore: cast_nullable_to_non_nullable
                  as String,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourPlaceImpl implements _TourPlace {
  const _$TourPlaceImpl({
    required this.placeId,
    required this.order,
    this.notes,
  });

  factory _$TourPlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourPlaceImplFromJson(json);

  @override
  final String placeId;
  @override
  final int order;
  @override
  final String? notes;

  @override
  String toString() {
    return 'TourPlace(placeId: $placeId, order: $order, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourPlaceImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, order, notes);

  /// Create a copy of TourPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourPlaceImplCopyWith<_$TourPlaceImpl> get copyWith =>
      __$$TourPlaceImplCopyWithImpl<_$TourPlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourPlaceImplToJson(this);
  }
}

abstract class _TourPlace implements TourPlace {
  const factory _TourPlace({
    required final String placeId,
    required final int order,
    final String? notes,
  }) = _$TourPlaceImpl;

  factory _TourPlace.fromJson(Map<String, dynamic> json) =
      _$TourPlaceImpl.fromJson;

  @override
  String get placeId;
  @override
  int get order;
  @override
  String? get notes;

  /// Create a copy of TourPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourPlaceImplCopyWith<_$TourPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  double get average => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this Rating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({double average, int count});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? average = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            average: null == average
                ? _value.average
                : average // ignore: cast_nullable_to_non_nullable
                      as double,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
    _$RatingImpl value,
    $Res Function(_$RatingImpl) then,
  ) = __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double average, int count});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
    _$RatingImpl _value,
    $Res Function(_$RatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? average = null, Object? count = null}) {
    return _then(
      _$RatingImpl(
        average: null == average
            ? _value.average
            : average // ignore: cast_nullable_to_non_nullable
                  as double,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl({required this.average, required this.count});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final double average;
  @override
  final int count;

  @override
  String toString() {
    return 'Rating(average: $average, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, average, count);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(this);
  }
}

abstract class _Rating implements Rating {
  const factory _Rating({
    required final double average,
    required final int count,
  }) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  double get average;
  @override
  int get count;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
