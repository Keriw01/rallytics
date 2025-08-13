import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';

part 'live_score_state.freezed.dart';

@freezed
class LiveScoreState with _$LiveScoreState {
  const factory LiveScoreState.initial() = _Initial;
  const factory LiveScoreState.loading() = _Loading;
  const factory LiveScoreState.loaded({
    @Default([]) List<LiveMatchEntity> allMatches,
    @Default([]) List<LiveMatchEntity> filteredMatches,
    @Default('') String searchQuery,
  }) = Loaded;
  const factory LiveScoreState.error(String message) = _Error;
}
