import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  Data? data;
  bool? status;
  int? code;

  SignUpResponse({this.message, this.data, this.status, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

}

@JsonSerializable()
class Data {
  String? token;
  String? username;

  Data({this.token, this.username});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}
