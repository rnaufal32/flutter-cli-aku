import 'package:hooks_riverpod/hooks_riverpod.dart';

class {{repository_name.pascalCase()}}LocalDatasource {}

final {{repository_name.camelCase()}}LocalDatasourceProvider = Provider.autoDispose((ref) => {{repository_name.pascalCase()}}LocalDatasource());