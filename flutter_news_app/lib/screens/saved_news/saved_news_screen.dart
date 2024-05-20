import "package:flutter/material.dart";
import "package:flutter_news_app/core/providers/localStorage/local_storage_provider.dart";
import "package:flutter_news_app/widgets/articles_list.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class SavedNewsScreen extends ConsumerWidget {
  const SavedNewsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsRef = ref.watch(localStorageProvider);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saved News",
          style: theme.textTheme.headlineLarge,
        ),
      ),
      body: newsRef.when(
        skipLoadingOnRefresh: false,
        data: (value) => ArticlesList(
          value: value,
          savedNews: true,
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
    );
  }
}
