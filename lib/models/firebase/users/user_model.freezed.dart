// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get lastLogin => throw _privateConstructorUsedError;
  Preferences get preferences => throw _privateConstructorUsedError;
  Stats get stats => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String id,
    String email,
    String? username,
    String? photoUrl,
    String role,
    @TimestampConverter() Timestamp createdAt,
    @TimestampConverter() Timestamp lastLogin,
    Preferences preferences,
    Stats stats,
  });

  $PreferencesCopyWith<$Res> get preferences;
  $StatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? preferences = null,
    Object? stats = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String?,
            photoUrl: freezed == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
            lastLogin: null == lastLogin
                ? _value.lastLogin
                : lastLogin // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
            preferences: null == preferences
                ? _value.preferences
                : preferences // ignore: cast_nullable_to_non_nullable
                      as Preferences,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as Stats,
          )
          as $Val,
    );
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferencesCopyWith<$Res> get preferences {
    return $PreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatsCopyWith<$Res> get stats {
    return $StatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String email,
    String? username,
    String? photoUrl,
    String role,
    @TimestampConverter() Timestamp createdAt,
    @TimestampConverter() Timestamp lastLogin,
    Preferences preferences,
    Stats stats,
  });

  @override
  $PreferencesCopyWith<$Res> get preferences;
  @override
  $StatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? preferences = null,
    Object? stats = null,
  }) {
    return _then(
      _$UserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoUrl: freezed == photoUrl
            ? _value.photoUrl
            : photoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
        lastLogin: null == lastLogin
            ? _value.lastLogin
            : lastLogin // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
        preferences: null == preferences
            ? _value.preferences
            : preferences // ignore: cast_nullable_to_non_nullable
                  as Preferences,
        stats: null == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as Stats,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    required this.id,
    required this.email,
    this.username,
    this.photoUrl,
    required this.role,
    @TimestampConverter() required this.createdAt,
    @TimestampConverter() required this.lastLogin,
    required this.preferences,
    required this.stats,
  });

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String? username;
  @override
  final String? photoUrl;
  @override
  final String role;
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  @TimestampConverter()
  final Timestamp lastLogin;
  @override
  final Preferences preferences;
  @override
  final Stats stats;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, username: $username, photoUrl: $photoUrl, role: $role, createdAt: $createdAt, lastLogin: $lastLogin, preferences: $preferences, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    username,
    photoUrl,
    role,
    createdAt,
    lastLogin,
    preferences,
    stats,
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    required final String id,
    required final String email,
    final String? username,
    final String? photoUrl,
    required final String role,
    @TimestampConverter() required final Timestamp createdAt,
    @TimestampConverter() required final Timestamp lastLogin,
    required final Preferences preferences,
    required final Stats stats,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String? get username;
  @override
  String? get photoUrl;
  @override
  String get role;
  @override
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  @TimestampConverter()
  Timestamp get lastLogin;
  @override
  Preferences get preferences;
  @override
  Stats get stats;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Preferences _$PreferencesFromJson(Map<String, dynamic> json) {
  return _Preferences.fromJson(json);
}

/// @nodoc
mixin _$Preferences {
  String get theme => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  bool get notifications => throw _privateConstructorUsedError;

  /// Serializes this Preferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
    Preferences value,
    $Res Function(Preferences) then,
  ) = _$PreferencesCopyWithImpl<$Res, Preferences>;
  @useResult
  $Res call({String theme, String language, bool notifications});
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res, $Val extends Preferences>
    implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? language = null,
    Object? notifications = null,
  }) {
    return _then(
      _value.copyWith(
            theme: null == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                      as String,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String,
            notifications: null == notifications
                ? _value.notifications
                : notifications // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PreferencesImplCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$$PreferencesImplCopyWith(
    _$PreferencesImpl value,
    $Res Function(_$PreferencesImpl) then,
  ) = __$$PreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String theme, String language, bool notifications});
}

