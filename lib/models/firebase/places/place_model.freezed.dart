// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) {
  return _PlaceModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError; // Category ID
  String get ownerId => throw _privateConstructorUsedError;
  OpeningHours get openingHours => throw _privateConstructorUsedError;
  Contact get contact => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  Metadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this PlaceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
    PlaceModel value,
    $Res Function(PlaceModel) then,
  ) = _$PlaceModelCopyWithImpl<$Res, PlaceModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    Address address,
    String category,
    String ownerId,
    OpeningHours openingHours,
    Contact contact,
    List<String> images,
    Rating rating,
    @TimestampConverter() Timestamp createdAt,
    String status,
    Metadata metadata,
  });

  $AddressCopyWith<$Res> get address;
  $OpeningHoursCopyWith<$Res> get openingHours;
  $ContactCopyWith<$Res> get contact;
  $RatingCopyWith<$Res> get rating;
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$PlaceModelCopyWithImpl<$Res, $Val extends PlaceModel>
    implements $PlaceModelCopyWith<$Res> {
  _$PlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? address = null,
    Object? category = null,
    Object? ownerId = null,
    Object? openingHours = null,
    Object? contact = null,
    Object? images = null,
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
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as Address,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            ownerId: null == ownerId
                ? _value.ownerId
                : ownerId // ignore: cast_nullable_to_non_nullable
                      as String,
            openingHours: null == openingHours
                ? _value.openingHours
                : openingHours // ignore: cast_nullable_to_non_nullable
                      as OpeningHours,
            contact: null == contact
                ? _value.contact
                : contact // ignore: cast_nullable_to_non_nullable
                      as Contact,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as Rating,
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
                      as Metadata,
          )
          as $Val,
    );
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursCopyWith<$Res> get openingHours {
    return $OpeningHoursCopyWith<$Res>(_value.openingHours, (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceModelImplCopyWith<$Res>
    implements $PlaceModelCopyWith<$Res> {
  factory _$$PlaceModelImplCopyWith(
    _$PlaceModelImpl value,
    $Res Function(_$PlaceModelImpl) then,
  ) = __$$PlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    Address address,
    String category,
    String ownerId,
    OpeningHours openingHours,
    Contact contact,
    List<String> images,
    Rating rating,
    @TimestampConverter() Timestamp createdAt,
    String status,
    Metadata metadata,
  });

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $OpeningHoursCopyWith<$Res> get openingHours;
  @override
  $ContactCopyWith<$Res> get contact;
  @override
  $RatingCopyWith<$Res> get rating;
  @override
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$PlaceModelImplCopyWithImpl<$Res>
    extends _$PlaceModelCopyWithImpl<$Res, _$PlaceModelImpl>
    implements _$$PlaceModelImplCopyWith<$Res> {
  __$$PlaceModelImplCopyWithImpl(
    _$PlaceModelImpl _value,
    $Res Function(_$PlaceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? address = null,
    Object? category = null,
    Object? ownerId = null,
    Object? openingHours = null,
    Object? contact = null,
    Object? images = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? status = null,
    Object? metadata = null,
  }) {
    return _then(
      _$PlaceModelImpl(
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
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as Address,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        ownerId: null == ownerId
            ? _value.ownerId
            : ownerId // ignore: cast_nullable_to_non_nullable
                  as String,
        openingHours: null == openingHours
            ? _value.openingHours
            : openingHours // ignore: cast_nullable_to_non_nullable
                  as OpeningHours,
        contact: null == contact
            ? _value.contact
            : contact // ignore: cast_nullable_to_non_nullable
                  as Contact,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as Rating,
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
                  as Metadata,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceModelImpl implements _PlaceModel {
  const _$PlaceModelImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.category,
    required this.ownerId,
    required this.openingHours,
    required this.contact,
    required final List<String> images,
    required this.rating,
    @TimestampConverter() required this.createdAt,
    required this.status,
    required this.metadata,
  }) : _images = images;

  factory _$PlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final Address address;
  @override
  final String category;
  // Category ID
  @override
  final String ownerId;
  @override
  final OpeningHours openingHours;
  @override
  final Contact contact;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Rating rating;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  final String status;
  @override
  final Metadata metadata;

  @override
  String toString() {
    return 'PlaceModel(id: $id, name: $name, description: $description, address: $address, category: $category, ownerId: $ownerId, openingHours: $openingHours, contact: $contact, images: $images, rating: $rating, createdAt: $createdAt, status: $status, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
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
    name,
    description,
    address,
    category,
    ownerId,
    openingHours,
    contact,
    const DeepCollectionEquality().hash(_images),
    rating,
    createdAt,
    status,
    metadata,
  );

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      __$$PlaceModelImplCopyWithImpl<_$PlaceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceModelImplToJson(this);
  }
}

abstract class _PlaceModel implements PlaceModel {
  const factory _PlaceModel({
    required final String id,
    required final String name,
    required final String description,
    required final Address address,
    required final String category,
    required final String ownerId,
    required final OpeningHours openingHours,
    required final Contact contact,
    required final List<String> images,
    required final Rating rating,
    @TimestampConverter() required final Timestamp createdAt,
    required final String status,
    required final Metadata metadata,
  }) = _$PlaceModelImpl;

  factory _PlaceModel.fromJson(Map<String, dynamic> json) =
      _$PlaceModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  Address get address;
  @override
  String get category; // Category ID
  @override
  String get ownerId;
  @override
  OpeningHours get openingHours;
  @override
  Contact get contact;
  @override
  List<String> get images;
  @override
  Rating get rating;
  @override
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  String get status;
  @override
  Metadata get metadata;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  LatLng get coordinates => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String street, String city, String country, LatLng coordinates});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? country = null,
    Object? coordinates = null,
  }) {
    return _then(
      _value.copyWith(
            street: null == street
                ? _value.street
                : street // ignore: cast_nullable_to_non_nullable
                      as String,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            coordinates: null == coordinates
                ? _value.coordinates
                : coordinates // ignore: cast_nullable_to_non_nullable
                      as LatLng,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
    _$AddressImpl value,
    $Res Function(_$AddressImpl) then,
  ) = __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String street, String city, String country, LatLng coordinates});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
    _$AddressImpl _value,
    $Res Function(_$AddressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? country = null,
    Object? coordinates = null,
  }) {
    return _then(
      _$AddressImpl(
        street: null == street
            ? _value.street
            : street // ignore: cast_nullable_to_non_nullable
                  as String,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        coordinates: null == coordinates
            ? _value.coordinates
            : coordinates // ignore: cast_nullable_to_non_nullable
                  as LatLng,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl({
    required this.street,
    required this.city,
    required this.country,
    required this.coordinates,
  });

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String street;
  @override
  final String city;
  @override
  final String country;
  @override
  final LatLng coordinates;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, country: $country, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, country, coordinates);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(this);
  }
}

