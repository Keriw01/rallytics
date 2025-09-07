// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int amount, String currency)
    paymentIntentCreationRequested,
    required TResult Function(String clientSecret) paymentConfirmed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int amount, String currency)?
    paymentIntentCreationRequested,
    TResult? Function(String clientSecret)? paymentConfirmed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount, String currency)?
    paymentIntentCreationRequested,
    TResult Function(String clientSecret)? paymentConfirmed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentIntentCreationRequested value)
    paymentIntentCreationRequested,
    required TResult Function(_PaymentConfirmed value) paymentConfirmed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentIntentCreationRequested value)?
    paymentIntentCreationRequested,
    TResult? Function(_PaymentConfirmed value)? paymentConfirmed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentIntentCreationRequested value)?
    paymentIntentCreationRequested,
    TResult Function(_PaymentConfirmed value)? paymentConfirmed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
    PaymentEvent value,
    $Res Function(PaymentEvent) then,
  ) = _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaymentIntentCreationRequestedImplCopyWith<$Res> {
  factory _$$PaymentIntentCreationRequestedImplCopyWith(
    _$PaymentIntentCreationRequestedImpl value,
    $Res Function(_$PaymentIntentCreationRequestedImpl) then,
  ) = __$$PaymentIntentCreationRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount, String currency});
}

/// @nodoc
class __$$PaymentIntentCreationRequestedImplCopyWithImpl<$Res>
    extends
        _$PaymentEventCopyWithImpl<$Res, _$PaymentIntentCreationRequestedImpl>
    implements _$$PaymentIntentCreationRequestedImplCopyWith<$Res> {
  __$$PaymentIntentCreationRequestedImplCopyWithImpl(
    _$PaymentIntentCreationRequestedImpl _value,
    $Res Function(_$PaymentIntentCreationRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? currency = null}) {
    return _then(
      _$PaymentIntentCreationRequestedImpl(
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PaymentIntentCreationRequestedImpl
    implements _PaymentIntentCreationRequested {
  const _$PaymentIntentCreationRequestedImpl({
    required this.amount,
    required this.currency,
  });

  @override
  final int amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'PaymentEvent.paymentIntentCreationRequested(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentIntentCreationRequestedImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentIntentCreationRequestedImplCopyWith<
    _$PaymentIntentCreationRequestedImpl
  >
  get copyWith =>
      __$$PaymentIntentCreationRequestedImplCopyWithImpl<
        _$PaymentIntentCreationRequestedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int amount, String currency)
    paymentIntentCreationRequested,
    required TResult Function(String clientSecret) paymentConfirmed,
  }) {
    return paymentIntentCreationRequested(amount, currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int amount, String currency)?
    paymentIntentCreationRequested,
    TResult? Function(String clientSecret)? paymentConfirmed,
  }) {
    return paymentIntentCreationRequested?.call(amount, currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount, String currency)?
    paymentIntentCreationRequested,
    TResult Function(String clientSecret)? paymentConfirmed,
    required TResult orElse(),
  }) {
    if (paymentIntentCreationRequested != null) {
      return paymentIntentCreationRequested(amount, currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentIntentCreationRequested value)
    paymentIntentCreationRequested,
    required TResult Function(_PaymentConfirmed value) paymentConfirmed,
  }) {
    return paymentIntentCreationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentIntentCreationRequested value)?
    paymentIntentCreationRequested,
    TResult? Function(_PaymentConfirmed value)? paymentConfirmed,
  }) {
    return paymentIntentCreationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentIntentCreationRequested value)?
    paymentIntentCreationRequested,
    TResult Function(_PaymentConfirmed value)? paymentConfirmed,
    required TResult orElse(),
  }) {
    if (paymentIntentCreationRequested != null) {
      return paymentIntentCreationRequested(this);
    }
    return orElse();
  }
}

abstract class _PaymentIntentCreationRequested implements PaymentEvent {
  const factory _PaymentIntentCreationRequested({
    required final int amount,
    required final String currency,
  }) = _$PaymentIntentCreationRequestedImpl;

