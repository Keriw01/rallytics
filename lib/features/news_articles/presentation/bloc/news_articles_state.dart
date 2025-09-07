import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';

part 'news_articles_state.freezed.dart';

@freezed
class NewsArticlesState with _$NewsArticlesState {
  const factory NewsArticlesState.initial() = _Initial;
  const factory NewsArticlesState.loading() = _Loading;
  const factory NewsArticlesState.loaded({
    @Default([]) List<NewsArticlesEntity> allNewsArticles,
  }) = _Loaded;
  const factory NewsArticlesState.error(String message) = _Error;
}
