import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: AuthRouter.page, children: [
//       AutoRoute(page: SignInRoute.page, path: ''),
    ]),
    AutoRoute(
      page: MainRouter.page,
      children: [
        
      ],
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

