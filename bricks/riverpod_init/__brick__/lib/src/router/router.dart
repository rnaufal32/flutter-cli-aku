import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/presentation/splash/page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      name: 'AuthRouter',
      page: EmptyRouterPage,
      children: [
        // SIGNIN PAGE
        // AutoRoute(page: SignInPage),
        // SIGNUP PAGE
        // AutoRoute(page: SignUpPage),
      ],
    ),
    AutoRoute(
      name: 'MainRouter',
      page: EmptyRouterPage,
      children: [
        // MAIN PAGE
        // AutoRoute(page: MainPage, initial: true),
      ],
    ),
    AutoRoute(page: SplashPage),
  ],
)
class AppRouter extends _$AppRouter {}

final routerProvider = Provider.autoDispose((ref) => AppRouter());
