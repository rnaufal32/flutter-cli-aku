import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:katana_router/katana_router.dart';

part '{{page_name.snakeCase()}}.page.dart';

@PagePath('/{{page_name.paramCase()}}')
class {{page_name.pascalCase()}}Page extends HookConsumerWidget {
  const {{page_name.pascalCase()}}Page({super.key});

  @pageRouteQuery
  static const query = _${{page_name.pascalCase()}}PageQuery();

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
