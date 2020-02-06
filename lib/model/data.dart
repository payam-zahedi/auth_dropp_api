// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class DataModel {
  final String status;
  final String statusCode;
  final Message message;
  final List<dynamic> error;
  final Data data;

  DataModel({
    @required this.status,
    @required this.statusCode,
    @required this.message,
    @required this.error,
    @required this.data,
  });

  DataModel copyWith({
    String status,
    String statusCode,
    Message message,
    List<dynamic> error,
    Data data,
  }) =>
      DataModel(
        status: status ?? this.status,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message,
        error: error ?? this.error,
        data: data ?? this.data,
      );

  factory DataModel.fromRawJson(String str) => DataModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    status: json["status"],
    statusCode: json["statusCode"],
    message: Message.fromJson(json["message"]),
    error: List<dynamic>.from(json["error"].map((x) => x)),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "statusCode": statusCode,
    "message": message.toJson(),
    "error": List<dynamic>.from(error.map((x) => x)),
    "data": data.toJson(),
  };
}

class Data {
  final User user;
  final String token;
  final String dataToken;

  Data({
    @required this.user,
    @required this.token,
    @required this.dataToken,
  });

  Data copyWith({
    User user,
    String token,
    String dataToken,
  }) =>
      Data(
        user: user ?? this.user,
        token: token ?? this.token,
        dataToken: dataToken ?? this.dataToken,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    user: User.fromJson(json["user"]),
    token: json["token"],
    dataToken: json["dataToken"],
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "token": token,
    "dataToken": dataToken,
  };
}

class User {
  final String uuid;
  final String username;
  final String phoneNumber;
  final dynamic email;

  User({
    @required this.uuid,
    @required this.username,
    @required this.phoneNumber,
    @required this.email,
  });

  User copyWith({
    String uuid,
    String username,
    String phoneNumber,
    dynamic email,
  }) =>
      User(
        uuid: uuid ?? this.uuid,
        username: username ?? this.username,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    uuid: json["uuid"],
    username: json["username"],
    phoneNumber: json["phoneNumber"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "username": username,
    "phoneNumber": phoneNumber,
    "email": email,
  };
}

class Message {
  final String type;
  final String text;

  Message({
    @required this.type,
    @required this.text,
  });

  Message copyWith({
    String type,
    String text,
  }) =>
      Message(
        type: type ?? this.type,
        text: text ?? this.text,
      );

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    type: json["type"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "text": text,
  };
}