import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/models/user_model.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const AuthResponseModel._();

  const factory AuthResponseModel.signIn({
    required bool success,
    String? message,
    UserModel? data,
    String? token,
  }) = SignInResponse;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
