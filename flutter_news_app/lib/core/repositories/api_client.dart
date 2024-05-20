import "dart:convert";

import "package:dio/dio.dart";
import "package:flutter_news_app/core/constants/env_constants.dart";
import "package:flutter_news_app/core/models/news/news.dart";

class ApiClient {
  final Dio _dio = Dio(
      // BaseOptions(baseUrl: "https://newsdata.io/")
      );

  Future<News> fetchNews() async {
    final response = await _dio.get(
        "https://newsdata.io/api/1/latest?apikey=pub_44447da6e365816789d4ca6f928d566a37849&q=headlines");
    print("fetchNews");
    print(response);
    final json = jsonDecode(response.toString()) as Map<String, dynamic>;
    final newsResponse = News.fromJson(json);
    return newsResponse;
  }

  Future<News> fetchMoreNews(String page) async {
    final response = await _dio.get(
        "https://newsdata.io/api/1/latest?apikey=pub_44447da6e365816789d4ca6f928d566a37849&q=headlines&page=$page"
        // "api/1/latest?",
        // queryParameters: {
        //   "apiKey": apiKey,
        //   "q": defaultSearch,
        //   "page": page,
        // },
        );
    print("fetchMoreNews");
    print(response);
    final json = jsonDecode(response.toString()) as Map<String, dynamic>;
    final newsResponse = News.fromJson(json);
    return newsResponse;
  }
}
