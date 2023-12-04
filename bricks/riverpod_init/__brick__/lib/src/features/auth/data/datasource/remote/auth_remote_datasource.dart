import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dio/dio.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/models/auth_response_model.dart';
import 'package:{{app_name.snakeCase()}}/src/service/http/http.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class AuthRemoteDatasource {
  factory AuthRemoteDatasource(Dio dio, {String baseUrl}) =
      _AuthRemoteDatasource;

  @POST('auth/forklift')
  Future<SignInResponse> signIn(@Body() Map<String, dynamic> body);
}

final authRemoteDatasourceProvider = Provider.autoDispose(
    (ref) => AuthRemoteDatasource(ref.watch(httpServiceProvider)));
