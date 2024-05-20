import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "news.freezed.dart";
part "news.g.dart";

@freezed
class News with _$News {
  const factory News({
    String? status,
    int? totalResults,
    List<Results>? results,
    String? nextPage,
  }) = _News;

  factory News.fromJson(Map<String, Object?> json) => _$NewsFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    String? articleId,
    String? title,
    String? link,
    List<String>? keywords,
    String? description,
    String? content,
    String? pubDate,
    String? imageUrl,
    String? sourceId,
    int? sourcePriority,
    String? sourceUrl,
    String? sourceIcon,
    String? language,
    List<String>? country,
    List<String>? category,
    List<String>? aiRegion,
    String? sentiment,
    SentimentStats? sentimentStats,
  }) = _Results;

  factory Results.fromJson(Map<String, Object?> json) =>
      _$ResultsFromJson(json);
}

@freezed
class SentimentStats with _$SentimentStats {
  const factory SentimentStats({
    double? positive,
    double? neutral,
    double? negative,
  }) = _SentimentStats;

  factory SentimentStats.fromJson(Map<String, Object?> json) =>
      _$SentimentStatsFromJson(json);
}
