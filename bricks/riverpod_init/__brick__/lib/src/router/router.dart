import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: AuthRouter.page, children: [
      AutoRoute(page: SignInRoute.page, path: '', initial: true),
    ]),
    AutoRoute(
      page: MainRouter.page,
      children: [],
    ),
  ];
}

@RoutePage(name: 'AuthRouter')
class AuthPage extends AutoRouter {
  const AuthPage({super.key});
}

@RoutePage(name: 'MainRouter')
class MainPage extends AutoRouter {
  const MainPage({super.key});
}

final appRouterProvider = Provider((ref) => AppRouter());
