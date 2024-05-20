import "package:flutter/foundation.dart";
import "package:flutter_news_app/screens/home/home_screen.dart";
import "package:flutter_news_app/screens/saved_news/saved_news_screen.dart";
import "package:flutter_news_app/screens/splash/splash_screen.dart";
import "package:go_router/go_router.dart";

class ScreenPaths {
  static const splash = (name: "splash", path: "/");
  static const home = (name: "home", path: "/home");
  static const savedNews = (name: "savedNews", path: "/home/savedNews");
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
    GoRoute(
      name: ScreenPaths.savedNews.name,
      path: ScreenPaths.savedNews.path,
      builder: (context, state) => const SavedNewsScreen(),
    ),
  ],
);
