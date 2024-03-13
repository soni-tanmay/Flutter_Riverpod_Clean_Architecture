import "package:flutter/foundation.dart";
import "package:flutter_news_app/screens/home/home_screen.dart";
import "package:flutter_news_app/screens/splash/splash_screen.dart";
import "package:go_router/go_router.dart";

class ScreenPaths {
  static const splash = (name: "splash", path: "/");
  static const home = (name: "home", path: "/home");
}

final GoRouter appRouter = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: ScreenPaths.splash.path,
  routes: [
    GoRoute(
      name: ScreenPaths.splash.name,
      path: ScreenPaths.splash.path,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: ScreenPaths.home.name,
      path: ScreenPaths.home.path,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
