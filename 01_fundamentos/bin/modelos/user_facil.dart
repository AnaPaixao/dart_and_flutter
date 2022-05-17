// import 'dart:convert';

// import 'package:dart_fundamentos/modelos/user_types_facil.dart';

// class UserFacil {
//   final String id;
//   final String name;
//   final String userName;
//   List<UserTypesFacil> userTypes;
//   UserFacil({
//     required this.id,
//     required this.name,
//     required this.userName,
//     required this.userTypes,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'username': userName,
//       'userTypes': userTypes.map((x) => x.toMap()).toList(),
//     };
//   }

//   factory UserFacil.fromMap(Map<String, dynamic> map) {
//     return UserFacil(
//       id: map['id'] ?? '',
//       name: map['name'] ?? '',
//       userName: map['username'] ?? '',
//       userTypes: List<UserTypesFacil>.from(
//           map['user_types']?.map((x) => UserTypesFacil.fromMap(x))),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory UserFacil.fromJson(String source) =>
//       UserFacil.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'UserFacil(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
//   }
// }
