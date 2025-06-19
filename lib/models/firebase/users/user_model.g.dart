// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String?,
      photoUrl: json['photoUrl'] as String?,
      role: json['role'] as String,
      createdAt: const TimestampConverter().fromJson(
        json['createdAt'] as Map<String, dynamic>,
      ),
      lastLogin: const TimestampConverter().fromJson(
        json['lastLogin'] as Map<String, dynamic>,
      ),
      preferences: Preferences.fromJson(
        json['preferences'] as Map<String, dynamic>,
      ),
      stats: Stats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'photoUrl': instance.photoUrl,
      'role': instance.role,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'lastLogin': const TimestampConverter().toJson(instance.lastLogin),
      'preferences': instance.preferences,
      'stats': instance.stats,
    };

_$PreferencesImpl _$$PreferencesImplFromJson(Map<String, dynamic> json) =>
    _$PreferencesImpl(
      theme: json['theme'] as String,
      language: json['language'] as String,
      notifications: json['notifications'] as bool,
    );

Map<String, dynamic> _$$PreferencesImplToJson(_$PreferencesImpl instance) =>
    <String, dynamic>{
      'theme': instance.theme,
      'language': instance.language,
      'notifications': instance.notifications,
    };

_$StatsImpl _$$StatsImplFromJson(Map<String, dynamic> json) => _$StatsImpl(
  placesVisited: (json['placesVisited'] as num).toInt(),
  toursCreated: (json['toursCreated'] as num).toInt(),
  ratingsGiven: (json['ratingsGiven'] as num).toInt(),
);

Map<String, dynamic> _$$StatsImplToJson(_$StatsImpl instance) =>
    <String, dynamic>{
      'placesVisited': instance.placesVisited,
      'toursCreated': instance.toursCreated,
      'ratingsGiven': instance.ratingsGiven,
    };