abstract class _Address implements Address {
  const factory _Address({
    required final String street,
    required final String city,
    required final String country,
    required final LatLng coordinates,
  }) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get street;
  @override
  String get city;
  @override
  String get country;
  @override
  LatLng get coordinates;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  Map<String, OpeningDay> get days => throw _privateConstructorUsedError;

  /// Serializes this OpeningHours to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
    OpeningHours value,
    $Res Function(OpeningHours) then,
  ) = _$OpeningHoursCopyWithImpl<$Res, OpeningHours>;
  @useResult
  $Res call({Map<String, OpeningDay> days});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res, $Val extends OpeningHours>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? days = null}) {
    return _then(
      _value.copyWith(
            days: null == days
                ? _value.days
                : days // ignore: cast_nullable_to_non_nullable
                      as Map<String, OpeningDay>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OpeningHoursImplCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$$OpeningHoursImplCopyWith(
    _$OpeningHoursImpl value,
    $Res Function(_$OpeningHoursImpl) then,
  ) = __$$OpeningHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, OpeningDay> days});
}

/// @nodoc
class __$$OpeningHoursImplCopyWithImpl<$Res>
    extends _$OpeningHoursCopyWithImpl<$Res, _$OpeningHoursImpl>
    implements _$$OpeningHoursImplCopyWith<$Res> {
  __$$OpeningHoursImplCopyWithImpl(
    _$OpeningHoursImpl _value,
    $Res Function(_$OpeningHoursImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? days = null}) {
    return _then(
      _$OpeningHoursImpl(
        days: null == days
            ? _value._days
            : days // ignore: cast_nullable_to_non_nullable
                  as Map<String, OpeningDay>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHoursImpl implements _OpeningHours {
  const _$OpeningHoursImpl({required final Map<String, OpeningDay> days})
    : _days = days;

  factory _$OpeningHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHoursImplFromJson(json);

  final Map<String, OpeningDay> _days;
  @override
  Map<String, OpeningDay> get days {
    if (_days is EqualUnmodifiableMapView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_days);
  }

  @override
  String toString() {
    return 'OpeningHours(days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHoursImpl &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_days));

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      __$$OpeningHoursImplCopyWithImpl<_$OpeningHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHoursImplToJson(this);
  }
}

abstract class _OpeningHours implements OpeningHours {
  const factory _OpeningHours({required final Map<String, OpeningDay> days}) =
      _$OpeningHoursImpl;

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$OpeningHoursImpl.fromJson;

  @override
  Map<String, OpeningDay> get days;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpeningDay _$OpeningDayFromJson(Map<String, dynamic> json) {
  return _OpeningDay.fromJson(json);
}

/// @nodoc
mixin _$OpeningDay {
  String get open => throw _privateConstructorUsedError;
  String get close => throw _privateConstructorUsedError;

  /// Serializes this OpeningDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpeningDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpeningDayCopyWith<OpeningDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningDayCopyWith<$Res> {
  factory $OpeningDayCopyWith(
    OpeningDay value,
    $Res Function(OpeningDay) then,
  ) = _$OpeningDayCopyWithImpl<$Res, OpeningDay>;
  @useResult
  $Res call({String open, String close});
}

/// @nodoc
class _$OpeningDayCopyWithImpl<$Res, $Val extends OpeningDay>
    implements $OpeningDayCopyWith<$Res> {
  _$OpeningDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpeningDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? open = null, Object? close = null}) {
    return _then(
      _value.copyWith(
            open: null == open
                ? _value.open
                : open // ignore: cast_nullable_to_non_nullable
                      as String,
            close: null == close
                ? _value.close
                : close // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OpeningDayImplCopyWith<$Res>
    implements $OpeningDayCopyWith<$Res> {
  factory _$$OpeningDayImplCopyWith(
    _$OpeningDayImpl value,
    $Res Function(_$OpeningDayImpl) then,
  ) = __$$OpeningDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String open, String close});
}

/// @nodoc
class __$$OpeningDayImplCopyWithImpl<$Res>
    extends _$OpeningDayCopyWithImpl<$Res, _$OpeningDayImpl>
    implements _$$OpeningDayImplCopyWith<$Res> {
  __$$OpeningDayImplCopyWithImpl(
    _$OpeningDayImpl _value,
    $Res Function(_$OpeningDayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OpeningDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? open = null, Object? close = null}) {
    return _then(
      _$OpeningDayImpl(
        open: null == open
            ? _value.open
            : open // ignore: cast_nullable_to_non_nullable
                  as String,
        close: null == close
            ? _value.close
            : close // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningDayImpl implements _OpeningDay {
  const _$OpeningDayImpl({required this.open, required this.close});

  factory _$OpeningDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningDayImplFromJson(json);

  @override
  final String open;
  @override
  final String close;

  @override
  String toString() {
    return 'OpeningDay(open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningDayImpl &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  /// Create a copy of OpeningDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningDayImplCopyWith<_$OpeningDayImpl> get copyWith =>
      __$$OpeningDayImplCopyWithImpl<_$OpeningDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningDayImplToJson(this);
  }
}

abstract class _OpeningDay implements OpeningDay {
  const factory _OpeningDay({
    required final String open,
    required final String close,
  }) = _$OpeningDayImpl;

  factory _OpeningDay.fromJson(Map<String, dynamic> json) =
      _$OpeningDayImpl.fromJson;

  @override
  String get open;
  @override
  String get close;

  /// Create a copy of OpeningDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningDayImplCopyWith<_$OpeningDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({String? phone, String? email, String? website});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? website = freezed,
  }) {
    return _then(
      _value.copyWith(
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            website: freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
    _$ContactImpl value,
    $Res Function(_$ContactImpl) then,
  ) = __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? email, String? website});
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
    _$ContactImpl _value,
    $Res Function(_$ContactImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? website = freezed,
  }) {
    return _then(
      _$ContactImpl(
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        website: freezed == website
            ? _value.website
            : website // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl implements _Contact {
  const _$ContactImpl({this.phone, this.email, this.website});

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? website;

  @override
  String toString() {
    return 'Contact(phone: $phone, email: $email, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, email, website);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactImplToJson(this);
  }
}

abstract class _Contact implements Contact {
  const factory _Contact({
    final String? phone,
    final String? email,
    final String? website,
  }) = _$ContactImpl;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get website;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
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

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  int? get capacity => throw _privateConstructorUsedError;
  String? get priceRange => throw _privateConstructorUsedError;
  List<String>? get features => throw _privateConstructorUsedError;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call({int? capacity, String? priceRange, List<String>? features});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capacity = freezed,
    Object? priceRange = freezed,
    Object? features = freezed,
  }) {
    return _then(
      _value.copyWith(
            capacity: freezed == capacity
                ? _value.capacity
                : capacity // ignore: cast_nullable_to_non_nullable
                      as int?,
            priceRange: freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                      as String?,
            features: freezed == features
                ? _value.features
                : features // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
    _$MetadataImpl value,
    $Res Function(_$MetadataImpl) then,
  ) = __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? capacity, String? priceRange, List<String>? features});
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
    _$MetadataImpl _value,
    $Res Function(_$MetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capacity = freezed,
    Object? priceRange = freezed,
    Object? features = freezed,
  }) {
    return _then(
      _$MetadataImpl(
        capacity: freezed == capacity
            ? _value.capacity
            : capacity // ignore: cast_nullable_to_non_nullable
                  as int?,
        priceRange: freezed == priceRange
            ? _value.priceRange
            : priceRange // ignore: cast_nullable_to_non_nullable
                  as String?,
        features: freezed == features
            ? _value._features
            : features // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl({
    this.capacity,
    this.priceRange,
    final List<String>? features,
  }) : _features = features;

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  final int? capacity;
  @override
  final String? priceRange;
  final List<String>? _features;
  @override
  List<String>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Metadata(capacity: $capacity, priceRange: $priceRange, features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    capacity,
    priceRange,
    const DeepCollectionEquality().hash(_features),
  );

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(this);
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata({
    final int? capacity,
    final String? priceRange,
    final List<String>? features,
  }) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  int? get capacity;
  @override
  String? get priceRange;
  @override
  List<String>? get features;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
