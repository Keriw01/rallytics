// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_match_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LiveMatchEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tournamentName => throw _privateConstructorUsedError;
  String get seasonName => throw _privateConstructorUsedError;
  String? get arenaName => throw _privateConstructorUsedError;
  String get homeTeamName => throw _privateConstructorUsedError;
  String get awayTeamName => throw _privateConstructorUsedError;
  String? get homeTeamHashImage => throw _privateConstructorUsedError;
  String? get awayTeamHashImage => throw _privateConstructorUsedError;
  ScoreEntity get homeTeamScore => throw _privateConstructorUsedError;
  ScoreEntity get awayTeamScore => throw _privateConstructorUsedError;

  /// Create a copy of LiveMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveMatchEntityCopyWith<LiveMatchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMatchEntityCopyWith<$Res> {
  factory $LiveMatchEntityCopyWith(
    LiveMatchEntity value,
    $Res Function(LiveMatchEntity) then,
  ) = _$LiveMatchEntityCopyWithImpl<$Res, LiveMatchEntity>;
  @useResult
  $Res call({
    int id,
    String name,
    String tournamentName,
    String seasonName,
    String? arenaName,
    String homeTeamName,
    String awayTeamName,
    String? homeTeamHashImage,
    String? awayTeamHashImage,
    ScoreEntity homeTeamScore,
    ScoreEntity awayTeamScore,
  });

  $ScoreEntityCopyWith<$Res> get homeTeamScore;
  $ScoreEntityCopyWith<$Res> get awayTeamScore;
}

