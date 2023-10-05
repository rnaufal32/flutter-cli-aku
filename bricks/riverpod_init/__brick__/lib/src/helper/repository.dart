import 'dart:io';

import 'package:bugsnag_flutter/bugsnag_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import '../config/failures.dart';

mixin RepositoryDefaultCall {
  Future<T> call<T>(Future<T> api) async {
    try {
      return await api;
    } catch (e, s) {
      if (Platform.environment.containsKey('FLUTTER_TEST') || kDebugMode) {
        Logger().e('message', error: e, stackTrace: s);
      } else {
        bugsnag.notify(e, s);
      }
      throw DefaultFailures();
    }
  }
}
