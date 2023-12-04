import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool isLoading;
  final ButtonStyle? style;

  const FilledButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? const SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(),
            )
          : Text(label),
    );
  }
}