/// @nodoc
class _$LiveMatchEntityCopyWithImpl<$Res, $Val extends LiveMatchEntity>
    implements $LiveMatchEntityCopyWith<$Res> {
  _$LiveMatchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tournamentName = null,
    Object? seasonName = null,
    Object? arenaName = freezed,
    Object? homeTeamName = null,
    Object? awayTeamName = null,
    Object? homeTeamHashImage = freezed,
    Object? awayTeamHashImage = freezed,
    Object? homeTeamScore = null,
    Object? awayTeamScore = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            tournamentName: null == tournamentName
                ? _value.tournamentName
                : tournamentName // ignore: cast_nullable_to_non_nullable
                      as String,
            seasonName: null == seasonName
                ? _value.seasonName
                : seasonName // ignore: cast_nullable_to_non_nullable
                      as String,
            arenaName: freezed == arenaName
                ? _value.arenaName
                : arenaName // ignore: cast_nullable_to_non_nullable
                      as String?,
            homeTeamName: null == homeTeamName
                ? _value.homeTeamName
                : homeTeamName // ignore: cast_nullable_to_non_nullable
                      as String,
            awayTeamName: null == awayTeamName
                ? _value.awayTeamName
                : awayTeamName // ignore: cast_nullable_to_non_nullable
                      as String,
            homeTeamHashImage: freezed == homeTeamHashImage
                ? _value.homeTeamHashImage
                : homeTeamHashImage // ignore: cast_nullable_to_non_nullable
                      as String?,
            awayTeamHashImage: freezed == awayTeamHashImage
                ? _value.awayTeamHashImage
                : awayTeamHashImage // ignore: cast_nullable_to_non_nullable
                      as String?,
            homeTeamScore: null == homeTeamScore
                ? _value.homeTeamScore
                : homeTeamScore // ignore: cast_nullable_to_non_nullable
                      as ScoreEntity,
            awayTeamScore: null == awayTeamScore
                ? _value.awayTeamScore
                : awayTeamScore // ignore: cast_nullable_to_non_nullable
                      as ScoreEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of LiveMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoreEntityCopyWith<$Res> get homeTeamScore {
    return $ScoreEntityCopyWith<$Res>(_value.homeTeamScore, (value) {
      return _then(_value.copyWith(homeTeamScore: value) as $Val);
    });
  }

  /// Create a copy of LiveMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoreEntityCopyWith<$Res> get awayTeamScore {
    return $ScoreEntityCopyWith<$Res>(_value.awayTeamScore, (value) {
      return _then(_value.copyWith(awayTeamScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LiveMatchEntityImplCopyWith<$Res>
    implements $LiveMatchEntityCopyWith<$Res> {
  factory _$$LiveMatchEntityImplCopyWith(
    _$LiveMatchEntityImpl value,
    $Res Function(_$LiveMatchEntityImpl) then,
  ) = __$$LiveMatchEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String tournamentName,
    String seasonName,
    String? arenaName,
    String homeTeamName,
    String awayTeamName,
    String? homeTeamHashImage,
    String? awayTeamHashImage,
    ScoreEntity homeTeamScore,
    ScoreEntity awayTeamScore,
  });

  @override
  $ScoreEntityCopyWith<$Res> get homeTeamScore;
  @override
  $ScoreEntityCopyWith<$Res> get awayTeamScore;
}

/// @nodoc
class __$$LiveMatchEntityImplCopyWithImpl<$Res>
    extends _$LiveMatchEntityCopyWithImpl<$Res, _$LiveMatchEntityImpl>
    implements _$$LiveMatchEntityImplCopyWith<$Res> {
  __$$LiveMatchEntityImplCopyWithImpl(
    _$LiveMatchEntityImpl _value,
    $Res Function(_$LiveMatchEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LiveMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tournamentName = null,
    Object? seasonName = null,
    Object? arenaName = freezed,
    Object? homeTeamName = null,
    Object? awayTeamName = null,
    Object? homeTeamHashImage = freezed,
    Object? awayTeamHashImage = freezed,
    Object? homeTeamScore = null,
    Object? awayTeamScore = null,
  }) {
    return _then(
      _$LiveMatchEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        tournamentName: null == tournamentName
            ? _value.tournamentName
            : tournamentName // ignore: cast_nullable_to_non_nullable
                  as String,
        seasonName: null == seasonName
            ? _value.seasonName
            : seasonName // ignore: cast_nullable_to_non_nullable
                  as String,
        arenaName: freezed == arenaName
            ? _value.arenaName
            : arenaName // ignore: cast_nullable_to_non_nullable
                  as String?,
        homeTeamName: null == homeTeamName
            ? _value.homeTeamName
            : homeTeamName // ignore: cast_nullable_to_non_nullable
                  as String,
        awayTeamName: null == awayTeamName
            ? _value.awayTeamName
            : awayTeamName // ignore: cast_nullable_to_non_nullable
                  as String,
        homeTeamHashImage: freezed == homeTeamHashImage
            ? _value.homeTeamHashImage
            : homeTeamHashImage // ignore: cast_nullable_to_non_nullable
                  as String?,
        awayTeamHashImage: freezed == awayTeamHashImage
            ? _value.awayTeamHashImage
            : awayTeamHashImage // ignore: cast_nullable_to_non_nullable
                  as String?,
        homeTeamScore: null == homeTeamScore
            ? _value.homeTeamScore
            : homeTeamScore // ignore: cast_nullable_to_non_nullable
                  as ScoreEntity,
        awayTeamScore: null == awayTeamScore
            ? _value.awayTeamScore
            : awayTeamScore // ignore: cast_nullable_to_non_nullable
                  as ScoreEntity,
      ),
    );
  }
}

/// @nodoc

class _$LiveMatchEntityImpl implements _LiveMatchEntity {
  const _$LiveMatchEntityImpl({
    required this.id,
    required this.name,
    required this.tournamentName,
    required this.seasonName,
    required this.arenaName,
    required this.homeTeamName,
    required this.awayTeamName,
    this.homeTeamHashImage,
    this.awayTeamHashImage,
    required this.homeTeamScore,
    required this.awayTeamScore,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final String tournamentName;
  @override
  final String seasonName;
  @override
  final String? arenaName;
  @override
  final String homeTeamName;
  @override
  final String awayTeamName;
  @override
  final String? homeTeamHashImage;
  @override
  final String? awayTeamHashImage;
  @override
  final ScoreEntity homeTeamScore;
  @override
  final ScoreEntity awayTeamScore;

  @override
  String toString() {
    return 'LiveMatchEntity(id: $id, name: $name, tournamentName: $tournamentName, seasonName: $seasonName, arenaName: $arenaName, homeTeamName: $homeTeamName, awayTeamName: $awayTeamName, homeTeamHashImage: $homeTeamHashImage, awayTeamHashImage: $awayTeamHashImage, homeTeamScore: $homeTeamScore, awayTeamScore: $awayTeamScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveMatchEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tournamentName, tournamentName) ||
                other.tournamentName == tournamentName) &&
            (identical(other.seasonName, seasonName) ||
                other.seasonName == seasonName) &&
            (identical(other.arenaName, arenaName) ||
                other.arenaName == arenaName) &&
            (identical(other.homeTeamName, homeTeamName) ||
                other.homeTeamName == homeTeamName) &&
            (identical(other.awayTeamName, awayTeamName) ||
                other.awayTeamName == awayTeamName) &&
            (identical(other.homeTeamHashImage, homeTeamHashImage) ||
                other.homeTeamHashImage == homeTeamHashImage) &&
            (identical(other.awayTeamHashImage, awayTeamHashImage) ||
                other.awayTeamHashImage == awayTeamHashImage) &&
            (identical(other.homeTeamScore, homeTeamScore) ||
                other.homeTeamScore == homeTeamScore) &&
            (identical(other.awayTeamScore, awayTeamScore) ||
                other.awayTeamScore == awayTeamScore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    tournamentName,
    seasonName,
    arenaName,
    homeTeamName,
    awayTeamName,
    homeTeamHashImage,
    awayTeamHashImage,
    homeTeamScore,
    awayTeamScore,
  );

  /// Create a copy of LiveMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveMatchEntityImplCopyWith<_$LiveMatchEntityImpl> get copyWith =>
      __$$LiveMatchEntityImplCopyWithImpl<_$LiveMatchEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _LiveMatchEntity implements LiveMatchEntity {
  const factory _LiveMatchEntity({
    required final int id,
    required final String name,
    required final String tournamentName,
    required final String seasonName,
    required final String? arenaName,
    required final String homeTeamName,
    required final String awayTeamName,
    final String? homeTeamHashImage,
    final String? awayTeamHashImage,
    required final ScoreEntity homeTeamScore,
    required final ScoreEntity awayTeamScore,
  }) = _$LiveMatchEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get tournamentName;
  @override
  String get seasonName;
  @override
  String? get arenaName;
  @override
  String get homeTeamName;
  @override
  String get awayTeamName;
  @override
  String? get homeTeamHashImage;
  @override
  String? get awayTeamHashImage;
  @override
  ScoreEntity get homeTeamScore;
  @override
  ScoreEntity get awayTeamScore;

  /// Create a copy of LiveMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveMatchEntityImplCopyWith<_$LiveMatchEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
