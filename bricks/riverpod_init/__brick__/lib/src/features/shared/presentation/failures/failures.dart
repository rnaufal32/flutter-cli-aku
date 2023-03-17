import 'package:flutter/material.dart';

import '../../../../config/failures.dart';
import '../dialogs/dialogs.dart';

Future<bool?> handleFailureWidget({
  required BuildContext context,
  required Object? error,
}) async {
  if (error is DefaultFailures) {
    return await showDefaultFailuresDialog(context, error.message);
  }

  if (error is HandledFailures) {
    await showAlertDialog(context, error.message);
  }

  return null;
}
