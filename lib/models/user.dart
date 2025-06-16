class User {
  final String id;
  String name;
  String email;
  String? photoUrl; // Renamed from profilePicture to match the service
  String? bio;
  String? interests;
  List<String> createdTours;
  List<String> savedTours;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.photoUrl,
    this.bio,
    this.interests,
    List<String>? createdTours,
    List<String>? savedTours,
  }) : createdTours = createdTours ?? [],
       savedTours = savedTours ?? [];

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String?,
      bio: json['bio'] as String?,
      interests: json['interests'] as String?,
      createdTours: List<String>.from(json['createdTours'] ?? []),
      savedTours: List<String>.from(json['savedTours'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'photoUrl': photoUrl,
      'bio': bio,
      'interests': interests,
      'createdTours': createdTours,
      'savedTours': savedTours,
    };
  }
}
