import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_articles_entity.freezed.dart';

@freezed
class NewsArticlesEntity with _$NewsArticlesEntity {
  const factory NewsArticlesEntity({
    required String originalUrl,
    required String rewrittenContent,
    required String rewrittenTitle,
  }) = _NewsArticlesEntity;
}
