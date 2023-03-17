import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{app_name.snakeCase()}}/src/config/strings.dart';
import 'package:{{app_name.snakeCase()}}/src/router/router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class {{app_name.pascalCase()}}App extends ConsumerWidget {
  const {{app_name.pascalCase()}}App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final authState = ref.watch(authStateProvider);

    return ReactiveFormConfig(
      validationMessages: {
        ValidationMessage.required: (error) => 'Harap diisi',
      },
      child: MaterialApp.router(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        builder: (context, child) => GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: child,
        ),
        routerDelegate: AutoRouterDelegate.declarative(
          router,
          routes: (handler) => [
            authState.maybeWhen(
              orElse: () => const SplashRoute(),
              data: (data) => data != null
                  ? const MainRouter()
                  : const AuthRouter(),
            ),
          ],
        ),
        routeInformationParser: router.defaultRouteParser(),
        theme: ThemeData.light(useMaterial3: true).copyWith(
          colorScheme: const ColorScheme.light(
            primary: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            surfaceTintColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
          ),
        ),
      ),
    );
  }
}
