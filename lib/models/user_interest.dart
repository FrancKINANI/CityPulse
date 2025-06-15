import 'package:json_annotation/json_annotation.dart';

part 'user_interest.g.dart';

@JsonSerializable()
class UserInterest {
  final String id;
  final String userId;
  final String interest;
  final String category;
  final bool isCustom;
  final DateTime createdAt;

  UserInterest({
    required this.id,
    required this.userId,
    required this.interest,
    required this.category,
    required this.isCustom,
    required this.createdAt,
  });

  factory UserInterest.fromJson(Map<String, dynamic> json) => _$UserInterestFromJson(json);
  Map<String, dynamic> toJson() => _$UserInterestToJson(this);
}
