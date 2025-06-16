// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_interest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInterest _$UserInterestFromJson(Map<String, dynamic> json) => UserInterest(
  id: json['id'] as String,
  userId: json['userId'] as String,
  interest: json['interest'] as String,
  category: json['category'] as String,
  isCustom: json['isCustom'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$UserInterestToJson(UserInterest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'interest': instance.interest,
      'category': instance.category,
      'isCustom': instance.isCustom,
      'createdAt': instance.createdAt.toIso8601String(),
    };
