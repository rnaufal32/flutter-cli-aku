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

class HandleFailureWidget extends StatelessWidget {
  
  final Object? error;
  
  const HandleFailureWidget({super.key, required this.error});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// TODO IMG ERROR
          /// TODO TITLE
          /// TODO MESSAGE
        ],
      ),
    );
  }
}
