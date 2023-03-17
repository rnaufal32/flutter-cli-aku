import 'package:hooks_riverpod/hooks_riverpod.dart';

class {{repository_name.pascalCase()}}RemoteDatasource {}

final {{repository_name.camelCase()}}RemoteDatasourceProvider = Provider.autoDispose((ref) => {{repository_name.pascalCase()}}RemoteDatasource());