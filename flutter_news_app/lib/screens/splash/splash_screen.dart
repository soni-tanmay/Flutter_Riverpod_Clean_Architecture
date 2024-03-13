import "package:flutter/material.dart";
import "package:flutter_news_app/core/providers/fetch_news/fetch_news_provider.dart";
import "package:flutter_news_app/router/app_router.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(fetchNewsProvider, (prev, next) {
      appRouter.goNamed(ScreenPaths.home.name);
    });
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome to News App!",
          style: TextStyle(
            fontSize: 64.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
