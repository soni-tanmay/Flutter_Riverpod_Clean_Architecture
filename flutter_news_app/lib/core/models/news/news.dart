import "package:freezed_annotation/freezed_annotation.dart";

part "news.freezed.dart";
part "news.g.dart";

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class News with _$News {
  factory News({
    required String status,
    required int totalResults,
  }) = _News;

  /// Convert a JSON object into an [News] instance.
  /// This enables type-safe reading of the API response.
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
