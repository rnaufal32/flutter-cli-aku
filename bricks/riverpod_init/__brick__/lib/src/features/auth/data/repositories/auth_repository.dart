import 'package:{{app_name.snakeCase()}}/src/features/auth/data/models/auth_response_model.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/models/user_model.dart';

abstract class AuthRepository {
  Future<SignInResponse> signIn(Map<String, dynamic> body);
  UserModel getUser();
  Future<void> saveUser(UserModel data);
}
