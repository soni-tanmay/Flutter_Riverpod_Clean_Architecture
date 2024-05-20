// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<Results>? get results => throw _privateConstructorUsedError;
  String? get nextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {String? status,
      int? totalResults,
      List<Results>? results,
      String? nextPage});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsImplCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$NewsImplCopyWith(
          _$NewsImpl value, $Res Function(_$NewsImpl) then) =
      __$$NewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      int? totalResults,
      List<Results>? results,
      String? nextPage});
}

/// @nodoc
class __$$NewsImplCopyWithImpl<$Res>
    extends _$NewsCopyWithImpl<$Res, _$NewsImpl>
    implements _$$NewsImplCopyWith<$Res> {
  __$$NewsImplCopyWithImpl(_$NewsImpl _value, $Res Function(_$NewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_$NewsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImpl with DiagnosticableTreeMixin implements _News {
  const _$NewsImpl(
      {this.status,
      this.totalResults,
      final List<Results>? results,
      this.nextPage})
      : _results = results;

  factory _$NewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImplFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<Results>? _results;
  @override
  List<Results>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? nextPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'News(status: $status, totalResults: $totalResults, results: $results, nextPage: $nextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'News'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('nextPage', nextPage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_results), nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      __$$NewsImplCopyWithImpl<_$NewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImplToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {final String? status,
      final int? totalResults,
      final List<Results>? results,
      final String? nextPage}) = _$NewsImpl;

  factory _News.fromJson(Map<String, dynamic> json) = _$NewsImpl.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<Results>? get results;
  @override
  String? get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  String? get articleId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get pubDate => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  int? get sourcePriority => throw _privateConstructorUsedError;
  String? get sourceUrl => throw _privateConstructorUsedError;
  String? get sourceIcon => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get country => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;
  List<String>? get aiRegion => throw _privateConstructorUsedError;
  String? get sentiment => throw _privateConstructorUsedError;
  SentimentStats? get sentimentStats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {String? articleId,
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
      SentimentStats? sentimentStats});

  $SentimentStatsCopyWith<$Res>? get sentimentStats;
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? keywords = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? pubDate = freezed,
    Object? imageUrl = freezed,
    Object? sourceId = freezed,
    Object? sourcePriority = freezed,
    Object? sourceUrl = freezed,
    Object? sourceIcon = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? category = freezed,
    Object? aiRegion = freezed,
    Object? sentiment = freezed,
    Object? sentimentStats = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: freezed == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourcePriority: freezed == sourcePriority
          ? _value.sourcePriority
          : sourcePriority // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIcon: freezed == sourceIcon
          ? _value.sourceIcon
          : sourceIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aiRegion: freezed == aiRegion
          ? _value.aiRegion
          : aiRegion // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentStats: freezed == sentimentStats
          ? _value.sentimentStats
          : sentimentStats // ignore: cast_nullable_to_non_nullable
              as SentimentStats?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SentimentStatsCopyWith<$Res>? get sentimentStats {
    if (_value.sentimentStats == null) {
      return null;
    }

    return $SentimentStatsCopyWith<$Res>(_value.sentimentStats!, (value) {
      return _then(_value.copyWith(sentimentStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
          _$ResultsImpl value, $Res Function(_$ResultsImpl) then) =
      __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? articleId,
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
      SentimentStats? sentimentStats});

  @override
  $SentimentStatsCopyWith<$Res>? get sentimentStats;
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
      _$ResultsImpl _value, $Res Function(_$ResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? keywords = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? pubDate = freezed,
    Object? imageUrl = freezed,
    Object? sourceId = freezed,
    Object? sourcePriority = freezed,
    Object? sourceUrl = freezed,
    Object? sourceIcon = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? category = freezed,
    Object? aiRegion = freezed,
    Object? sentiment = freezed,
    Object? sentimentStats = freezed,
  }) {
    return _then(_$ResultsImpl(
      articleId: freezed == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourcePriority: freezed == sourcePriority
          ? _value.sourcePriority
          : sourcePriority // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIcon: freezed == sourceIcon
          ? _value.sourceIcon
          : sourceIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aiRegion: freezed == aiRegion
          ? _value._aiRegion
          : aiRegion // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentStats: freezed == sentimentStats
          ? _value.sentimentStats
          : sentimentStats // ignore: cast_nullable_to_non_nullable
              as SentimentStats?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl with DiagnosticableTreeMixin implements _Results {
  const _$ResultsImpl(
      {this.articleId,
      this.title,
      this.link,
      final List<String>? keywords,
      this.description,
      this.content,
      this.pubDate,
      this.imageUrl,
      this.sourceId,
      this.sourcePriority,
      this.sourceUrl,
      this.sourceIcon,
      this.language,
      final List<String>? country,
      final List<String>? category,
      final List<String>? aiRegion,
      this.sentiment,
      this.sentimentStats})
      : _keywords = keywords,
        _country = country,
        _category = category,
        _aiRegion = aiRegion;

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  final String? articleId;
  @override
  final String? title;
  @override
  final String? link;
  final List<String>? _keywords;
  @override
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final String? content;
  @override
  final String? pubDate;
  @override
  final String? imageUrl;
  @override
  final String? sourceId;
  @override
  final int? sourcePriority;
  @override
  final String? sourceUrl;
  @override
  final String? sourceIcon;
  @override
  final String? language;
  final List<String>? _country;
  @override
  List<String>? get country {
    final value = _country;
    if (value == null) return null;
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _aiRegion;
  @override
  List<String>? get aiRegion {
    final value = _aiRegion;
    if (value == null) return null;
    if (_aiRegion is EqualUnmodifiableListView) return _aiRegion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? sentiment;
  @override
  final SentimentStats? sentimentStats;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Results(articleId: $articleId, title: $title, link: $link, keywords: $keywords, description: $description, content: $content, pubDate: $pubDate, imageUrl: $imageUrl, sourceId: $sourceId, sourcePriority: $sourcePriority, sourceUrl: $sourceUrl, sourceIcon: $sourceIcon, language: $language, country: $country, category: $category, aiRegion: $aiRegion, sentiment: $sentiment, sentimentStats: $sentimentStats)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Results'))
      ..add(DiagnosticsProperty('articleId', articleId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('keywords', keywords))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('pubDate', pubDate))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('sourcePriority', sourcePriority))
      ..add(DiagnosticsProperty('sourceUrl', sourceUrl))
      ..add(DiagnosticsProperty('sourceIcon', sourceIcon))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('aiRegion', aiRegion))
      ..add(DiagnosticsProperty('sentiment', sentiment))
      ..add(DiagnosticsProperty('sentimentStats', sentimentStats));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.sourcePriority, sourcePriority) ||
                other.sourcePriority == sourcePriority) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.sourceIcon, sourceIcon) ||
                other.sourceIcon == sourceIcon) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._country, _country) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._aiRegion, _aiRegion) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.sentimentStats, sentimentStats) ||
                other.sentimentStats == sentimentStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      articleId,
      title,
      link,
      const DeepCollectionEquality().hash(_keywords),
      description,
      content,
      pubDate,
      imageUrl,
      sourceId,
      sourcePriority,
      sourceUrl,
      sourceIcon,
      language,
      const DeepCollectionEquality().hash(_country),
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_aiRegion),
      sentiment,
      sentimentStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {final String? articleId,
      final String? title,
      final String? link,
      final List<String>? keywords,
      final String? description,
      final String? content,
      final String? pubDate,
      final String? imageUrl,
      final String? sourceId,
      final int? sourcePriority,
      final String? sourceUrl,
      final String? sourceIcon,
      final String? language,
      final List<String>? country,
      final List<String>? category,
      final List<String>? aiRegion,
      final String? sentiment,
      final SentimentStats? sentimentStats}) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  String? get articleId;
  @override
  String? get title;
  @override
  String? get link;
  @override
  List<String>? get keywords;
  @override
  String? get description;
  @override
  String? get content;
  @override
  String? get pubDate;
  @override
  String? get imageUrl;
  @override
  String? get sourceId;
  @override
  int? get sourcePriority;
  @override
  String? get sourceUrl;
  @override
  String? get sourceIcon;
  @override
  String? get language;
  @override
  List<String>? get country;
  @override
  List<String>? get category;
  @override
  List<String>? get aiRegion;
  @override
  String? get sentiment;
  @override
  SentimentStats? get sentimentStats;
  @override
  @JsonKey(ignore: true)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentStats _$SentimentStatsFromJson(Map<String, dynamic> json) {
  return _SentimentStats.fromJson(json);
}

