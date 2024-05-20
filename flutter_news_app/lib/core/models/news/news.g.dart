// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPage: json['nextPage'] as String?,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'results': instance.results,
      'nextPage': instance.nextPage,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      articleId: json['articleId'] as String?,
      title: json['title'] as String?,
      link: json['link'] as String?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      content: json['content'] as String?,
      pubDate: json['pubDate'] as String?,
      imageUrl: json['imageUrl'] as String?,
      sourceId: json['sourceId'] as String?,
      sourcePriority: json['sourcePriority'] as int?,
      sourceUrl: json['sourceUrl'] as String?,
      sourceIcon: json['sourceIcon'] as String?,
      language: json['language'] as String?,
      country:
          (json['country'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      aiRegion: (json['aiRegion'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sentiment: json['sentiment'] as String?,
      sentimentStats: json['sentimentStats'] == null
          ? null
          : SentimentStats.fromJson(
              json['sentimentStats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'articleId': instance.articleId,
      'title': instance.title,
      'link': instance.link,
      'keywords': instance.keywords,
      'description': instance.description,
      'content': instance.content,
      'pubDate': instance.pubDate,
      'imageUrl': instance.imageUrl,
      'sourceId': instance.sourceId,
      'sourcePriority': instance.sourcePriority,
      'sourceUrl': instance.sourceUrl,
      'sourceIcon': instance.sourceIcon,
      'language': instance.language,
      'country': instance.country,
      'category': instance.category,
      'aiRegion': instance.aiRegion,
      'sentiment': instance.sentiment,
      'sentimentStats': instance.sentimentStats,
    };

_$SentimentStatsImpl _$$SentimentStatsImplFromJson(Map<String, dynamic> json) =>
    _$SentimentStatsImpl(
      positive: (json['positive'] as num?)?.toDouble(),
      neutral: (json['neutral'] as num?)?.toDouble(),
      negative: (json['negative'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SentimentStatsImplToJson(
        _$SentimentStatsImpl instance) =>
    <String, dynamic>{
      'positive': instance.positive,
      'neutral': instance.neutral,
      'negative': instance.negative,
    };
