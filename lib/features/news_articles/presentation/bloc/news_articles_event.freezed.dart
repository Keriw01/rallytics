// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_articles_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NewsArticlesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewsArticlesStarted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchNewsArticlesStarted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewsArticlesStarted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchNewsArticlesStarted value)
    watchNewsArticlesStarted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchNewsArticlesStarted value)? watchNewsArticlesStarted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchNewsArticlesStarted value)? watchNewsArticlesStarted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticlesEventCopyWith<$Res> {
  factory $NewsArticlesEventCopyWith(
    NewsArticlesEvent value,
    $Res Function(NewsArticlesEvent) then,
  ) = _$NewsArticlesEventCopyWithImpl<$Res, NewsArticlesEvent>;
}

/// @nodoc
class _$NewsArticlesEventCopyWithImpl<$Res, $Val extends NewsArticlesEvent>
    implements $NewsArticlesEventCopyWith<$Res> {
  _$NewsArticlesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WatchNewsArticlesStartedImplCopyWith<$Res> {
  factory _$$WatchNewsArticlesStartedImplCopyWith(
    _$WatchNewsArticlesStartedImpl value,
    $Res Function(_$WatchNewsArticlesStartedImpl) then,
  ) = __$$WatchNewsArticlesStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchNewsArticlesStartedImplCopyWithImpl<$Res>
    extends
        _$NewsArticlesEventCopyWithImpl<$Res, _$WatchNewsArticlesStartedImpl>
    implements _$$WatchNewsArticlesStartedImplCopyWith<$Res> {
  __$$WatchNewsArticlesStartedImplCopyWithImpl(
    _$WatchNewsArticlesStartedImpl _value,
    $Res Function(_$WatchNewsArticlesStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchNewsArticlesStartedImpl implements WatchNewsArticlesStarted {
  const _$WatchNewsArticlesStartedImpl();

  @override
  String toString() {
    return 'NewsArticlesEvent.watchNewsArticlesStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchNewsArticlesStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewsArticlesStarted,
  }) {
    return watchNewsArticlesStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchNewsArticlesStarted,
  }) {
    return watchNewsArticlesStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewsArticlesStarted,
    required TResult orElse(),
  }) {
    if (watchNewsArticlesStarted != null) {
      return watchNewsArticlesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchNewsArticlesStarted value)
    watchNewsArticlesStarted,
  }) {
    return watchNewsArticlesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchNewsArticlesStarted value)? watchNewsArticlesStarted,
  }) {
    return watchNewsArticlesStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchNewsArticlesStarted value)? watchNewsArticlesStarted,
    required TResult orElse(),
  }) {
    if (watchNewsArticlesStarted != null) {
      return watchNewsArticlesStarted(this);
    }
    return orElse();
  }
}

abstract class WatchNewsArticlesStarted implements NewsArticlesEvent {
  const factory WatchNewsArticlesStarted() = _$WatchNewsArticlesStartedImpl;
}
