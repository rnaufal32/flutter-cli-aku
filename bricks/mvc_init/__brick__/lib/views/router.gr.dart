// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:mountoya_courier/views/main/page.dart' as _i1;
import 'package:mountoya_courier/views/sign_in/page.dart' as _i2;

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.MainPage();
    },
  );
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i3.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i4.Key? key,
    required void Function(bool) onSigned,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            onSigned: onSigned,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignInRouteArgs>();
      return _i2.SignInPage(
        key: args.key,
        onSigned: args.onSigned,
      );
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.onSigned,
  });

  final _i4.Key? key;

  final void Function(bool) onSigned;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onSigned: $onSigned}';
  }
}
