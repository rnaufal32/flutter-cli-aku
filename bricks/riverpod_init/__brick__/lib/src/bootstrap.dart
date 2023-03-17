import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/config/providers.dart'
    as providers;

Future<ProviderContainer> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer(
    overrides: [],
    observers: [],
  );

  await providers.initializeProviders(container);

  return container;
}
