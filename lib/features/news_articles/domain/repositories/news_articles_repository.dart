import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';

abstract class NewsArticlesRepository {
  Stream<List<NewsArticlesEntity>> getNewsArticles();
}
