import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mountoya_courier/models/response_model.dart';
import 'package:mountoya_courier/services/http/http.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_data_source.g.dart';

@RestApi()
abstract class RemoteDatasource {
  factory RemoteDatasource(Dio dio, {String baseUrl}) = _RemoteDatasource;

  // SAMPLE GET
  @GET('saldo')
  Future<DefaultResponse> saldo();

  // SAMPLE POST
  @POST('login')
  Future<DefaultResponse> signIn(@Body() Map<String, dynamic> body);
}

final remoteDatasourceProvider = Provider.autoDispose(
    (ref) => RemoteDatasource(ref.watch(httpServiceProvider)));
