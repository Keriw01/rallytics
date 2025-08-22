// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_articles_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NewsArticlesEntity {
  String get originalUrl => throw _privateConstructorUsedError;
  String get rewrittenContent => throw _privateConstructorUsedError;
  String get rewrittenTitle => throw _privateConstructorUsedError;

  /// Create a copy of NewsArticlesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsArticlesEntityCopyWith<NewsArticlesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticlesEntityCopyWith<$Res> {
  factory $NewsArticlesEntityCopyWith(
    NewsArticlesEntity value,
    $Res Function(NewsArticlesEntity) then,
  ) = _$NewsArticlesEntityCopyWithImpl<$Res, NewsArticlesEntity>;
  @useResult
  $Res call({
    String originalUrl,
    String rewrittenContent,
    String rewrittenTitle,
  });
}

/// @nodoc
class _$NewsArticlesEntityCopyWithImpl<$Res, $Val extends NewsArticlesEntity>
    implements $NewsArticlesEntityCopyWith<$Res> {
  _$NewsArticlesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsArticlesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalUrl = null,
    Object? rewrittenContent = null,
    Object? rewrittenTitle = null,
  }) {
    return _then(
      _value.copyWith(
            originalUrl: null == originalUrl
                ? _value.originalUrl
                : originalUrl // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$NewsArticlesEntityImplCopyWith<$Res>
    implements $NewsArticlesEntityCopyWith<$Res> {
  factory _$$NewsArticlesEntityImplCopyWith(
    _$NewsArticlesEntityImpl value,
    $Res Function(_$NewsArticlesEntityImpl) then,
  ) = __$$NewsArticlesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String originalUrl,
    String rewrittenContent,
    String rewrittenTitle,
  });
}

/// @nodoc
class __$$NewsArticlesEntityImplCopyWithImpl<$Res>
    extends _$NewsArticlesEntityCopyWithImpl<$Res, _$NewsArticlesEntityImpl>
    implements _$$NewsArticlesEntityImplCopyWith<$Res> {
  __$$NewsArticlesEntityImplCopyWithImpl(
    _$NewsArticlesEntityImpl _value,
    $Res Function(_$NewsArticlesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsArticlesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalUrl = null,
    Object? rewrittenContent = null,
    Object? rewrittenTitle = null,
  }) {
    return _then(
      _$NewsArticlesEntityImpl(
        originalUrl: null == originalUrl
            ? _value.originalUrl
            : originalUrl // ignore: cast_nullable_to_non_nullable
                  as String,
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

class _$NewsArticlesEntityImpl implements _NewsArticlesEntity {
  const _$NewsArticlesEntityImpl({
    required this.originalUrl,
    required this.rewrittenContent,
    required this.rewrittenTitle,
  });

  @override
  final String originalUrl;
  @override
  final String rewrittenContent;
  @override
  final String rewrittenTitle;

  @override
  String toString() {
    return 'NewsArticlesEntity(originalUrl: $originalUrl, rewrittenContent: $rewrittenContent, rewrittenTitle: $rewrittenTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticlesEntityImpl &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.rewrittenContent, rewrittenContent) ||
                other.rewrittenContent == rewrittenContent) &&
            (identical(other.rewrittenTitle, rewrittenTitle) ||
                other.rewrittenTitle == rewrittenTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, originalUrl, rewrittenContent, rewrittenTitle);

  /// Create a copy of NewsArticlesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticlesEntityImplCopyWith<_$NewsArticlesEntityImpl> get copyWith =>
      __$$NewsArticlesEntityImplCopyWithImpl<_$NewsArticlesEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _NewsArticlesEntity implements NewsArticlesEntity {
  const factory _NewsArticlesEntity({
    required final String originalUrl,
    required final String rewrittenContent,
    required final String rewrittenTitle,
  }) = _$NewsArticlesEntityImpl;

  @override
  String get originalUrl;
  @override
  String get rewrittenContent;
  @override
  String get rewrittenTitle;

  /// Create a copy of NewsArticlesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsArticlesEntityImplCopyWith<_$NewsArticlesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