/// @nodoc
class __$$PreferencesImplCopyWithImpl<$Res>
    extends _$PreferencesCopyWithImpl<$Res, _$PreferencesImpl>
    implements _$$PreferencesImplCopyWith<$Res> {
  __$$PreferencesImplCopyWithImpl(
    _$PreferencesImpl _value,
    $Res Function(_$PreferencesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? language = null,
    Object? notifications = null,
  }) {
    return _then(
      _$PreferencesImpl(
        theme: null == theme
            ? _value.theme
            : theme // ignore: cast_nullable_to_non_nullable
                  as String,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
        notifications: null == notifications
            ? _value.notifications
            : notifications // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesImpl implements _Preferences {
  const _$PreferencesImpl({
    required this.theme,
    required this.language,
    required this.notifications,
  });

  factory _$PreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesImplFromJson(json);

  @override
  final String theme;
  @override
  final String language;
  @override
  final bool notifications;

  @override
  String toString() {
    return 'Preferences(theme: $theme, language: $language, notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, theme, language, notifications);

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      __$$PreferencesImplCopyWithImpl<_$PreferencesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesImplToJson(this);
  }
}

abstract class _Preferences implements Preferences {
  const factory _Preferences({
    required final String theme,
    required final String language,
    required final bool notifications,
  }) = _$PreferencesImpl;

  factory _Preferences.fromJson(Map<String, dynamic> json) =
      _$PreferencesImpl.fromJson;

  @override
  String get theme;
  @override
  String get language;
  @override
  bool get notifications;

  /// Create a copy of Preferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  int get placesVisited => throw _privateConstructorUsedError;
  int get toursCreated => throw _privateConstructorUsedError;
  int get ratingsGiven => throw _privateConstructorUsedError;

  /// Serializes this Stats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call({int placesVisited, int toursCreated, int ratingsGiven});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placesVisited = null,
    Object? toursCreated = null,
    Object? ratingsGiven = null,
  }) {
    return _then(
      _value.copyWith(
            placesVisited: null == placesVisited
                ? _value.placesVisited
                : placesVisited // ignore: cast_nullable_to_non_nullable
                      as int,
            toursCreated: null == toursCreated
                ? _value.toursCreated
                : toursCreated // ignore: cast_nullable_to_non_nullable
                      as int,
            ratingsGiven: null == ratingsGiven
                ? _value.ratingsGiven
                : ratingsGiven // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StatsImplCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$StatsImplCopyWith(
    _$StatsImpl value,
    $Res Function(_$StatsImpl) then,
  ) = __$$StatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int placesVisited, int toursCreated, int ratingsGiven});
}

/// @nodoc
class __$$StatsImplCopyWithImpl<$Res>
    extends _$StatsCopyWithImpl<$Res, _$StatsImpl>
    implements _$$StatsImplCopyWith<$Res> {
  __$$StatsImplCopyWithImpl(
    _$StatsImpl _value,
    $Res Function(_$StatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Stats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placesVisited = null,
    Object? toursCreated = null,
    Object? ratingsGiven = null,
  }) {
    return _then(
      _$StatsImpl(
        placesVisited: null == placesVisited
            ? _value.placesVisited
            : placesVisited // ignore: cast_nullable_to_non_nullable
                  as int,
        toursCreated: null == toursCreated
            ? _value.toursCreated
            : toursCreated // ignore: cast_nullable_to_non_nullable
                  as int,
        ratingsGiven: null == ratingsGiven
            ? _value.ratingsGiven
            : ratingsGiven // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsImpl implements _Stats {
  const _$StatsImpl({
    required this.placesVisited,
    required this.toursCreated,
    required this.ratingsGiven,
  });

  factory _$StatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsImplFromJson(json);

  @override
  final int placesVisited;
  @override
  final int toursCreated;
  @override
  final int ratingsGiven;

  @override
  String toString() {
    return 'Stats(placesVisited: $placesVisited, toursCreated: $toursCreated, ratingsGiven: $ratingsGiven)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsImpl &&
            (identical(other.placesVisited, placesVisited) ||
                other.placesVisited == placesVisited) &&
            (identical(other.toursCreated, toursCreated) ||
                other.toursCreated == toursCreated) &&
            (identical(other.ratingsGiven, ratingsGiven) ||
                other.ratingsGiven == ratingsGiven));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placesVisited, toursCreated, ratingsGiven);

  /// Create a copy of Stats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      __$$StatsImplCopyWithImpl<_$StatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsImplToJson(this);
  }
}

abstract class _Stats implements Stats {
  const factory _Stats({
    required final int placesVisited,
    required final int toursCreated,
    required final int ratingsGiven,
  }) = _$StatsImpl;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$StatsImpl.fromJson;

  @override
  int get placesVisited;
  @override
  int get toursCreated;
  @override
  int get ratingsGiven;

  /// Create a copy of Stats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
