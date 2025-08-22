import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';
import 'package:rallytics/features/news_articles/domain/repositories/news_articles_repository.dart';

@lazySingleton
class GetNewsArticlesUsecases
    implements StreamUseCase<List<NewsArticlesEntity>, NoParams> {
  final NewsArticlesRepository _repository;

  GetNewsArticlesUsecases(this._repository);

  @override
  Stream<List<NewsArticlesEntity>> call(NoParams params) {
    return _repository.getNewsArticles();
  }
}
