import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#use_retrofit}}
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../services/http/http_service.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class {{repository_name.pascalCase()}}RemoteDatasource {}
  factory {{repository_name.pascalCase()}}RemoteDatasource(Dio dio, {String baseUrl}) =
      _{{repository_name.pascalCase()}}RemoteDatasource;
}

final {{repository_name.camelCase()}}RemoteDatasourceProvider = Provider.autoDispose(
    (ref) => {{repository_name.pascalCase()}}RemoteDatasource(ref.watch(httpServiceProvider)));

{{/use_retrofit}}
{{^use_retrofit}}
class {{repository_name.pascalCase()}}RemoteDatasource {}

final {{repository_name.camelCase()}}RemoteDatasourceProvider = Provider.autoDispose((ref) => {{repository_name.pascalCase()}}RemoteDatasource());
{{/use_retrofit}}
