import 'dart:convert';

class RegisterModel {
  final String name;
  final String email;
  final String password;
  final String confirm_password;

  RegisterModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.confirm_password});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'confirm_password': confirm_password
    };
  }

  factory RegisterModel.fromMap(Map<String, dynamic> toMap) {
    return RegisterModel(
        name: toMap['name'],
        email: toMap['email'],
        password: toMap['password'],
        confirm_password: toMap['confirm_password']);
  }

  String toJson() => jsonEncode(toMap());

  factory RegisterModel.fromJson(String source) =>
      RegisterModel.fromJson(jsonDecode(source));
}
