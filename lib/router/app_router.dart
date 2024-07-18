import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/router/app_routes.dart';
import 'package:template/view/home/home_screen.dart';
import 'package:template/view/init/init_error_screen.dart';
import 'package:template/view/init/init_screen.dart';
import 'package:template/view/settings/settings_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouter? _goRouter;

  static GoRouter get router => _goRouter == null ? throw Exception("Init router first") : _goRouter!;

  static GlobalKey get navigatorKey => _rootNavigatorKey;

  static GoRouter initRouter() {
    _goRouter ??= GoRouter(
      initialLocation: AppRoutes.init.path,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: AppRoutes.init.path,
          builder: (context, state) => const InitScreen(),
        ),
        GoRoute(
          path: AppRoutes.initError.path,
          builder: (context, state) => InitErrorScreen(error: state.extra as dynamic),
        ),
        GoRoute(
          path: AppRoutes.home.path,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: AppRoutes.settings.path,
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    );
    return _goRouter!;
  }
}
