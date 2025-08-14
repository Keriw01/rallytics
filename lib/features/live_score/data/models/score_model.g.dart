// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreMOdelImpl _$$ScoreMOdelImplFromJson(Map<String, dynamic> json) =>
    _$ScoreMOdelImpl(
      current: (json['current'] as num).toInt(),
      period1: (json['period_1'] as num?)?.toInt(),
      period2: (json['period_2'] as num?)?.toInt(),
      period3: (json['period_3'] as num?)?.toInt(),
      period4: (json['period_4'] as num?)?.toInt(),
      period5: (json['period_5'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ScoreMOdelImplToJson(_$ScoreMOdelImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'period_1': instance.period1,
      'period_2': instance.period2,
      'period_3': instance.period3,
      'period_4': instance.period4,
      'period_5': instance.period5,
    };
