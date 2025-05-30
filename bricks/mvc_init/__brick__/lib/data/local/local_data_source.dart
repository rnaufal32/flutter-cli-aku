import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocalDatasource {}

final localDatasourceProvider =
    Provider.autoDispose((ref) => LocalDatasource());
