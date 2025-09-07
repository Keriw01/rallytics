import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';
import 'package:rallytics/features/live_score/domain/usecases/get_live_scores_usecase.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_event.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_state.dart';

@injectable
class LiveScoreBloc extends Bloc<LiveScoreEvent, LiveScoreState> {
  final GetLiveScoresUseCase _getLiveScoresUseCase;

  LiveScoreBloc(this._getLiveScoresUseCase)
    : super(const LiveScoreState.initial()) {
    on<WatchLiveScoresStarted>((event, emit) async {
      // Show loading only the first time (silent refresh)
      final isAlreadyLoaded = state.maybeMap(
        loaded: (_) => true,
        orElse: () => false,
      );

      if (!isAlreadyLoaded) {
        emit(const LiveScoreState.loading());
      }

      await emit.onEach<List<LiveMatchEntity>>(
        _getLiveScoresUseCase(NoParams()),
        onData: (newMatches) {
          final currentQuery = state.maybeMap(
            loaded: (loadedState) => loadedState.searchQuery,
            orElse: () => '',
          );

          final filteredMatches = _filterMatches(newMatches, currentQuery);

          emit(
            LiveScoreState.loaded(
              allMatches: newMatches,
              filteredMatches: filteredMatches,
              searchQuery: currentQuery,
            ),
          );
        },
        onError: (error, stackTrace) {
          emit(LiveScoreState.error(error.toString()));
        },
      );
    });

    on<SearchQueryChanged>((event, emit) async {
      state.mapOrNull(
        loaded: (loadedState) {
          final newQuery = event.query;

          final filteredMatches = _filterMatches(
            loadedState.allMatches,
            newQuery,
          );

          emit(
            loadedState.copyWith(
              searchQuery: newQuery,
              filteredMatches: filteredMatches,
            ),
          );
        },
      );
    });
  }

  List<LiveMatchEntity> _filterMatches(
    List<LiveMatchEntity> matches,
    String query,
  ) {
    if (query.isEmpty) {
      return matches;
    }
    final lowerCaseQuery = query.toLowerCase();
    return matches.where((match) {
      final homeTeam = match.homeTeamName.toLowerCase();
      final awayTeam = match.awayTeamName.toLowerCase();
      return homeTeam.contains(lowerCaseQuery) ||
          awayTeam.contains(lowerCaseQuery);
    }).toList();
  }
}
