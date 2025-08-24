import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';

part 'news_articles_model.freezed.dart';
part 'news_articles_model.g.dart';

@freezed
class NewsArticlesModel with _$NewsArticlesModel {
  const NewsArticlesModel._();

  const factory NewsArticlesModel({
    required String originalUrl,
    required String rewrittenContent,
    required String rewrittenTitle,
  }) = _NewsArticlesModel;

  factory NewsArticlesModel.fromJson(Map<String, dynamic> json) =>
      _$NewsArticlesModelFromJson(json);

  NewsArticlesEntity toEntity() {
    return NewsArticlesEntity(
      originalUrl: originalUrl,
      rewrittenContent: rewrittenContent,
      rewrittenTitle: rewrittenTitle,
    );
  }
}
