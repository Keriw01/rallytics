// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ScoreEntity {
  int get current => throw _privateConstructorUsedError;
  int? get period1 => throw _privateConstructorUsedError;
  int? get period2 => throw _privateConstructorUsedError;
  int? get period3 => throw _privateConstructorUsedError;
  int? get period4 => throw _privateConstructorUsedError;
  int? get period5 => throw _privateConstructorUsedError;

  /// Create a copy of ScoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreEntityCopyWith<ScoreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreEntityCopyWith<$Res> {
  factory $ScoreEntityCopyWith(
    ScoreEntity value,
    $Res Function(ScoreEntity) then,
  ) = _$ScoreEntityCopyWithImpl<$Res, ScoreEntity>;
  @useResult
  $Res call({
    int current,
    int? period1,
    int? period2,
    int? period3,
    int? period4,
    int? period5,
  });
}

/// @nodoc
class _$ScoreEntityCopyWithImpl<$Res, $Val extends ScoreEntity>
    implements $ScoreEntityCopyWith<$Res> {
  _$ScoreEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreEntity
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
abstract class _$$ScoreEntityImplCopyWith<$Res>
    implements $ScoreEntityCopyWith<$Res> {
  factory _$$ScoreEntityImplCopyWith(
    _$ScoreEntityImpl value,
    $Res Function(_$ScoreEntityImpl) then,
  ) = __$$ScoreEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int current,
    int? period1,
    int? period2,
    int? period3,
    int? period4,
    int? period5,
  });
}

/// @nodoc
class __$$ScoreEntityImplCopyWithImpl<$Res>
    extends _$ScoreEntityCopyWithImpl<$Res, _$ScoreEntityImpl>
    implements _$$ScoreEntityImplCopyWith<$Res> {
  __$$ScoreEntityImplCopyWithImpl(
    _$ScoreEntityImpl _value,
    $Res Function(_$ScoreEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScoreEntity
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
      _$ScoreEntityImpl(
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

class _$ScoreEntityImpl extends _ScoreEntity {
  const _$ScoreEntityImpl({
    required this.current,
    this.period1,
    this.period2,
    this.period3,
    this.period4,
    this.period5,
  }) : super._();

  @override
  final int current;
  @override
  final int? period1;
  @override
  final int? period2;
  @override
  final int? period3;
  @override
  final int? period4;
  @override
  final int? period5;

  @override
  String toString() {
    return 'ScoreEntity(current: $current, period1: $period1, period2: $period2, period3: $period3, period4: $period4, period5: $period5)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreEntityImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.period1, period1) || other.period1 == period1) &&
            (identical(other.period2, period2) || other.period2 == period2) &&
            (identical(other.period3, period3) || other.period3 == period3) &&
            (identical(other.period4, period4) || other.period4 == period4) &&
            (identical(other.period5, period5) || other.period5 == period5));
  }

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

  /// Create a copy of ScoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreEntityImplCopyWith<_$ScoreEntityImpl> get copyWith =>
      __$$ScoreEntityImplCopyWithImpl<_$ScoreEntityImpl>(this, _$identity);
}

abstract class _ScoreEntity extends ScoreEntity {
  const factory _ScoreEntity({
    required final int current,
    final int? period1,
    final int? period2,
    final int? period3,
    final int? period4,
    final int? period5,
  }) = _$ScoreEntityImpl;
  const _ScoreEntity._() : super._();

  @override
  int get current;
  @override
  int? get period1;
  @override
  int? get period2;
  @override
  int? get period3;
  @override
  int? get period4;
  @override
  int? get period5;

  /// Create a copy of ScoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreEntityImplCopyWith<_$ScoreEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
