// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_match_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LiveMatchModel _$LiveMatchModelFromJson(Map<String, dynamic> json) {
  return _LiveMatchModel.fromJson(json);
}

/// @nodoc
mixin _$LiveMatchModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tournament_name')
  String get tournamentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_name')
  String get seasonName => throw _privateConstructorUsedError;
  @JsonKey(name: 'arena_name')
  String? get arenaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_team_name')
  String get homeTeamName => throw _privateConstructorUsedError;
  @JsonKey(name: 'away_team_name')
  String get awayTeamName => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_team_hash_image')
  String? get homeTeamHashImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'away_team_hash_image')
  String? get awayTeamHashImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_team_score')
  ScoreModel get homeTeamScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'away_team_score')
  ScoreModel get awayTeamScore => throw _privateConstructorUsedError;

  /// Serializes this LiveMatchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LiveMatchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveMatchModelCopyWith<LiveMatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMatchModelCopyWith<$Res> {
  factory $LiveMatchModelCopyWith(
    LiveMatchModel value,
    $Res Function(LiveMatchModel) then,
  ) = _$LiveMatchModelCopyWithImpl<$Res, LiveMatchModel>;
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'tournament_name') String tournamentName,
    @JsonKey(name: 'season_name') String seasonName,
    @JsonKey(name: 'arena_name') String? arenaName,
    @JsonKey(name: 'home_team_name') String homeTeamName,
    @JsonKey(name: 'away_team_name') String awayTeamName,
    @JsonKey(name: 'home_team_hash_image') String? homeTeamHashImage,
    @JsonKey(name: 'away_team_hash_image') String? awayTeamHashImage,
    @JsonKey(name: 'home_team_score') ScoreModel homeTeamScore,
    @JsonKey(name: 'away_team_score') ScoreModel awayTeamScore,
  });

  $ScoreModelCopyWith<$Res> get homeTeamScore;
  $ScoreModelCopyWith<$Res> get awayTeamScore;
}

