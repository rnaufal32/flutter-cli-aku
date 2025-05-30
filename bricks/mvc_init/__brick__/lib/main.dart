import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mountoya_courier/views/mountoya_courier.dart';
import 'package:scaled_app/scaled_app.dart';

import 'config/providers.dart';

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
        child: const MountoyaCourierApp(),
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
