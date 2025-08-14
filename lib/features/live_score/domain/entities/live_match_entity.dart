import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/features/live_score/domain/entities/score_entity.dart';

part 'live_match_entity.freezed.dart';

@freezed
class LiveMatchEntity with _$LiveMatchEntity {
  const factory LiveMatchEntity({
    required int id,
    required String name,
    required String tournamentName,
    required String seasonName,
    required String? arenaName,
    required String homeTeamName,
    required String awayTeamName,
    String? homeTeamHashImage,
    String? awayTeamHashImage,
    required ScoreEntity homeTeamScore,
    required ScoreEntity awayTeamScore,
  }) = _LiveMatchEntity;
}
