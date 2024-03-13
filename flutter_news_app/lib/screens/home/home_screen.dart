import "package:flutter/material.dart";
import "package:flutter_news_app/assets/assets.gen.dart";
import "package:flutter_news_app/core/models/news/news.dart";
import "package:flutter_news_app/core/providers/fetch_news/fetch_news_provider.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<News> newsRef = ref.watch(fetchNewsProvider);

    // ref.refresh(fetchNewsProvider.future);
    return Scaffold(
        body: DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Assets.images.union.image().image, fit: BoxFit.fill),
      ),
      child: newsRef.when(
        data: (data) => Center(
          child: Text(
            data.status,
            style: TextStyle(
              fontSize: 64.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        error: (error, _) => Center(
          child: Text(
            error.toString(),
            style: TextStyle(
              fontSize: 64.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    ));
  }
}