  int get amount;
  String get currency;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentIntentCreationRequestedImplCopyWith<
    _$PaymentIntentCreationRequestedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentConfirmedImplCopyWith<$Res> {
  factory _$$PaymentConfirmedImplCopyWith(
    _$PaymentConfirmedImpl value,
    $Res Function(_$PaymentConfirmedImpl) then,
  ) = __$$PaymentConfirmedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientSecret});
}

/// @nodoc
class __$$PaymentConfirmedImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaymentConfirmedImpl>
    implements _$$PaymentConfirmedImplCopyWith<$Res> {
  __$$PaymentConfirmedImplCopyWithImpl(
    _$PaymentConfirmedImpl _value,
    $Res Function(_$PaymentConfirmedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? clientSecret = null}) {
    return _then(
      _$PaymentConfirmedImpl(
        clientSecret: null == clientSecret
            ? _value.clientSecret
            : clientSecret // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PaymentConfirmedImpl implements _PaymentConfirmed {
  const _$PaymentConfirmedImpl({required this.clientSecret});

  @override
  final String clientSecret;

  @override
  String toString() {
    return 'PaymentEvent.paymentConfirmed(clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentConfirmedImpl &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientSecret);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentConfirmedImplCopyWith<_$PaymentConfirmedImpl> get copyWith =>
      __$$PaymentConfirmedImplCopyWithImpl<_$PaymentConfirmedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int amount, String currency)
    paymentIntentCreationRequested,
    required TResult Function(String clientSecret) paymentConfirmed,
  }) {
    return paymentConfirmed(clientSecret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int amount, String currency)?
    paymentIntentCreationRequested,
    TResult? Function(String clientSecret)? paymentConfirmed,
  }) {
    return paymentConfirmed?.call(clientSecret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount, String currency)?
    paymentIntentCreationRequested,
    TResult Function(String clientSecret)? paymentConfirmed,
    required TResult orElse(),
  }) {
    if (paymentConfirmed != null) {
      return paymentConfirmed(clientSecret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentIntentCreationRequested value)
    paymentIntentCreationRequested,
    required TResult Function(_PaymentConfirmed value) paymentConfirmed,
  }) {
    return paymentConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentIntentCreationRequested value)?
    paymentIntentCreationRequested,
    TResult? Function(_PaymentConfirmed value)? paymentConfirmed,
  }) {
    return paymentConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentIntentCreationRequested value)?
    paymentIntentCreationRequested,
    TResult Function(_PaymentConfirmed value)? paymentConfirmed,
    required TResult orElse(),
  }) {
    if (paymentConfirmed != null) {
      return paymentConfirmed(this);
    }
    return orElse();
  }
}

abstract class _PaymentConfirmed implements PaymentEvent {
  const factory _PaymentConfirmed({required final String clientSecret}) =
      _$PaymentConfirmedImpl;

  String get clientSecret;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentConfirmedImplCopyWith<_$PaymentConfirmedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String clientSecret) readyToPay,
    required TResult Function() success,
    required TResult Function(PaymentErrorCode code) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String clientSecret)? readyToPay,
    TResult? Function()? success,
    TResult? Function(PaymentErrorCode code)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String clientSecret)? readyToPay,
    TResult Function()? success,
    TResult Function(PaymentErrorCode code)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReadyToPay value) readyToPay,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReadyToPay value)? readyToPay,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReadyToPay value)? readyToPay,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
    PaymentState value,
    $Res Function(PaymentState) then,
  ) = _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String clientSecret) readyToPay,
    required TResult Function() success,
    required TResult Function(PaymentErrorCode code) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String clientSecret)? readyToPay,
    TResult? Function()? success,
    TResult? Function(PaymentErrorCode code)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String clientSecret)? readyToPay,
    TResult Function()? success,
    TResult Function(PaymentErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReadyToPay value) readyToPay,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReadyToPay value)? readyToPay,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReadyToPay value)? readyToPay,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String clientSecret) readyToPay,
    required TResult Function() success,
    required TResult Function(PaymentErrorCode code) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String clientSecret)? readyToPay,
    TResult? Function()? success,
    TResult? Function(PaymentErrorCode code)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String clientSecret)? readyToPay,
    TResult Function()? success,
    TResult Function(PaymentErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReadyToPay value) readyToPay,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReadyToPay value)? readyToPay,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReadyToPay value)? readyToPay,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ReadyToPayImplCopyWith<$Res> {
  factory _$$ReadyToPayImplCopyWith(
    _$ReadyToPayImpl value,
    $Res Function(_$ReadyToPayImpl) then,
  ) = __$$ReadyToPayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientSecret});
}

