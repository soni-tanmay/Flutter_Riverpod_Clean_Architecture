import "package:flutter_news_app/core/models/news/news.dart";
import "package:flutter_news_app/core/repositories/api_repository.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "news_provider.g.dart";

final ApiRepository apiRepository = ApiRepository();

// @Riverpod(keepAlive: true)
// Future<List<Results>?> news(NewsRef ref) async {
//   final response = await apiRepository.fetchNews();
//   saveLaterList = List.filled(response?.length ?? 0, false);
//   print(response);
//   return response;
// }

@Riverpod(keepAlive: true)
class News extends _$News {
  List<Results>? newsList = [];

  @override
  Future<List<Results>?> build() async {
    return fetchNews();
  }

  Future<List<Results>?> fetchNews() async {
    print("fetchNews");
    final response = await apiRepository.fetchNews();
    return response;
  }

  Future<void> fetchMoreNews() async {
    print("fetchMoreNews");
    final response = await apiRepository.fetchMoreNews();
    state = AsyncData(response);
  }
}

// sealed class NewsState {}

// class NewsInitial extends NewsState {}

// class NewsLoading extends NewsState {}

// class NewsError extends NewsState {
//   final String error;
//   NewsError({required this.error});
// }

// class NewsSuccess extends NewsState {
//   final List<Articles> data;
//   NewsSuccess({required this.data});
// }

// @Riverpod(keepAlive: true)
// class News extends _$News {
//   @override
//   Future<NewsState> build() async {}
//   Future<void> fetchTopHeadlines() async {}
// }
