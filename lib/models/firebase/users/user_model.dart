import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:citypulse/models/firebase/converters/timestamp_converter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    String? username,
    String? photoUrl,
    required String role,
    @TimestampConverter() required Timestamp createdAt,
    @TimestampConverter() required Timestamp lastLogin,
    required Preferences preferences,
    required Stats stats,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => 
      _$UserModelFromJson(json);
}

@freezed
class Preferences with _$Preferences {
  const factory Preferences({
    required String theme,
    required String language,
    required bool notifications,
  }) = _Preferences;

  factory Preferences.fromJson(Map<String, dynamic> json) => 
      _$PreferencesFromJson(json);
}

@freezed
class Stats with _$Stats {
  const factory Stats({
    required int placesVisited,
    required int toursCreated,
    required int ratingsGiven,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => 
      _$StatsFromJson(json);
}
