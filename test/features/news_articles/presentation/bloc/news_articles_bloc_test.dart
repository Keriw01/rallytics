import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';
import 'package:rallytics/features/news_articles/domain/usecases/get_news_articles_usecases.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_bloc.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_event.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_state.dart';

import 'news_articles_bloc_test.mocks.dart';

@GenerateMocks([GetNewsArticlesUseCase])
void main() {
  late MockGetNewsArticlesUseCase mockGetNewsArticlesUseCase;

  final tNewsArticleEntity1 = const NewsArticlesEntity(
    rewrittenContent:
        "Linda Klimovicova pożegnała się z marzeniami o debiucie w głównej drabince US Open 2025.",
    rewrittenTitle:
        "US Open poza zasięgiem! Kosztowne błędy Polki w decydującym meczu kwalifikacji.",
  );
  final tNewsArticleEntity2 = const NewsArticlesEntity(
    rewrittenContent:
        "Turniej WTA 250 w Cleveland zakończy się zaskakującym finałem. W decydującym meczu o tytuł powalczą Sorana Cirstea i Ann Li. Rumunka pokonała Anastazję Zacharową 6:1, 7:5. Z kolei Amerykanka wyeliminowała rozstawioną z numerem drugim Xinyu Wang, wygrywając 6:3, 5:7, 6:4. Mecz finałowy odbędzie się już dziś o godzinie 18:00 czasu polskiego.",
    rewrittenTitle:
        "Niespodzianka w Cleveland! Finał bez faworytek - Cirstea zmierzy się z Li.",
  );
  final tNewsArticlesList = [tNewsArticleEntity1, tNewsArticleEntity2];

  setUp(() {
    mockGetNewsArticlesUseCase = MockGetNewsArticlesUseCase();
  });

  test('Initial state should be NewsArticlesState.initial', () {
    expect(
      NewsArticlesBloc(mockGetNewsArticlesUseCase).state,
      const NewsArticlesState.initial(),
    );
  });

  group('WatchLNewsArticlesStarted', () {
    blocTest<NewsArticlesBloc, NewsArticlesState>(
      'should emit [loading, loaded] when UseCase returns data successfully',
      setUp: () {
        when(
          mockGetNewsArticlesUseCase.call(any),
        ).thenAnswer((_) => Stream.value(tNewsArticlesList));
      },
      build: () => NewsArticlesBloc(mockGetNewsArticlesUseCase),

      act: (bloc) =>
          bloc.add(const NewsArticlesEvent.watchNewsArticlesStarted()),

      expect: () => [
        const NewsArticlesState.loading(),
        NewsArticlesState.loaded(allNewsArticles: tNewsArticlesList),
      ],

      verify: (_) {
        verify(mockGetNewsArticlesUseCase.call(any)).called(1);
      },
    );

    blocTest<NewsArticlesBloc, NewsArticlesState>(
      'should emit [loading, error] when UseCase returns an error',
      setUp: () {
        when(
          mockGetNewsArticlesUseCase.call(any),
        ).thenAnswer((_) => Stream.error('Network error'));
      },
      build: () => NewsArticlesBloc(mockGetNewsArticlesUseCase),
      act: (bloc) =>
          bloc.add(const NewsArticlesEvent.watchNewsArticlesStarted()),
      expect: () => [
        const NewsArticlesState.loading(),
        const NewsArticlesState.error('Network error'),
      ],
    );
  });
}
