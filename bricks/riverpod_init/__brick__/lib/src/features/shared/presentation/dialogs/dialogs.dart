import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../config/strings.dart';

Future<void> showLoading(BuildContext context) async {
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => const PopScope(
      canPop: false,
      child: Center(
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
          onPressed: () => context.maybePop(true),
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
          onPressed: () => context.maybePop(),
          child: const Text('Tutup'),
        ),
        TextButton(
          onPressed: () => context.maybePop(true),
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
          onPressed: () => context.maybePop(),
          child: Text(negativeBtn),
        ),
        TextButton(
          onPressed: () => context.maybePop(true),
          child: Text(positiveBtn),
        ),
      ],
    ),
  );
}
