class UserModel {
  final String id;
  final String name;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime verifiedAt;

  UserModel({
    required this.email,
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.verifiedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      createdAt: DateTime.parse(json['created_at']),
      email: json['email'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      updatedAt: DateTime.parse(json['updated_at']),
      verifiedAt: DateTime.parse(json['email_verified_at']),
    );
  }
}
