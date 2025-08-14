import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/features/live_score/data/datasources/live_score_firestore_datasource.dart';
import 'package:rallytics/features/live_score/data/models/live_match_model.dart';
import 'package:rallytics/features/live_score/data/repositories/live_score_repository_impl.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';

import 'live_score_repository_impl_test.mocks.dart';

@GenerateMocks([LiveScoreDataSource, QuerySnapshot, QueryDocumentSnapshot])
void main() {
  late LiveScoreRepositoryImpl repository;
  late MockLiveScoreDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockLiveScoreDataSource();
    repository = LiveScoreRepositoryImpl(mockDataSource);
  });

  final tMatchData1 = {
    "id": 1394815,
    "name": "B. Arias / C. Prado Angelo J vs F. Romano / J. Vasami",
    "tournament_name": "Todi, Italy, Doubles",
    "season_name": "ATP Challenger Todi, Italy Men Doubles 2025",
    "arena_name": "Grandstand",
    "home_team_name": "B. Arias / C. Prado Angelo J",
    "home_team_hash_image":
        "9b84ef68da6e40b6814ad8b4b03dcf4a2134d031fb7f2219e7d3683a13acb37f",
    "away_team_name": "F. Romano / J. Vasami",
    "away_team_hash_image":
        "f71a154dbb17856055e565c2780e7bad4a9174cb463c233d9c9598151400901b",
    "home_team_score": {
      "current": 0,
      "display": 0,
      "period_1": 3,
      "period_2": 1,
    },
    "away_team_score": {
      "current": 1,
      "display": 1,
      "period_1": 6,
      "period_2": 2,
    },
  };

  final tLiveMatchModel1 = LiveMatchModel.fromJson(tMatchData1);

  final tLiveMatchEntity1 = tLiveMatchModel1.toEntity();

  final mockDocumentSnapshot = MockQueryDocumentSnapshot<Object?>();

  when(
    mockDocumentSnapshot.data(),
  ).thenReturn(tMatchData1 as Map<String, dynamic>);

  final mockQuerySnapshot = MockQuerySnapshot<Object?>();

  when(mockQuerySnapshot.docs).thenReturn([mockDocumentSnapshot]);

  group('getLiveScores', () {
    test(
      'should return a valid List<LiveMatchEntity> stream when the DataSource provides data',
      () {
        when(
          mockDataSource.getLiveScoresStream(),
        ).thenAnswer((_) => Stream.value(mockQuerySnapshot));

        final resultStream = repository.getLiveScores();

        expect(resultStream, emits([tLiveMatchEntity1]));
      },
    );

    test(
      'should return an empty stream when the DataSource provides empty data',
      () {
        final mockEmptyQuerySnapshot = MockQuerySnapshot<Object?>();
        when(mockEmptyQuerySnapshot.docs).thenReturn([]);

        when(
          mockDataSource.getLiveScoresStream(),
        ).thenAnswer((_) => Stream.value(mockEmptyQuerySnapshot));

        final resultStream = repository.getLiveScores();

        expect(resultStream, emits(<LiveMatchEntity>[]));
      },
    );

    test(
      'should pass the error on when the stream from the DataSource throws an error',
      () {
        final testException = Exception('Firestore connection error');
        when(
          mockDataSource.getLiveScoresStream(),
        ).thenAnswer((_) => Stream.error(testException));

        final resultStream = repository.getLiveScores();

        expect(resultStream, emitsError(testException));
      },
    );
  });
}
