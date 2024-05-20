import "package:flutter/material.dart";
import "package:flutter_news_app/assets/assets.gen.dart";
import "package:flutter_news_app/core/providers/news/news_provider.dart";
import "package:flutter_news_app/router/app_router.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    ref.listen(newsProvider, (prev, next) {
      if (prev != next) appRouter.goNamed(ScreenPaths.home.name);
    });
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.backgroundImage.image().image,
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome to News App!",
              style: theme.textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
