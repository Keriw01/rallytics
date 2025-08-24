import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';
import 'package:rallytics/features/news_articles/domain/usecases/get_news_articles_usecases.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_event.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_state.dart';

@injectable
class NewsArticlesBloc extends Bloc<NewsArticlesEvent, NewsArticlesState> {
  final GetNewsArticlesUseCase _getNewsArticlesUsecase;

  NewsArticlesBloc(this._getNewsArticlesUsecase)
    : super(NewsArticlesState.initial()) {
    on<WatchNewsArticlesStarted>((event, emit) async {
      if (state is! Loaded) {
        emit(const NewsArticlesState.loading());
      }
      await emit.onEach<List<NewsArticlesEntity>>(
        _getNewsArticlesUsecase(NoParams()),
        onData: (newNewsArticles) {
          emit(NewsArticlesState.loaded(allNewsArticles: newNewsArticles));
        },
        onError: (error, stackTrace) {
          emit(NewsArticlesState.error(error.toString()));
        },
      );
    });
  }
}
