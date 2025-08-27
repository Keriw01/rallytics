// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) {
  return _ScoreMOdel.fromJson(json);
}

/// @nodoc
mixin _$ScoreModel {
  int get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_1')
  int? get period1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_2')
  int? get period2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_3')
  int? get period3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_4')
  int? get period4 => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_5')
  int? get period5 => throw _privateConstructorUsedError;

  /// Serializes this ScoreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreModelCopyWith<ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreModelCopyWith<$Res> {
  factory $ScoreModelCopyWith(
    ScoreModel value,
    $Res Function(ScoreModel) then,
  ) = _$ScoreModelCopyWithImpl<$Res, ScoreModel>;
  @useResult
  $Res call({
    int current,
    @JsonKey(name: 'period_1') int? period1,
    @JsonKey(name: 'period_2') int? period2,
    @JsonKey(name: 'period_3') int? period3,
    @JsonKey(name: 'period_4') int? period4,
    @JsonKey(name: 'period_5') int? period5,
  });
}

/// @nodoc
class _$ScoreModelCopyWithImpl<$Res, $Val extends ScoreModel>
    implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? period1 = freezed,
    Object? period2 = freezed,
    Object? period3 = freezed,
    Object? period4 = freezed,
    Object? period5 = freezed,
  }) {
    return _then(
      _value.copyWith(
            current: null == current
                ? _value.current
                : current // ignore: cast_nullable_to_non_nullable
                      as int,
            period1: freezed == period1
                ? _value.period1
                : period1 // ignore: cast_nullable_to_non_nullable
                      as int?,
            period2: freezed == period2
                ? _value.period2
                : period2 // ignore: cast_nullable_to_non_nullable
                      as int?,
            period3: freezed == period3
                ? _value.period3
                : period3 // ignore: cast_nullable_to_non_nullable
                      as int?,
            period4: freezed == period4
                ? _value.period4
                : period4 // ignore: cast_nullable_to_non_nullable
                      as int?,
            period5: freezed == period5
                ? _value.period5
                : period5 // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScoreMOdelImplCopyWith<$Res>
    implements $ScoreModelCopyWith<$Res> {
  factory _$$ScoreMOdelImplCopyWith(
    _$ScoreMOdelImpl value,
    $Res Function(_$ScoreMOdelImpl) then,
  ) = __$$ScoreMOdelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int current,
    @JsonKey(name: 'period_1') int? period1,
    @JsonKey(name: 'period_2') int? period2,
    @JsonKey(name: 'period_3') int? period3,
    @JsonKey(name: 'period_4') int? period4,
    @JsonKey(name: 'period_5') int? period5,
  });
}

/// @nodoc
class __$$ScoreMOdelImplCopyWithImpl<$Res>
    extends _$ScoreModelCopyWithImpl<$Res, _$ScoreMOdelImpl>
    implements _$$ScoreMOdelImplCopyWith<$Res> {
  __$$ScoreMOdelImplCopyWithImpl(
    _$ScoreMOdelImpl _value,
    $Res Function(_$ScoreMOdelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? period1 = freezed,
    Object? period2 = freezed,
    Object? period3 = freezed,
    Object? period4 = freezed,
    Object? period5 = freezed,
  }) {
    return _then(
      _$ScoreMOdelImpl(
        current: null == current
            ? _value.current
            : current // ignore: cast_nullable_to_non_nullable
                  as int,
        period1: freezed == period1
            ? _value.period1
            : period1 // ignore: cast_nullable_to_non_nullable
                  as int?,
        period2: freezed == period2
            ? _value.period2
            : period2 // ignore: cast_nullable_to_non_nullable
                  as int?,
        period3: freezed == period3
            ? _value.period3
            : period3 // ignore: cast_nullable_to_non_nullable
                  as int?,
        period4: freezed == period4
            ? _value.period4
            : period4 // ignore: cast_nullable_to_non_nullable
                  as int?,
        period5: freezed == period5
            ? _value.period5
            : period5 // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreMOdelImpl extends _ScoreMOdel {
  const _$ScoreMOdelImpl({
    required this.current,
    @JsonKey(name: 'period_1') this.period1,
    @JsonKey(name: 'period_2') this.period2,
    @JsonKey(name: 'period_3') this.period3,
    @JsonKey(name: 'period_4') this.period4,
    @JsonKey(name: 'period_5') this.period5,
  }) : super._();

  factory _$ScoreMOdelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreMOdelImplFromJson(json);

  @override
  final int current;
  @override
  @JsonKey(name: 'period_1')
  final int? period1;
  @override
  @JsonKey(name: 'period_2')
  final int? period2;
  @override
  @JsonKey(name: 'period_3')
  final int? period3;
  @override
  @JsonKey(name: 'period_4')
  final int? period4;
  @override
  @JsonKey(name: 'period_5')
  final int? period5;

  @override
  String toString() {
    return 'ScoreModel(current: $current, period1: $period1, period2: $period2, period3: $period3, period4: $period4, period5: $period5)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreMOdelImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.period1, period1) || other.period1 == period1) &&
            (identical(other.period2, period2) || other.period2 == period2) &&
            (identical(other.period3, period3) || other.period3 == period3) &&
            (identical(other.period4, period4) || other.period4 == period4) &&
            (identical(other.period5, period5) || other.period5 == period5));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    current,
    period1,
    period2,
    period3,
    period4,
    period5,
  );

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreMOdelImplCopyWith<_$ScoreMOdelImpl> get copyWith =>
      __$$ScoreMOdelImplCopyWithImpl<_$ScoreMOdelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreMOdelImplToJson(this);
  }
}

abstract class _ScoreMOdel extends ScoreModel {
  const factory _ScoreMOdel({
    required final int current,
    @JsonKey(name: 'period_1') final int? period1,
    @JsonKey(name: 'period_2') final int? period2,
    @JsonKey(name: 'period_3') final int? period3,
    @JsonKey(name: 'period_4') final int? period4,
    @JsonKey(name: 'period_5') final int? period5,
  }) = _$ScoreMOdelImpl;
  const _ScoreMOdel._() : super._();

  factory _ScoreMOdel.fromJson(Map<String, dynamic> json) =
      _$ScoreMOdelImpl.fromJson;

  @override
  int get current;
  @override
  @JsonKey(name: 'period_1')
  int? get period1;
  @override
  @JsonKey(name: 'period_2')
  int? get period2;
  @override
  @JsonKey(name: 'period_3')
  int? get period3;
  @override
  @JsonKey(name: 'period_4')
  int? get period4;
  @override
  @JsonKey(name: 'period_5')
  int? get period5;

  /// Create a copy of ScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreMOdelImplCopyWith<_$ScoreMOdelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
