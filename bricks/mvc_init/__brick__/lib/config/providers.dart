import 'dart:async';

import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mountoya_courier/firebase_options.dart';

Future<ProviderContainer> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Hive.initFlutter();
  await Hive.openBox('user');

  final container = ProviderContainer(
    overrides: [],
    observers: [],
  );

  await Jiffy.setLocale('id');

  await FCMConfig.instance.init(
    defaultAndroidForegroundIcon:
        '@mipmap/ic_launcher', //default is @mipmap/ic_launcher
    defaultAndroidChannel: AndroidNotificationChannel(
      'high_importance_channel', // same as value from android setup
      'Default Notification',
      importance: Importance.high,
      sound: RawResourceAndroidNotificationSound('alarm'),
    ),
  );

  await FCMConfig.instance.messaging.requestPermission();

  return container;
}
