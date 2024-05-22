import "package:dio/dio.dart";
import "package:flutter_news_app/core/models/news/news.dart";
import "package:flutter_news_app/core/repositories/Exceptions/api_exception.dart";
import "package:flutter_news_app/core/repositories/api_client.dart";

class ApiRepository {
  final ApiClient _apiClient = ApiClient();
  List<Results>? results = [];
  late String? nextPage;

  Future<List<Results>?> fetchNews() async {
    try {
      final response = await _apiClient.fetchNews();
      nextPage = response.nextPage;
      results = response.results;
      return response.results;
    } on DioException catch (e, s) {
      throw ApiException.fromDioException(e, "Failed to fetch news");
    } catch (e, s) {
      throw ApiException.unknown();
    }
  }

  Future<List<Results>?> fetchMoreNews() async {
    try {
      if (nextPage == null) {
        throw ApiException.unknown();
      } else {
        final response = await _apiClient.fetchMoreNews(nextPage!);
        nextPage = response.nextPage;
        if (response.results != null) results = results! + response.results!;
        return results;
      }
    } on DioException catch (e, s) {
      throw ApiException.fromDioException(e, "Failed to fetch news");
    } catch (e, s) {
      throw ApiException.unknown();
    }
  }
}
