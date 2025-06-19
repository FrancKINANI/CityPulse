import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Convertisseur pour le type Timestamp de Firestore
/// Permet de sérialiser/désérialiser les timestamps entre Firestore et JSON

class TimestampConverter implements JsonConverter<Timestamp, Map<String, dynamic>> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Map<String, dynamic> json) {
    final seconds = json['seconds'] as int?;
    final nanoseconds = json['nanoseconds'] as int?;
    
    if (seconds == null || nanoseconds == null) {
      throw FormatException('Invalid timestamp format: $json');
    }
    
    return Timestamp(seconds, nanoseconds);
  }

  @override
  Map<String, dynamic> toJson(Timestamp timestamp) {
    return {
      'seconds': timestamp.seconds,
      'nanoseconds': timestamp.nanoseconds,
    };
  }
}
