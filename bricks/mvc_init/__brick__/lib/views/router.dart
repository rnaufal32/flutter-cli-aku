import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.adaptive(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: MainRoute.page, initial: true),
  ];

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple(
      (resolver, router) {
        final user = FirebaseAuth.instance.currentUser;

        if (user != null || resolver.route.name == SignInRoute.name) {
          resolver.next();
        } else {
          resolver.redirect(SignInRoute(onSigned: (logged) {
            resolver.resolveNext(logged, reevaluateNext: false);
          }));
        }
      },
    ),
    // add more guards here
  ];
}

final appRouterProvider = Provider((ref) => AppRouter());
