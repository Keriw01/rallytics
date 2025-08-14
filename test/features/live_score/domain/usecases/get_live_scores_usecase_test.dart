import 'package:flutter_test/flutter_test.dart';
import 'package:rallytics/features/live_score/domain/usecases/get_live_scores_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';
import 'package:rallytics/features/live_score/domain/entities/score_entity.dart';
import 'package:rallytics/features/live_score/domain/repositories/live_score_repository.dart';

import 'get_live_scores_usecase_test.mocks.dart';

@GenerateMocks([LiveScoreRepository])
void main() {
  late GetLiveScoresUseCase useCase;
  late MockLiveScoreRepository mockLiveScoreRepository;

  setUp(() {
    mockLiveScoreRepository = MockLiveScoreRepository();
    useCase = GetLiveScoresUseCase(mockLiveScoreRepository);
  });

  const scoreEntity = ScoreEntity(current: 0);
  final tLiveMatchEntity = const LiveMatchEntity(
    id: 1,
    name: 'Test Match',
    tournamentName: 'Test Tour',
    seasonName: '2023',
    arenaName: null,
    homeTeamName: 'Home',
    awayTeamName: 'Away',
    homeTeamHashImage: null,
    awayTeamHashImage: null,
    homeTeamScore: scoreEntity,
    awayTeamScore: scoreEntity,
  );
  final tMatchesList = [tLiveMatchEntity];

  final tMatchesStream = Stream.value(tMatchesList);

  test('should correctly filter new data if the query already exists', () {
    when(
      mockLiveScoreRepository.getLiveScores(),
    ).thenAnswer((_) => tMatchesStream);

    final resultStream = useCase(NoParams());

    expect(resultStream, tMatchesStream);

    verify(mockLiveScoreRepository.getLiveScores());

    verifyNoMoreInteractions(mockLiveScoreRepository);
  });
}
