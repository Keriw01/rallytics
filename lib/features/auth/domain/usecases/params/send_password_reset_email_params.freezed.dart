// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_password_reset_email_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SendPasswordResetEmailParams {
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of SendPasswordResetEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendPasswordResetEmailParamsCopyWith<SendPasswordResetEmailParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPasswordResetEmailParamsCopyWith<$Res> {
  factory $SendPasswordResetEmailParamsCopyWith(
    SendPasswordResetEmailParams value,
    $Res Function(SendPasswordResetEmailParams) then,
  ) =
      _$SendPasswordResetEmailParamsCopyWithImpl<
        $Res,
        SendPasswordResetEmailParams
      >;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendPasswordResetEmailParamsCopyWithImpl<
  $Res,
  $Val extends SendPasswordResetEmailParams
>
    implements $SendPasswordResetEmailParamsCopyWith<$Res> {
  _$SendPasswordResetEmailParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendPasswordResetEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendPasswordResetEmailParamsImplCopyWith<$Res>
    implements $SendPasswordResetEmailParamsCopyWith<$Res> {
  factory _$$SendPasswordResetEmailParamsImplCopyWith(
    _$SendPasswordResetEmailParamsImpl value,
    $Res Function(_$SendPasswordResetEmailParamsImpl) then,
  ) = __$$SendPasswordResetEmailParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendPasswordResetEmailParamsImplCopyWithImpl<$Res>
    extends
        _$SendPasswordResetEmailParamsCopyWithImpl<
          $Res,
          _$SendPasswordResetEmailParamsImpl
        >
    implements _$$SendPasswordResetEmailParamsImplCopyWith<$Res> {
  __$$SendPasswordResetEmailParamsImplCopyWithImpl(
    _$SendPasswordResetEmailParamsImpl _value,
    $Res Function(_$SendPasswordResetEmailParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendPasswordResetEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$SendPasswordResetEmailParamsImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SendPasswordResetEmailParamsImpl
    implements _SendPasswordResetEmailParams {
  const _$SendPasswordResetEmailParamsImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SendPasswordResetEmailParams(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPasswordResetEmailParamsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SendPasswordResetEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPasswordResetEmailParamsImplCopyWith<
    _$SendPasswordResetEmailParamsImpl
  >
  get copyWith =>
      __$$SendPasswordResetEmailParamsImplCopyWithImpl<
        _$SendPasswordResetEmailParamsImpl
      >(this, _$identity);
}

abstract class _SendPasswordResetEmailParams
    implements SendPasswordResetEmailParams {
  const factory _SendPasswordResetEmailParams({required final String email}) =
      _$SendPasswordResetEmailParamsImpl;

  @override
  String get email;

  /// Create a copy of SendPasswordResetEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPasswordResetEmailParamsImplCopyWith<
    _$SendPasswordResetEmailParamsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
