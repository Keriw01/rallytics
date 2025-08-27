import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_score_event.freezed.dart';

@freezed
class LiveScoreEvent with _$LiveScoreEvent {
  const factory LiveScoreEvent.watchLiveScoresStarted() =
      WatchLiveScoresStarted;
  const factory LiveScoreEvent.searchQueryChanged(String query) =
      SearchQueryChanged;
}
