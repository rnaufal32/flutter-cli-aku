import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/strings.dart';
import '../../../../helper/theme.dart';

Future<void> showLoading(BuildContext context) async {
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => WillPopScope(
      onWillPop: () => Future.value(false),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    ),
  );
}

Future<bool?> showAlertDialog(BuildContext context, String message) async {
  return await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      title: const Text(AppStrings.appName),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => context.popRoute(true),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}

Future<bool?> showDefaultFailuresDialog(BuildContext context, String message,
    [void Function()? callback]) async {
  return await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      title: const Text(AppStrings.appName),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => context.popRoute(),
          child: const Text('Tutup'),
        ),
        TextButton(
          onPressed: () => context.popRoute(true),
          child: const Text('Coba Lagi'),
        ),
      ],
    ),
  );
}

Future<bool?> showConfirmDialog(
  BuildContext context, {
  required String message,
  String negativeBtn = 'Tidak',
  String positiveBtn = 'Ya',
}) async {
  return await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      title: const Text(AppStrings.appName),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => context.popRoute(),
          child: Text(negativeBtn),
        ),
        TextButton(
          onPressed: () => context.popRoute(true),
          child: Text(positiveBtn),
        ),
      ],
    ),
  );
}
