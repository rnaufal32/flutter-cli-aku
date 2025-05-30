import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mountoya_courier/data/local/local_data_source.dart';
import 'package:mountoya_courier/data/remote/remote_data_source.dart';
import 'package:mountoya_courier/models/response_model.dart';
import 'package:mountoya_courier/utils/repository.dart';

class Repository with RepositoryDefaultCall {
  final RemoteDatasource remoteDatasource;
  final LocalDatasource localDatasource;

  Repository(
    this.remoteDatasource,
    this.localDatasource,
  );

  // SAMPLE
  Future<DefaultResponse> signIn(Map<String, dynamic> body) async {
    return await call(remoteDatasource.signIn(body));
  }
}

final repositoryProvider = Provider.autoDispose((ref) => Repository(
      ref.watch(remoteDatasourceProvider),
      ref.watch(localDatasourceProvider),
    ));
