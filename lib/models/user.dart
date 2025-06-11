class User {
  final String id;
  final String name;
  final String email;
  String? profilePicture;
  String? bio;
  List<String> createdTours;
  List<String> savedTours;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.profilePicture,
    this.bio,
    List<String>? createdTours,
    List<String>? savedTours,
  }) : createdTours = createdTours ?? [],
       savedTours = savedTours ?? [];

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      profilePicture: json['profilePicture'],
      bio: json['bio'],
      createdTours: List<String>.from(json['createdTours'] ?? []),
      savedTours: List<String>.from(json['savedTours'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePicture': profilePicture,
      'bio': bio,
      'createdTours': createdTours,
      'savedTours': savedTours,
    };
  }
}
