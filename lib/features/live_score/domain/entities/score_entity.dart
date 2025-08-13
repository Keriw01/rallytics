import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_entity.freezed.dart';

@freezed
class ScoreEntity with _$ScoreEntity {
  const ScoreEntity._();

  const factory ScoreEntity({
    required int current,
    int? period1,
    int? period2,
    int? period3,
    int? period4,
    int? period5,
  }) = _ScoreEntity;

  String get setScoresDisplay {
    final scores = [period1, period2, period3, period4, period5];
    return scores
        .where((s) => s != null)
        .map((s) => s?.toString() ?? '-')
        .join(' | ');
  }
}
