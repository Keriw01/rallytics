import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';
import 'package:rallytics/features/news_articles/domain/repositories/news_articles_repository.dart';
import 'package:rallytics/features/news_articles/domain/usecases/get_news_articles_usecases.dart';

import 'get_news_articles_usecases_test.mocks.dart';

@GenerateMocks([NewsArticlesRepository])
void main() {
  late GetNewsArticlesUseCase useCase;
  late MockNewsArticlesRepository mockNewsArticlesRepository;

  setUp(() {
    mockNewsArticlesRepository = MockNewsArticlesRepository();
    useCase = GetNewsArticlesUseCase(mockNewsArticlesRepository);
  });

  final tNewsArticleEntity = const NewsArticlesEntity(
    rewrittenContent:
        "Linda Klimovicova pożegnała się z marzeniami o debiucie w głównej drabince US Open 2025.",
    rewrittenTitle:
        "US Open poza zasięgiem! Kosztowne błędy Polki w decydującym meczu kwalifikacji.",
  );
  final tNewsArticlesList = [tNewsArticleEntity];

  final tNewsArticlesStream = Stream.value(tNewsArticlesList);

  test('should correctly filter new data if the query already exists', () {
    when(
      mockNewsArticlesRepository.getNewsArticles(),
    ).thenAnswer((_) => tNewsArticlesStream);

    final resultStream = useCase(NoParams());

    expect(resultStream, tNewsArticlesStream);

    verify(mockNewsArticlesRepository.getNewsArticles());

    verifyNoMoreInteractions(mockNewsArticlesRepository);
  });
}
