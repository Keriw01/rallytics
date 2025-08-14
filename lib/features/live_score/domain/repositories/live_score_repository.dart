import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';

abstract class LiveScoreRepository {
  Stream<List<LiveMatchEntity>> getLiveScores();
}
