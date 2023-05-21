import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    
        AutoRoute(page: AnggotaFormRoute.page),
      ];
}

final routerProvider = Provider.autoDispose((ref) => AppRouter());
