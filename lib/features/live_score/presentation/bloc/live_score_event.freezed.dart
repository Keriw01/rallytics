// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_score_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LiveScoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchLiveScoresStarted,
    required TResult Function(String query) searchQueryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchLiveScoresStarted,
    TResult? Function(String query)? searchQueryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchLiveScoresStarted,
    TResult Function(String query)? searchQueryChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchLiveScoresStarted value)
    watchLiveScoresStarted,
    required TResult Function(SearchQueryChanged value) searchQueryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchLiveScoresStarted value)? watchLiveScoresStarted,
    TResult? Function(SearchQueryChanged value)? searchQueryChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchLiveScoresStarted value)? watchLiveScoresStarted,
    TResult Function(SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveScoreEventCopyWith<$Res> {
  factory $LiveScoreEventCopyWith(
    LiveScoreEvent value,
    $Res Function(LiveScoreEvent) then,
  ) = _$LiveScoreEventCopyWithImpl<$Res, LiveScoreEvent>;
}

/// @nodoc
class _$LiveScoreEventCopyWithImpl<$Res, $Val extends LiveScoreEvent>
    implements $LiveScoreEventCopyWith<$Res> {
  _$LiveScoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveScoreEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WatchLiveScoresStartedImplCopyWith<$Res> {
  factory _$$WatchLiveScoresStartedImplCopyWith(
    _$WatchLiveScoresStartedImpl value,
    $Res Function(_$WatchLiveScoresStartedImpl) then,
  ) = __$$WatchLiveScoresStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchLiveScoresStartedImplCopyWithImpl<$Res>
    extends _$LiveScoreEventCopyWithImpl<$Res, _$WatchLiveScoresStartedImpl>
    implements _$$WatchLiveScoresStartedImplCopyWith<$Res> {
  __$$WatchLiveScoresStartedImplCopyWithImpl(
    _$WatchLiveScoresStartedImpl _value,
    $Res Function(_$WatchLiveScoresStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LiveScoreEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchLiveScoresStartedImpl implements WatchLiveScoresStarted {
  const _$WatchLiveScoresStartedImpl();

  @override
  String toString() {
    return 'LiveScoreEvent.watchLiveScoresStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchLiveScoresStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchLiveScoresStarted,
    required TResult Function(String query) searchQueryChanged,
  }) {
    return watchLiveScoresStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchLiveScoresStarted,
    TResult? Function(String query)? searchQueryChanged,
  }) {
    return watchLiveScoresStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchLiveScoresStarted,
    TResult Function(String query)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (watchLiveScoresStarted != null) {
      return watchLiveScoresStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchLiveScoresStarted value)
    watchLiveScoresStarted,
    required TResult Function(SearchQueryChanged value) searchQueryChanged,
  }) {
    return watchLiveScoresStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchLiveScoresStarted value)? watchLiveScoresStarted,
    TResult? Function(SearchQueryChanged value)? searchQueryChanged,
  }) {
    return watchLiveScoresStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchLiveScoresStarted value)? watchLiveScoresStarted,
    TResult Function(SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (watchLiveScoresStarted != null) {
      return watchLiveScoresStarted(this);
    }
    return orElse();
  }
}

abstract class WatchLiveScoresStarted implements LiveScoreEvent {
  const factory WatchLiveScoresStarted() = _$WatchLiveScoresStartedImpl;
}

/// @nodoc
abstract class _$$SearchQueryChangedImplCopyWith<$Res> {
  factory _$$SearchQueryChangedImplCopyWith(
    _$SearchQueryChangedImpl value,
    $Res Function(_$SearchQueryChangedImpl) then,
  ) = __$$SearchQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchQueryChangedImplCopyWithImpl<$Res>
    extends _$LiveScoreEventCopyWithImpl<$Res, _$SearchQueryChangedImpl>
    implements _$$SearchQueryChangedImplCopyWith<$Res> {
  __$$SearchQueryChangedImplCopyWithImpl(
    _$SearchQueryChangedImpl _value,
    $Res Function(_$SearchQueryChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LiveScoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchQueryChangedImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchQueryChangedImpl implements SearchQueryChanged {
  const _$SearchQueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'LiveScoreEvent.searchQueryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of LiveScoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      __$$SearchQueryChangedImplCopyWithImpl<_$SearchQueryChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchLiveScoresStarted,
    required TResult Function(String query) searchQueryChanged,
  }) {
    return searchQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchLiveScoresStarted,
    TResult? Function(String query)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchLiveScoresStarted,
    TResult Function(String query)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchLiveScoresStarted value)
    watchLiveScoresStarted,
    required TResult Function(SearchQueryChanged value) searchQueryChanged,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchLiveScoresStarted value)? watchLiveScoresStarted,
    TResult? Function(SearchQueryChanged value)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchLiveScoresStarted value)? watchLiveScoresStarted,
    TResult Function(SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class SearchQueryChanged implements LiveScoreEvent {
  const factory SearchQueryChanged(final String query) =
      _$SearchQueryChangedImpl;

  String get query;

  /// Create a copy of LiveScoreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
