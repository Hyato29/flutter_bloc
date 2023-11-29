import 'dart:convert';

RegisterResponseModel registerResponseModelFromJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) =>
    json.encode(data.toJson());

class RegisterResponseModel {
  bool success;
  String message;
  Data data;

  RegisterResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      RegisterResponseModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  String name;
  dynamic amountUser;
  String email;
  String token;

  Data({
    required this.name,
    required this.amountUser,
    required this.email,
    required this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        amountUser: json["amount_user"],
        email: json["email"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "amount_user": amountUser,
        "email": email,
        "token": token,
      };
}
