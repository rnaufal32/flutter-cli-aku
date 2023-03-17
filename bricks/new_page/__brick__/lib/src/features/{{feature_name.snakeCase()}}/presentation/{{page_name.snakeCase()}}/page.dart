import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class {{page_name.pascalCase()}}Page extends ConsumerWidget {
  const {{page_name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{page_name.titleCase()}}'),
      ),
      body: const Center(
        child: Text('Welcome'),
      ),
    );
  }
}
