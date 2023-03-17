import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/bootstrap.dart';
import 'package:{{app_name.snakeCase()}}/src/{{app_name.snakeCase()}}.dart';

void main() async {
  await runZonedGuarded(
    () async {
      runApp(UncontrolledProviderScope(
        container: await bootstrap(),
        child: const {{app_name.pascalCase()}}App(),
      ));

      // * This code will present some error UI if any uncaught exception happens
      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
      };
      ErrorWidget.builder = (FlutterErrorDetails details) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('An error occurred'),
          ),
          body: Center(child: Text(details.toString())),
        );
      };
    },
    (err, stack) {},
  );
}
