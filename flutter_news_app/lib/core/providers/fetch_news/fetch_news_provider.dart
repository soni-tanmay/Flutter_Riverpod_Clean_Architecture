import "dart:convert";
import "package:flutter_news_app/core/constants/env_constants.dart";
import "package:flutter_news_app/core/models/news/news.dart";
import "package:http/http.dart" as http;
import "package:riverpod_annotation/riverpod_annotation.dart";

part "fetch_news_provider.g.dart";

@Riverpod(keepAlive: true)
Future<News> fetchNews(FetchNewsRef ref) async {
  final response = await http.get(
    Uri(
      scheme: "https",
      host: "newsapi.org",
      path: "/v2/top-headlines",
      queryParameters: {
        "country": country,
        "apiKey": apiKey,
      },
    ),
  );
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return News.fromJson(json);
}
