import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';
import 'package:rallytics/features/live_score/domain/entities/score_entity.dart';
import 'package:rallytics/features/live_score/domain/usecases/get_live_scores_usecase.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_bloc.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_event.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_state.dart';

import 'live_score_bloc_test.mocks.dart';

@GenerateMocks([GetLiveScoresUseCase])
void main() {
  late MockGetLiveScoresUseCase mockGetLiveScoresUseCase;

  const scoreEntity = ScoreEntity(current: 0, period1: 0);
  final tMatch1 = const LiveMatchEntity(
    id: 1,
    name: 'Nadal vs Federer',
    tournamentName: 'RG',
    seasonName: '2022',
    arenaName: 'Court Philippe Chatrier',
    homeTeamName: 'Rafael Nadal',
    awayTeamName: 'Roger Federer',
    homeTeamScore: scoreEntity,
    awayTeamScore: scoreEntity,
  );
  final tMatch2 = const LiveMatchEntity(
    id: 2,
    name: 'Swiatek vs Sabalenka',
    tournamentName: 'WTA',
    seasonName: '2023',
    arenaName: 'Court 1',
    homeTeamName: 'Iga Swiatek',
    awayTeamName: 'Aryna Sabalenka',
    homeTeamScore: scoreEntity,
    awayTeamScore: scoreEntity,
  );
  final tMatchesList = [tMatch1, tMatch2];

  setUp(() {
    mockGetLiveScoresUseCase = MockGetLiveScoresUseCase();
  });

  test('Initial state should be LiveScoreState.initial', () {
    expect(
      LiveScoreBloc(mockGetLiveScoresUseCase).state,
      const LiveScoreState.initial(),
    );
  });

  group('WatchLiveScoresStarted', () {
    blocTest<LiveScoreBloc, LiveScoreState>(
      'should emit [loading, loaded] when UseCase returns data successfully',
      setUp: () {
        when(
          mockGetLiveScoresUseCase.call(any),
        ).thenAnswer((_) => Stream.value(tMatchesList));
      },
      build: () => LiveScoreBloc(mockGetLiveScoresUseCase),

      act: (bloc) => bloc.add(const LiveScoreEvent.watchLiveScoresStarted()),

      expect: () => [
        const LiveScoreState.loading(),
        LiveScoreState.loaded(
          allMatches: tMatchesList,
          filteredMatches: tMatchesList,
          searchQuery: '',
        ),
      ],

      verify: (_) {
        verify(mockGetLiveScoresUseCase.call(any)).called(1);
      },
    );

    blocTest<LiveScoreBloc, LiveScoreState>(
      'should emit [loading, error] when UseCase returns an error',
      setUp: () {
        when(
          mockGetLiveScoresUseCase.call(any),
        ).thenAnswer((_) => Stream.error('Network error'));
      },
      build: () => LiveScoreBloc(mockGetLiveScoresUseCase),
      act: (bloc) => bloc.add(const LiveScoreEvent.watchLiveScoresStarted()),
      expect: () => [
        const LiveScoreState.loading(),
        const LiveScoreState.error('Network error'),
      ],
    );
  });

  group('SearchQueryChanged', () {
    blocTest<LiveScoreBloc, LiveScoreState>(
      'should emit [loaded] with a correctly filtered list',
      seed: () => LiveScoreState.loaded(
        allMatches: tMatchesList,
        filteredMatches: tMatchesList,
      ),
      build: () => LiveScoreBloc(mockGetLiveScoresUseCase),
      act: (bloc) => bloc.add(const LiveScoreEvent.searchQueryChanged('Nadal')),

      expect: () => [
        LiveScoreState.loaded(
          allMatches: tMatchesList,
          filteredMatches: [tMatch1],
          searchQuery: 'Nadal',
        ),
      ],
    );

    blocTest<LiveScoreBloc, LiveScoreState>(
      'should emit [loaded] with the full list when the query is empty',
      seed: () => LiveScoreState.loaded(
        allMatches: tMatchesList,

        filteredMatches: [tMatch1],
        searchQuery: 'Nadal',
      ),
      build: () => LiveScoreBloc(mockGetLiveScoresUseCase),
      act: (bloc) => bloc.add(const LiveScoreEvent.searchQueryChanged('')),
      expect: () => [
        LiveScoreState.loaded(
          allMatches: tMatchesList,
          filteredMatches: tMatchesList,
          searchQuery: '',
        ),
      ],
    );
  });

  group('Interaction between events', () {
    blocTest<LiveScoreBloc, LiveScoreState>(
      'should correctly filter new data if the query already exists',
      seed: () => LiveScoreState.loaded(
        allMatches: [],
        filteredMatches: [],
        searchQuery: 'Iga',
      ),
      setUp: () {
        when(
          mockGetLiveScoresUseCase.call(any),
        ).thenAnswer((_) => Stream.value(tMatchesList));
      },
      build: () => LiveScoreBloc(mockGetLiveScoresUseCase),
      act: (bloc) => bloc.add(const LiveScoreEvent.watchLiveScoresStarted()),
      expect: () => [
        LiveScoreState.loaded(
          allMatches: tMatchesList,
          filteredMatches: [tMatch2],
          searchQuery: 'Iga',
        ),
      ],
    );
  });
}
