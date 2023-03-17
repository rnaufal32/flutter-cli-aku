import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/datasource/local/auth_local_datasource.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/datasource/remote/auth_remote_datasource.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/data/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDatasource localDatasource;
  final AuthRemoteDatasource remoteDatasource;

  AuthRepositoryImpl(this.localDatasource, this.remoteDatasource);

  @override
  Stream authStateChanges() {
    // TODO: implement authStateChanges
    throw UnimplementedError();
  }

  @override
  Future getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future saveUser(param) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  // FUNCTION STREAM AUTH STATE CHANGES, SAVE USER AND GET USER
}

final authRepositoryProvider = Provider.autoDispose((ref) => AuthRepositoryImpl(
      ref.watch(authLocalDatasourceProvider),
      ref.watch(authRemoteDatasourceProvider),
    ));
