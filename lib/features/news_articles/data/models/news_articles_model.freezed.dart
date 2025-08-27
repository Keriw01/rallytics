// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_articles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NewsArticlesModel _$NewsArticlesModelFromJson(Map<String, dynamic> json) {
  return _NewsArticlesModel.fromJson(json);
}

/// @nodoc
mixin _$NewsArticlesModel {
  String get rewrittenContent => throw _privateConstructorUsedError;
  String get rewrittenTitle => throw _privateConstructorUsedError;

  /// Serializes this NewsArticlesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsArticlesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsArticlesModelCopyWith<NewsArticlesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticlesModelCopyWith<$Res> {
  factory $NewsArticlesModelCopyWith(
    NewsArticlesModel value,
    $Res Function(NewsArticlesModel) then,
  ) = _$NewsArticlesModelCopyWithImpl<$Res, NewsArticlesModel>;
  @useResult
  $Res call({String rewrittenContent, String rewrittenTitle});
}

/// @nodoc
class _$NewsArticlesModelCopyWithImpl<$Res, $Val extends NewsArticlesModel>
    implements $NewsArticlesModelCopyWith<$Res> {
  _$NewsArticlesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsArticlesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rewrittenContent = null, Object? rewrittenTitle = null}) {
    return _then(
      _value.copyWith(
            rewrittenContent: null == rewrittenContent
                ? _value.rewrittenContent
                : rewrittenContent // ignore: cast_nullable_to_non_nullable
                      as String,
            rewrittenTitle: null == rewrittenTitle
                ? _value.rewrittenTitle
                : rewrittenTitle // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NewsArticlesModelImplCopyWith<$Res>
    implements $NewsArticlesModelCopyWith<$Res> {
  factory _$$NewsArticlesModelImplCopyWith(
    _$NewsArticlesModelImpl value,
    $Res Function(_$NewsArticlesModelImpl) then,
  ) = __$$NewsArticlesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rewrittenContent, String rewrittenTitle});
}

/// @nodoc
class __$$NewsArticlesModelImplCopyWithImpl<$Res>
    extends _$NewsArticlesModelCopyWithImpl<$Res, _$NewsArticlesModelImpl>
    implements _$$NewsArticlesModelImplCopyWith<$Res> {
  __$$NewsArticlesModelImplCopyWithImpl(
    _$NewsArticlesModelImpl _value,
    $Res Function(_$NewsArticlesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsArticlesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rewrittenContent = null, Object? rewrittenTitle = null}) {
    return _then(
      _$NewsArticlesModelImpl(
        rewrittenContent: null == rewrittenContent
            ? _value.rewrittenContent
            : rewrittenContent // ignore: cast_nullable_to_non_nullable
                  as String,
        rewrittenTitle: null == rewrittenTitle
            ? _value.rewrittenTitle
            : rewrittenTitle // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsArticlesModelImpl extends _NewsArticlesModel {
  const _$NewsArticlesModelImpl({
    required this.rewrittenContent,
    required this.rewrittenTitle,
  }) : super._();

  factory _$NewsArticlesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsArticlesModelImplFromJson(json);

  @override
  final String rewrittenContent;
  @override
  final String rewrittenTitle;

  @override
  String toString() {
    return 'NewsArticlesModel(rewrittenContent: $rewrittenContent, rewrittenTitle: $rewrittenTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticlesModelImpl &&
            (identical(other.rewrittenContent, rewrittenContent) ||
                other.rewrittenContent == rewrittenContent) &&
            (identical(other.rewrittenTitle, rewrittenTitle) ||
                other.rewrittenTitle == rewrittenTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rewrittenContent, rewrittenTitle);

  /// Create a copy of NewsArticlesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticlesModelImplCopyWith<_$NewsArticlesModelImpl> get copyWith =>
      __$$NewsArticlesModelImplCopyWithImpl<_$NewsArticlesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsArticlesModelImplToJson(this);
  }
}

abstract class _NewsArticlesModel extends NewsArticlesModel {
  const factory _NewsArticlesModel({
    required final String rewrittenContent,
    required final String rewrittenTitle,
  }) = _$NewsArticlesModelImpl;
  const _NewsArticlesModel._() : super._();

  factory _NewsArticlesModel.fromJson(Map<String, dynamic> json) =
      _$NewsArticlesModelImpl.fromJson;

  @override
  String get rewrittenContent;
  @override
  String get rewrittenTitle;

  /// Create a copy of NewsArticlesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsArticlesModelImplCopyWith<_$NewsArticlesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
