import 'package:injectable/injectable.dart';
import 'package:rallytics/features/news_articles/data/datasources/news_articles_firestore_datasource.dart';
import 'package:rallytics/features/news_articles/data/models/news_articles_model.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';
import 'package:rallytics/features/news_articles/domain/repositories/news_articles_repository.dart';

@LazySingleton(as: NewsArticlesRepository)
class NewsArticlesRepositoryImpl implements NewsArticlesRepository {
  final NewsArticlesDataSource _dataSource;

  NewsArticlesRepositoryImpl(this._dataSource);

  @override
  Stream<List<NewsArticlesEntity>> getNewsArticles() {
    return _dataSource.getNewsArticlesStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return NewsArticlesModel.fromJson(data).toEntity();
      }).toList();
    });
  }
}
