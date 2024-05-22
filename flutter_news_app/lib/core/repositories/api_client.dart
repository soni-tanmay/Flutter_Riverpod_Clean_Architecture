import "dart:convert";

import "package:dio/dio.dart";
import "package:flutter_news_app/core/constants/env_constants.dart";
import "package:flutter_news_app/core/models/news/news.dart";

class ApiClient {
  final Dio _dio = Dio();

  Future<News> fetchNews() async {
    final response = await _dio.get(
        "https://newsdata.io/api/1/latest?apikey=$apiKey&q=$defaultSearch");
    final json = jsonDecode(response.toString()) as Map<String, dynamic>;
    final newsResponse = News.fromJson(json);
    return newsResponse;
  }

  Future<News> fetchMoreNews(String page) async {
    final response = await _dio.get(
        "https://newsdata.io/api/1/latest?apikey=$apiKey&q=$defaultSearch&page=$page");
    final json = jsonDecode(response.toString()) as Map<String, dynamic>;
    final newsResponse = News.fromJson(json);
    return newsResponse;
  }
}