/// @nodoc
class _$LiveMatchModelCopyWithImpl<$Res, $Val extends LiveMatchModel>
    implements $LiveMatchModelCopyWith<$Res> {
  _$LiveMatchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveMatchModel
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
                      as ScoreModel,
            awayTeamScore: null == awayTeamScore
                ? _value.awayTeamScore
                : awayTeamScore // ignore: cast_nullable_to_non_nullable
                      as ScoreModel,
          )
          as $Val,
    );
  }

  /// Create a copy of LiveMatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoreModelCopyWith<$Res> get homeTeamScore {
    return $ScoreModelCopyWith<$Res>(_value.homeTeamScore, (value) {
      return _then(_value.copyWith(homeTeamScore: value) as $Val);
    });
  }

  /// Create a copy of LiveMatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoreModelCopyWith<$Res> get awayTeamScore {
    return $ScoreModelCopyWith<$Res>(_value.awayTeamScore, (value) {
      return _then(_value.copyWith(awayTeamScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LiveMatchModelImplCopyWith<$Res>
    implements $LiveMatchModelCopyWith<$Res> {
  factory _$$LiveMatchModelImplCopyWith(
    _$LiveMatchModelImpl value,
    $Res Function(_$LiveMatchModelImpl) then,
  ) = __$$LiveMatchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'tournament_name') String tournamentName,
    @JsonKey(name: 'season_name') String seasonName,
    @JsonKey(name: 'arena_name') String? arenaName,
    @JsonKey(name: 'home_team_name') String homeTeamName,
    @JsonKey(name: 'away_team_name') String awayTeamName,
    @JsonKey(name: 'home_team_hash_image') String? homeTeamHashImage,
    @JsonKey(name: 'away_team_hash_image') String? awayTeamHashImage,
    @JsonKey(name: 'home_team_score') ScoreModel homeTeamScore,
    @JsonKey(name: 'away_team_score') ScoreModel awayTeamScore,
  });

  @override
  $ScoreModelCopyWith<$Res> get homeTeamScore;
  @override
  $ScoreModelCopyWith<$Res> get awayTeamScore;
}

/// @nodoc
class __$$LiveMatchModelImplCopyWithImpl<$Res>
    extends _$LiveMatchModelCopyWithImpl<$Res, _$LiveMatchModelImpl>
    implements _$$LiveMatchModelImplCopyWith<$Res> {
  __$$LiveMatchModelImplCopyWithImpl(
    _$LiveMatchModelImpl _value,
    $Res Function(_$LiveMatchModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LiveMatchModel
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
      _$LiveMatchModelImpl(
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
                  as ScoreModel,
        awayTeamScore: null == awayTeamScore
            ? _value.awayTeamScore
            : awayTeamScore // ignore: cast_nullable_to_non_nullable
                  as ScoreModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveMatchModelImpl extends _LiveMatchModel {
  const _$LiveMatchModelImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'tournament_name') required this.tournamentName,
    @JsonKey(name: 'season_name') required this.seasonName,
    @JsonKey(name: 'arena_name') required this.arenaName,
    @JsonKey(name: 'home_team_name') required this.homeTeamName,
    @JsonKey(name: 'away_team_name') required this.awayTeamName,
    @JsonKey(name: 'home_team_hash_image') this.homeTeamHashImage,
    @JsonKey(name: 'away_team_hash_image') this.awayTeamHashImage,
    @JsonKey(name: 'home_team_score') required this.homeTeamScore,
    @JsonKey(name: 'away_team_score') required this.awayTeamScore,
  }) : super._();

  factory _$LiveMatchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveMatchModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'tournament_name')
  final String tournamentName;
  @override
  @JsonKey(name: 'season_name')
  final String seasonName;
  @override
  @JsonKey(name: 'arena_name')
  final String? arenaName;
  @override
  @JsonKey(name: 'home_team_name')
  final String homeTeamName;
  @override
  @JsonKey(name: 'away_team_name')
  final String awayTeamName;
  @override
  @JsonKey(name: 'home_team_hash_image')
  final String? homeTeamHashImage;
  @override
  @JsonKey(name: 'away_team_hash_image')
  final String? awayTeamHashImage;
  @override
  @JsonKey(name: 'home_team_score')
  final ScoreModel homeTeamScore;
  @override
  @JsonKey(name: 'away_team_score')
  final ScoreModel awayTeamScore;

  @override
  String toString() {
    return 'LiveMatchModel(id: $id, name: $name, tournamentName: $tournamentName, seasonName: $seasonName, arenaName: $arenaName, homeTeamName: $homeTeamName, awayTeamName: $awayTeamName, homeTeamHashImage: $homeTeamHashImage, awayTeamHashImage: $awayTeamHashImage, homeTeamScore: $homeTeamScore, awayTeamScore: $awayTeamScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveMatchModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of LiveMatchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveMatchModelImplCopyWith<_$LiveMatchModelImpl> get copyWith =>
      __$$LiveMatchModelImplCopyWithImpl<_$LiveMatchModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveMatchModelImplToJson(this);
  }
}

abstract class _LiveMatchModel extends LiveMatchModel {
  const factory _LiveMatchModel({
    required final int id,
    required final String name,
    @JsonKey(name: 'tournament_name') required final String tournamentName,
    @JsonKey(name: 'season_name') required final String seasonName,
    @JsonKey(name: 'arena_name') required final String? arenaName,
    @JsonKey(name: 'home_team_name') required final String homeTeamName,
    @JsonKey(name: 'away_team_name') required final String awayTeamName,
    @JsonKey(name: 'home_team_hash_image') final String? homeTeamHashImage,
    @JsonKey(name: 'away_team_hash_image') final String? awayTeamHashImage,
    @JsonKey(name: 'home_team_score') required final ScoreModel homeTeamScore,
    @JsonKey(name: 'away_team_score') required final ScoreModel awayTeamScore,
  }) = _$LiveMatchModelImpl;
  const _LiveMatchModel._() : super._();

  factory _LiveMatchModel.fromJson(Map<String, dynamic> json) =
      _$LiveMatchModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'tournament_name')
  String get tournamentName;
  @override
  @JsonKey(name: 'season_name')
  String get seasonName;
  @override
  @JsonKey(name: 'arena_name')
  String? get arenaName;
  @override
  @JsonKey(name: 'home_team_name')
  String get homeTeamName;
  @override
  @JsonKey(name: 'away_team_name')
  String get awayTeamName;
  @override
  @JsonKey(name: 'home_team_hash_image')
  String? get homeTeamHashImage;
  @override
  @JsonKey(name: 'away_team_hash_image')
  String? get awayTeamHashImage;
  @override
  @JsonKey(name: 'home_team_score')
  ScoreModel get homeTeamScore;
  @override
  @JsonKey(name: 'away_team_score')
  ScoreModel get awayTeamScore;

  /// Create a copy of LiveMatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveMatchModelImplCopyWith<_$LiveMatchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
