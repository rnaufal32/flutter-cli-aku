import 'package:flutter/material.dart';
import '../../../config/colors.dart';

enum ButtonSize { normal, small, large }

enum IconPosition { left, right }

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool loading;
  final bool disabled;
  final ButtonSize size;

  const MyButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.loading = false,
    this.disabled = false,
    this.size = ButtonSize.normal,
  }) : super(key: key);

  double getHeight() {
    switch (size) {
      case ButtonSize.small:
        return 32;
      case ButtonSize.large:
        return 56;
      default:
        return 44;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(),
      child: ElevatedButton(
        onPressed: (disabled || loading) ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? MyColors.primary,
          foregroundColor: foregroundColor ?? MyColors.textLight,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
        child: loading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Text(text),
      ),
    );
  }
}

class MySmallButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool loading;
  final bool disabled;

  const MySmallButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.loading = false,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyButton(
      text: text,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      loading: loading,
      disabled: disabled,
      size: ButtonSize.small,
    );
  }
}

class MyLargeButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool loading;
  final bool disabled;

  const MyLargeButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.loading = false,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyButton(
      text: text,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      loading: loading,
      disabled: disabled,
      size: ButtonSize.large,
    );
  }
}

class MyIconButton extends StatelessWidget {
  final String? text;
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool loading;
  final bool disabled;
  final IconPosition iconPosition;

  const MyIconButton({
    Key? key,
    this.text,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.loading = false,
    this.disabled = false,
    this.iconPosition = IconPosition.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (loading) {
      child = const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    } else if (text == null || text!.isEmpty) {
      child = Icon(icon);
    } else {
      child = iconPosition == IconPosition.left
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon),
                const SizedBox(width: 8),
                Text(text!),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(text!),
                const SizedBox(width: 8),
                Icon(icon),
              ],
            );
    }
    return ElevatedButton(
      onPressed: (disabled || loading) ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? MyColors.primary,
        foregroundColor: foregroundColor ?? MyColors.textLight,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
      child: child,
    );
  }
}
