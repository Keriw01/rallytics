import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_articles_event.freezed.dart';

@freezed
class NewsArticlesEvent with _$NewsArticlesEvent {
  const factory NewsArticlesEvent.watchNewsArticlesStarted() =
      WatchNewsArticlesStarted;
}
