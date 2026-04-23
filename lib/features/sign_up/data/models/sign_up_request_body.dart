// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'sign_up_request_body.g.dart';

// @JsonSerializable()
// class SignUpRequestBody {
//   final String email;
//   final String name;
//   final int phone;
//   final int gender;
//   @JsonKey(name: "password")
//   final String password;
//   @JsonKey(name: "password_confirmation")
//   final String passwordConfirmation;
//   SignUpRequestBody({
//     required this.email,
//     required this.password,
//     required this.name,
//     required this.phone,
//     required this.gender,
//     required this.passwordConfirmation,
//   });
//   Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
// }
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String email;
  final String name;
  final String phone; // حولناه لـ String عشان الأصفار والـ Validation
  final int gender;   // 0 للرجل، 1 للست (حسب الـ API)
  
  final String password;
  
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  SignUpRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    required this.gender,
    required this.passwordConfirmation,
  });

  // لازم تضيف دي عشان الـ Build Runner يشتغل صح
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}