import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:mountoya_courier/config/strings.dart';
import 'package:mountoya_courier/controller/auth_provider.dart';
import 'package:mountoya_courier/services/fcm/fcm.dart';

final httpServiceProvider = Provider.autoDispose((ref) {
  final dio = Dio(BaseOptions(baseUrl: AppStrings.baseUrl));

  dio.options.contentType = Headers.jsonContentType;

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (request, handler) async {
      final token = await ref.read(fcmToken.future);
      final authToken = await ref.read(firebaseAuthTokenProvider.future);

      request.headers = {
        ...request.headers,
        'Accept': 'application/json',
        'Authorization': 'Bearer $authToken',
        'x-device-token': '$token',
      };

      Logger().d(request.headers);

      if (request.method != 'POST') {
        return handler.next(request);
      }

      if (request.data != null) {
        if (request.data is Map) {
          request.data = {
            ...request.data,
            'appVersion': AppStrings.appVersion,
          };
        }
      } else {
        request.data = {
          'appVersion': AppStrings.appVersion,
        };
      }

      if (kDebugMode) {
        var debug = {
          'uri': request.uri,
          'headers': request.headers,
        };

        if (request.data is FormData) {
          final data = request.data as FormData;
          debug['data'] = {
            for (final item in data.fields) item.key: item.value,
            for (final item in data.files) item.key: item.value,
          };
        } else {
          debug['data'] = request.data;
        }

        Logger().w(debug);
      }

      return handler.next(request);
    },
    onError: (e, handler) {
      if (kDebugMode) {
        Logger().e(e.message, error: e.error, stackTrace: e.stackTrace);
      }
      return handler.next(e);
    },
    onResponse: (e, handler) {
      if (kDebugMode) {
        Logger().d({
          'uri': e.requestOptions.uri,
          'body': e.data,
        });
      }
      return handler.next(e);
    },
  ));
  return dio;
});
