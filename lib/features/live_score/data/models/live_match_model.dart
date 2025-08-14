import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';
import 'package:rallytics/features/live_score/data/models/score_model.dart';

part 'live_match_model.freezed.dart';
part 'live_match_model.g.dart';

@freezed
class LiveMatchModel with _$LiveMatchModel {
  const LiveMatchModel._();

  const factory LiveMatchModel({
    required int id,
    required String name,
    @JsonKey(name: 'tournament_name') required String tournamentName,
    @JsonKey(name: 'season_name') required String seasonName,
    @JsonKey(name: 'arena_name') required String? arenaName,
    @JsonKey(name: 'home_team_name') required String homeTeamName,
    @JsonKey(name: 'away_team_name') required String awayTeamName,
    @JsonKey(name: 'home_team_hash_image') String? homeTeamHashImage,
    @JsonKey(name: 'away_team_hash_image') String? awayTeamHashImage,
    @JsonKey(name: 'home_team_score') required ScoreModel homeTeamScore,
    @JsonKey(name: 'away_team_score') required ScoreModel awayTeamScore,
  }) = _LiveMatchModel;

  factory LiveMatchModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return LiveMatchModel.fromJson(data);
  }

  LiveMatchEntity toEntity() {
    return LiveMatchEntity(
      id: id,
      name: name,
      tournamentName: tournamentName,
      seasonName: seasonName,
      arenaName: arenaName,
      homeTeamName: homeTeamName,
      awayTeamName: awayTeamName,
      homeTeamHashImage: homeTeamHashImage,
      awayTeamHashImage: awayTeamHashImage,
      homeTeamScore: homeTeamScore.toEntity(),
      awayTeamScore: awayTeamScore.toEntity(),
    );
  }

  factory LiveMatchModel.fromJson(Map<String, dynamic> json) =>
      _$LiveMatchModelFromJson(json);
}
