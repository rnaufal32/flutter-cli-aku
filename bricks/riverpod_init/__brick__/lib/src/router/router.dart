import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(
      page: MainRouter.page,
      initial: true,
      children: [],
    ),
  ];
}

@RoutePage(name: 'MainRouter')
class MainPage extends AutoRouter {
  const MainPage({super.key});
}

final appRouterProvider = Provider((ref) => AppRouter());