/// @nodoc
class __$$ReadyToPayImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$ReadyToPayImpl>
    implements _$$ReadyToPayImplCopyWith<$Res> {
  __$$ReadyToPayImplCopyWithImpl(
    _$ReadyToPayImpl _value,
    $Res Function(_$ReadyToPayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? clientSecret = null}) {
    return _then(
      _$ReadyToPayImpl(
        null == clientSecret
            ? _value.clientSecret
            : clientSecret // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ReadyToPayImpl implements _ReadyToPay {
  const _$ReadyToPayImpl(this.clientSecret);

  @override
  final String clientSecret;

  @override
  String toString() {
    return 'PaymentState.readyToPay(clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyToPayImpl &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientSecret);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyToPayImplCopyWith<_$ReadyToPayImpl> get copyWith =>
      __$$ReadyToPayImplCopyWithImpl<_$ReadyToPayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String clientSecret) readyToPay,
    required TResult Function() success,
    required TResult Function(PaymentErrorCode code) error,
  }) {
    return readyToPay(clientSecret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String clientSecret)? readyToPay,
    TResult? Function()? success,
    TResult? Function(PaymentErrorCode code)? error,
  }) {
    return readyToPay?.call(clientSecret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String clientSecret)? readyToPay,
    TResult Function()? success,
    TResult Function(PaymentErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (readyToPay != null) {
      return readyToPay(clientSecret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReadyToPay value) readyToPay,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return readyToPay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReadyToPay value)? readyToPay,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return readyToPay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReadyToPay value)? readyToPay,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (readyToPay != null) {
      return readyToPay(this);
    }
    return orElse();
  }
}

abstract class _ReadyToPay implements PaymentState {
  const factory _ReadyToPay(final String clientSecret) = _$ReadyToPayImpl;

  String get clientSecret;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyToPayImplCopyWith<_$ReadyToPayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'PaymentState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String clientSecret) readyToPay,
    required TResult Function() success,
    required TResult Function(PaymentErrorCode code) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String clientSecret)? readyToPay,
    TResult? Function()? success,
    TResult? Function(PaymentErrorCode code)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String clientSecret)? readyToPay,
    TResult Function()? success,
    TResult Function(PaymentErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReadyToPay value) readyToPay,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReadyToPay value)? readyToPay,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReadyToPay value)? readyToPay,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PaymentState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentErrorCode code});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$ErrorImpl(
        null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as PaymentErrorCode,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.code);

  @override
  final PaymentErrorCode code;

  @override
  String toString() {
    return 'PaymentState.error(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String clientSecret) readyToPay,
    required TResult Function() success,
    required TResult Function(PaymentErrorCode code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String clientSecret)? readyToPay,
    TResult? Function()? success,
    TResult? Function(PaymentErrorCode code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String clientSecret)? readyToPay,
    TResult Function()? success,
    TResult Function(PaymentErrorCode code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReadyToPay value) readyToPay,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReadyToPay value)? readyToPay,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReadyToPay value)? readyToPay,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PaymentState {
  const factory _Error(final PaymentErrorCode code) = _$ErrorImpl;

  PaymentErrorCode get code;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
