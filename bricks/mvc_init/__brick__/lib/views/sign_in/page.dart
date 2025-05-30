import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SignInPage extends HookConsumerWidget {
  final void Function(bool success) onSigned;
  const SignInPage({
    super.key,
    required this.onSigned,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold();
  }
}
