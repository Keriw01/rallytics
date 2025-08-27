import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/features/live_score/domain/entities/score_entity.dart';

part 'score_model.freezed.dart';
part 'score_model.g.dart';

@freezed
class ScoreModel with _$ScoreModel {
  const ScoreModel._();

  const factory ScoreModel({
    required int current,
    @JsonKey(name: 'period_1') int? period1,
    @JsonKey(name: 'period_2') int? period2,
    @JsonKey(name: 'period_3') int? period3,
    @JsonKey(name: 'period_4') int? period4,
    @JsonKey(name: 'period_5') int? period5,
  }) = _ScoreMOdel;

  factory ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);

  ScoreEntity toEntity() {
    return ScoreEntity(
      current: current,
      period1: period1,
      period2: period2,
      period3: period3,
      period4: period4,
      period5: period5,
    );
  }
}
