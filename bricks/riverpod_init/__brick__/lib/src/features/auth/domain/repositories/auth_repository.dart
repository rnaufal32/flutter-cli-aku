import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/models/auth_response_model.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/models/user_model.dart';

import '../../../../helper/repository.dart';
import '../../data/repositories/auth_repository.dart';
import '../../data/datasource/local/auth_local_datasource.dart';
import '../../data/datasource/remote/auth_remote_datasource.dart';

class AuthRepositoryImpl with RepositoryDefaultCall implements AuthRepository {
  final AuthLocalDatasource localDatasource;
  final AuthRemoteDatasource remoteDatasource;

  AuthRepositoryImpl(this.localDatasource, this.remoteDatasource);

  @override
  Future<SignInResponse> signIn(Map<String, dynamic> body) async {
    return await call(remoteDatasource.signIn(body));
  }

  @override
  UserModel getUser() => localDatasource.getUser();

  @override
  Future<void> saveUser(UserModel data) async {
    await localDatasource.saveUser(data);
  }
}

final authRepositoryProvider = Provider.autoDispose((ref) => AuthRepositoryImpl(
      ref.watch(authLocalDatasourceProvider),
      ref.watch(authRemoteDatasourceProvider),
    ));
