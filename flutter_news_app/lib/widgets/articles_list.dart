import "package:flutter/material.dart";
import "package:flutter_news_app/core/models/news/news.dart";
import "package:flutter_news_app/core/providers/localStorage/local_storage_provider.dart";
import "package:flutter_news_app/core/providers/news/news_provider.dart";
import "package:flutter_news_app/core/utils/pagination_scroll_controller.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class ArticlesList extends ConsumerStatefulWidget {
  final List<Results>? value;
  final bool savedNews;
  const ArticlesList({super.key, required this.value, required this.savedNews});

  @override
  ConsumerState<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends ConsumerState<ArticlesList> {
  PaginationScrollController paginationScrollController =
      PaginationScrollController();
  @override
  void initState() {
    paginationScrollController.init(
        loadAction: () => ref.read(newsProvider.notifier).fetchMoreNews());
    super.initState();
  }

  @override
  void dispose() {
    paginationScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      controller: paginationScrollController.scrollController,
      itemCount: widget.value?.length ?? 0,
      itemBuilder: (context, index) {
        final title = widget.value?[index].title ?? "";
        return Card(
          elevation: 5,
          margin: const EdgeInsets.all(8),
          color: theme.colorScheme.onPrimary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                widget.savedNews
                    ? IconButton(
                        onPressed: () {
                          ref
                              .read(localStorageProvider.notifier)
                              .deleteNews(widget.value![index]);
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 30.r,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          ref
                              .read(localStorageProvider.notifier)
                              .insertNews(widget.value![index]);
                        },
                        icon: Icon(
                          Icons.bookmark_outline_outlined,
                          size: 30.r,
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
