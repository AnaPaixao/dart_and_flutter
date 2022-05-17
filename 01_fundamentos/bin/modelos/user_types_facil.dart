import 'dart:convert';

class UserTypesFacil {
  final String id;
  final String userId;
  final String name;
  UserTypesFacil({
    required this.id,
    required this.userId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypesFacil.fromMap(Map<String, dynamic> map) {
    return UserTypesFacil(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypesFacil.fromJson(String source) =>
      UserTypesFacil.fromMap(json.decode(source));

  @override
  String toString() => 'UserTypesFacil(id: $id, userId: $userId, name: $name)';
}
