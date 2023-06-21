import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/{{feature_name.snakeCase()}}_repository.dart';
import '../repositories/{{feature_name.snakeCase()}}_repository.dart';

class {{use_case_name.pascalCase()}}UseCase {
  final {{feature_name.pascalCase()}}Repository repository;

  {{use_case_name.pascalCase()}}UseCase(this.repository);

}

final {{use_case_name.camelCase()}}UseCaseProvider = Provider.autoDispose(
    (ref) => {{use_case_name.pascalCase()}}UseCase(ref.watch({{feature_name.camelCase()}}RepositoryProvider)));
