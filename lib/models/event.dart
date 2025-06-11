class Event {
  final String id;
  final String tourId;
  final String placeId;
  final String title;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final int maxParticipants;
  final List<String> participantIds;
  final String status;
  final double price;
  final String currencyCode;
  final Map<String, dynamic> additionalInfo;

  Event({
    required this.id,
    required this.tourId,
    required this.placeId,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.maxParticipants,
    List<String>? participantIds,
    required this.status,
    required this.price,
    required this.currencyCode,
    Map<String, dynamic>? additionalInfo,
  }) : participantIds = participantIds ?? [],
       additionalInfo = additionalInfo ?? {};

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      tourId: json['tourId'],
      placeId: json['placeId'],
      title: json['title'],
      description: json['description'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      maxParticipants: json['maxParticipants'],
      participantIds: List<String>.from(json['participantIds'] ?? []),
      status: json['status'],
      price: json['price'].toDouble(),
      currencyCode: json['currencyCode'],
      additionalInfo: Map<String, dynamic>.from(json['additionalInfo'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tourId': tourId,
      'placeId': placeId,
      'title': title,
      'description': description,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'maxParticipants': maxParticipants,
      'participantIds': participantIds,
      'status': status,
      'price': price,
      'currencyCode': currencyCode,
      'additionalInfo': additionalInfo,
    };
  }

  bool get isUpcoming => startDate.isAfter(DateTime.now());
  bool get isPast => endDate.isBefore(DateTime.now());
  bool get isFull => participantIds.length >= maxParticipants;
  Duration get duration => endDate.difference(startDate);
}
