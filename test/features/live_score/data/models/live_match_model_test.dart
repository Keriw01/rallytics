import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:rallytics/features/live_score/data/models/live_match_model.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';

void main() {
  group('LiveMatchModel', () {
    final tMatchJson = {
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

    final tLiveMatchModel = LiveMatchModel.fromJson(tMatchJson);

    test('should correctly create a model from JSON', () {
      expect(tLiveMatchModel, isA<LiveMatchModel>());
      expect(tLiveMatchModel.id, 1394815);
      expect(tLiveMatchModel.homeTeamName, 'B. Arias / C. Prado Angelo J');
      expect(tLiveMatchModel.homeTeamScore.current, 0);
    });

    test('should correctly convert the model to an entity', () {
      final resultEntity = tLiveMatchModel.toEntity();

      expect(resultEntity, isA<LiveMatchEntity>());
      expect(resultEntity.id, tLiveMatchModel.id);
      expect(resultEntity.homeTeamName, tLiveMatchModel.homeTeamName);
      expect(
        resultEntity.homeTeamScore.current,
        tLiveMatchModel.homeTeamScore.current,
      );
    });

    test(
      'should correctly create a model from DocumentSnapshot (from fake_cloud_firestore)',
      () async {
        final firestore = FakeFirebaseFirestore();
        final docRef = firestore.collection('live_matches').doc('123');
        await docRef.set(tMatchJson);
        final snapshot = await docRef.get();

        final resultModel = LiveMatchModel.fromFirestore(snapshot);

        expect(resultModel, tLiveMatchModel);
      },
    );
  });
}
