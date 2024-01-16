import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/view/home_screen/home_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouter? _goRouter;

  static GoRouter get router => _goRouter == null ? throw Exception("Init router first") : _goRouter!;
  static GlobalKey get navigatorKey => _rootNavigatorKey;

  static GoRouter initRouter() {
    _goRouter ??= GoRouter(
      initialLocation: "/",
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
    return _goRouter!;
  }
}
