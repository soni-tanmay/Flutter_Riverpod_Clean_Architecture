import "package:flutter_news_app/core/localDB/local_database.dart";
import "package:flutter_news_app/core/models/news/news.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "local_storage_provider.g.dart";

@Riverpod(keepAlive: true)
class LocalStorage extends _$LocalStorage {
  final LocalDatabase _localDatabase = LocalDatabase.instance;

  @override
  Future<List<Results>?> build() async {
    return fetchSavedNews();
  }

  Future<List<Results>?> fetchSavedNews() async {
    final response = _localDatabase.readAll();
    return response;
  }

  Future<void> insertNews(Results article) async {
    await _localDatabase.insert(article);
    ref.invalidateSelf();
  }

  Future<void> deleteNews(Results article) async {
    await _localDatabase.delete(article.title!.length);
    ref.invalidateSelf();
  }
}
