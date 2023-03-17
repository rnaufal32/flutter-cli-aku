import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/{{repository_name.snakeCase()}}_repository.dart';
import '../../data/datasource/local/{{repository_name.snakeCase()}}_local_datasource.dart';
import '../../data/datasource/remote/{{repository_name.snakeCase()}}_remote_datasource.dart';

class {{repository_name.pascalCase()}}RepositoryImpl implements {{repository_name.pascalCase()}}Repository {
  final {{repository_name.pascalCase()}}LocalDatasource localDatasource;
  final {{repository_name.pascalCase()}}RemoteDatasource remoteDatasource;

  {{repository_name.pascalCase()}}RepositoryImpl(this.localDatasource, this.remoteDatasource);
}

final {{repository_name.camelCase()}}RepositoryProvider = Provider.autoDispose((ref) => {{repository_name.pascalCase()}}RepositoryImpl(
  ref.watch({{repository_name.camelCase()}}LocalDatasourceProvider),
  ref.watch({{repository_name.camelCase()}}RemoteDatasourceProvider),
));