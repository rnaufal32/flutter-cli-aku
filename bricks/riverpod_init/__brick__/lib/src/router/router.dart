import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter implements AutoRouteGuard {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: SignInRoute.page,
    AutoRoute(
      page: MainRouter.page,
      initial: true,
      children: [],
    ),
  ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null || resolver.route.name == SignInRoute.name) {
      resolver.next();
    } else {
      resolver.redirect(SignInRoute(onSigned: (logged) {
        resolver.resolveNext(logged, reevaluateNext: false);
      }));
    }
  }
}

@RoutePage(name: 'MainRouter')
class MainPage extends AutoRouter {
  const MainPage({super.key});
}

final appRouterProvider = Provider((ref) => AppRouter());
