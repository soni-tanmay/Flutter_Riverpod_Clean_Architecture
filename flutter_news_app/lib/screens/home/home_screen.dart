import "package:flutter/material.dart";
import "package:flutter_news_app/core/providers/news/news_provider.dart";
import "package:flutter_news_app/router/app_router.dart";
import "package:flutter_news_app/widgets/articles_list.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsRef = ref.watch(newsProvider);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: theme.textTheme.headlineLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {
              appRouter.pushNamed(ScreenPaths.savedNews.name);
            },
            icon: Icon(
              Icons.bookmark_border_rounded,
              size: 30.r,
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(newsProvider.future),
        child: newsRef.when(
          skipLoadingOnRefresh: false,
          data: (value) => ArticlesList(
            value: value,
            savedNews: false,
          ),
          error: (error, _) => Text(
            error.toString(),
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.error,
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
