// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveMatchModelImpl _$$LiveMatchModelImplFromJson(Map<String, dynamic> json) =>
    _$LiveMatchModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      tournamentName: json['tournament_name'] as String,
      seasonName: json['season_name'] as String,
      arenaName: json['arena_name'] as String?,
      homeTeamName: json['home_team_name'] as String,
      awayTeamName: json['away_team_name'] as String,
      homeTeamHashImage: json['home_team_hash_image'] as String?,
      awayTeamHashImage: json['away_team_hash_image'] as String?,
      homeTeamScore: ScoreModel.fromJson(
        json['home_team_score'] as Map<String, dynamic>,
      ),
      awayTeamScore: ScoreModel.fromJson(
        json['away_team_score'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$LiveMatchModelImplToJson(
  _$LiveMatchModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'tournament_name': instance.tournamentName,
  'season_name': instance.seasonName,
  'arena_name': instance.arenaName,
  'home_team_name': instance.homeTeamName,
  'away_team_name': instance.awayTeamName,
  'home_team_hash_image': instance.homeTeamHashImage,
  'away_team_hash_image': instance.awayTeamHashImage,
  'home_team_score': instance.homeTeamScore,
  'away_team_score': instance.awayTeamScore,
};
