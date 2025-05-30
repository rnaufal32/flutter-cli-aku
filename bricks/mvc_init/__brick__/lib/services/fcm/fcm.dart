import 'dart:io';

import 'package:fcm_config/fcm_config.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final fcmToken = FutureProvider((_) async {
  if (kDebugMode && Platform.isIOS) {
    return 'Token';
  }
  final token = await FCMConfig.instance.messaging.getToken();
  return token ?? 'TOKEN';
});

final fcmPermissionProvider = Provider.autoDispose((_) async {
  await FirebaseMessaging.instance.requestPermission();
});
