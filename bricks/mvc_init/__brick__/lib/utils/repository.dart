import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:mountoya_courier/config/failures.dart';

mixin RepositoryDefaultCall {
  Future<T> call<T>(Future<T> api) async {
    try {
      return await api;
    } catch (e, s) {
      if (Platform.environment.containsKey('FLUTTER_TEST') || kDebugMode) {
        Logger().e('message', error: e, stackTrace: s);
      } else {}
      throw DefaultFailures();
    }
  }
}