/// @nodoc
mixin _$SentimentStats {
  double? get positive => throw _privateConstructorUsedError;
  double? get neutral => throw _privateConstructorUsedError;
  double? get negative => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentimentStatsCopyWith<SentimentStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentStatsCopyWith<$Res> {
  factory $SentimentStatsCopyWith(
          SentimentStats value, $Res Function(SentimentStats) then) =
      _$SentimentStatsCopyWithImpl<$Res, SentimentStats>;
  @useResult
  $Res call({double? positive, double? neutral, double? negative});
}

/// @nodoc
class _$SentimentStatsCopyWithImpl<$Res, $Val extends SentimentStats>
    implements $SentimentStatsCopyWith<$Res> {
  _$SentimentStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positive = freezed,
    Object? neutral = freezed,
    Object? negative = freezed,
  }) {
    return _then(_value.copyWith(
      positive: freezed == positive
          ? _value.positive
          : positive // ignore: cast_nullable_to_non_nullable
              as double?,
      neutral: freezed == neutral
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as double?,
      negative: freezed == negative
          ? _value.negative
          : negative // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentStatsImplCopyWith<$Res>
    implements $SentimentStatsCopyWith<$Res> {
  factory _$$SentimentStatsImplCopyWith(_$SentimentStatsImpl value,
          $Res Function(_$SentimentStatsImpl) then) =
      __$$SentimentStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? positive, double? neutral, double? negative});
}

/// @nodoc
class __$$SentimentStatsImplCopyWithImpl<$Res>
    extends _$SentimentStatsCopyWithImpl<$Res, _$SentimentStatsImpl>
    implements _$$SentimentStatsImplCopyWith<$Res> {
  __$$SentimentStatsImplCopyWithImpl(
      _$SentimentStatsImpl _value, $Res Function(_$SentimentStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positive = freezed,
    Object? neutral = freezed,
    Object? negative = freezed,
  }) {
    return _then(_$SentimentStatsImpl(
      positive: freezed == positive
          ? _value.positive
          : positive // ignore: cast_nullable_to_non_nullable
              as double?,
      neutral: freezed == neutral
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as double?,
      negative: freezed == negative
          ? _value.negative
          : negative // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentStatsImpl
    with DiagnosticableTreeMixin
    implements _SentimentStats {
  const _$SentimentStatsImpl({this.positive, this.neutral, this.negative});

  factory _$SentimentStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentStatsImplFromJson(json);

  @override
  final double? positive;
  @override
  final double? neutral;
  @override
  final double? negative;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SentimentStats(positive: $positive, neutral: $neutral, negative: $negative)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SentimentStats'))
      ..add(DiagnosticsProperty('positive', positive))
      ..add(DiagnosticsProperty('neutral', neutral))
      ..add(DiagnosticsProperty('negative', negative));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentStatsImpl &&
            (identical(other.positive, positive) ||
                other.positive == positive) &&
            (identical(other.neutral, neutral) || other.neutral == neutral) &&
            (identical(other.negative, negative) ||
                other.negative == negative));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, positive, neutral, negative);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentStatsImplCopyWith<_$SentimentStatsImpl> get copyWith =>
      __$$SentimentStatsImplCopyWithImpl<_$SentimentStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentStatsImplToJson(
      this,
    );
  }
}

abstract class _SentimentStats implements SentimentStats {
  const factory _SentimentStats(
      {final double? positive,
      final double? neutral,
      final double? negative}) = _$SentimentStatsImpl;

  factory _SentimentStats.fromJson(Map<String, dynamic> json) =
      _$SentimentStatsImpl.fromJson;

  @override
  double? get positive;
  @override
  double? get neutral;
  @override
  double? get negative;
  @override
  @JsonKey(ignore: true)
  _$$SentimentStatsImplCopyWith<_$SentimentStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
