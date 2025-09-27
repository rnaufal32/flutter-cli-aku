import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/bootstrap.dart';
import 'package:{{app_name.snakeCase()}}/src/{{app_name.snakeCase()}}.dart';
import 'package:scaled_app/scaled_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

void main() async {
  await runZonedGuarded(
    () async {
      ScaledWidgetsFlutterBinding.ensureInitialized(
        scaleFactor: (deviceSize) {
          // screen width used in your UI design
          const double widthOfDesign = 420;
          return deviceSize.width / widthOfDesign;
        },
      );
      
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
            title: const Text('Error Occurred'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.red,
                  size: 80,
                ),
                const SizedBox(height: 24),
                Text(
                  'Oops! Something went wrong.',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  details.exception.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      };
    },
    (err, stack) {
      Logger().e('Uncaught exception', error: err, stackTrace: stack);
    },
  );
}
