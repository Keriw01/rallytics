// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthUserChangedImplCopyWith<$Res> {
  factory _$$AuthUserChangedImplCopyWith(
    _$AuthUserChangedImpl value,
    $Res Function(_$AuthUserChangedImpl) then,
  ) = __$$AuthUserChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity? user});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthUserChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthUserChangedImpl>
    implements _$$AuthUserChangedImplCopyWith<$Res> {
  __$$AuthUserChangedImplCopyWithImpl(
    _$AuthUserChangedImpl _value,
    $Res Function(_$AuthUserChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = freezed}) {
    return _then(
      _$AuthUserChangedImpl(
        freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserEntity?,
      ),
    );
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthUserChangedImpl implements AuthUserChanged {
  const _$AuthUserChangedImpl(this.user);

  @override
  final UserEntity? user;

  @override
  String toString() {
    return 'AuthEvent.authUserChanged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserChangedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserChangedImplCopyWith<_$AuthUserChangedImpl> get copyWith =>
      __$$AuthUserChangedImplCopyWithImpl<_$AuthUserChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return authUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return authUserChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (authUserChanged != null) {
      return authUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return authUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return authUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (authUserChanged != null) {
      return authUserChanged(this);
    }
    return orElse();
  }
}

abstract class AuthUserChanged implements AuthEvent {
  const factory AuthUserChanged(final UserEntity? user) = _$AuthUserChangedImpl;

  UserEntity? get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUserChangedImplCopyWith<_$AuthUserChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInRequestedImplCopyWith<$Res> {
  factory _$$SignInRequestedImplCopyWith(
    _$SignInRequestedImpl value,
    $Res Function(_$SignInRequestedImpl) then,
  ) = __$$SignInRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInRequestedImpl>
    implements _$$SignInRequestedImplCopyWith<$Res> {
  __$$SignInRequestedImplCopyWithImpl(
    _$SignInRequestedImpl _value,
    $Res Function(_$SignInRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$SignInRequestedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SignInRequestedImpl implements SignInRequested {
  const _$SignInRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      __$$SignInRequestedImplCopyWithImpl<_$SignInRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return signInRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return signInRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return signInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return signInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(this);
    }
    return orElse();
  }
}

abstract class SignInRequested implements AuthEvent {
  const factory SignInRequested({
    required final String email,
    required final String password,
  }) = _$SignInRequestedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInRequestedImplCopyWith<_$SignInRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpRequestedImplCopyWith<$Res> {
  factory _$$SignUpRequestedImplCopyWith(
    _$SignUpRequestedImpl value,
    $Res Function(_$SignUpRequestedImpl) then,
  ) = __$$SignUpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class __$$SignUpRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpRequestedImpl>
    implements _$$SignUpRequestedImplCopyWith<$Res> {
  __$$SignUpRequestedImplCopyWithImpl(
    _$SignUpRequestedImpl _value,
    $Res Function(_$SignUpRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(
      _$SignUpRequestedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SignUpRequestedImpl implements SignUpRequested {
  const _$SignUpRequestedImpl({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'AuthEvent.signUpRequested(email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirmPassword);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestedImplCopyWith<_$SignUpRequestedImpl> get copyWith =>
      __$$SignUpRequestedImplCopyWithImpl<_$SignUpRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return signUpRequested(email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return signUpRequested?.call(email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(email, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return signUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return signUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(this);
    }
    return orElse();
  }
}

abstract class SignUpRequested implements AuthEvent {
  const factory SignUpRequested({
    required final String email,
    required final String password,
    required final String confirmPassword,
  }) = _$SignUpRequestedImpl;

  String get email;
  String get password;
  String get confirmPassword;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpRequestedImplCopyWith<_$SignUpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithGoogleRequestedImplCopyWith<$Res> {
  factory _$$SignInWithGoogleRequestedImplCopyWith(
    _$SignInWithGoogleRequestedImpl value,
    $Res Function(_$SignInWithGoogleRequestedImpl) then,
  ) = __$$SignInWithGoogleRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogleRequestedImpl>
    implements _$$SignInWithGoogleRequestedImplCopyWith<$Res> {
  __$$SignInWithGoogleRequestedImplCopyWithImpl(
    _$SignInWithGoogleRequestedImpl _value,
    $Res Function(_$SignInWithGoogleRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithGoogleRequestedImpl implements SignInWithGoogleRequested {
  const _$SignInWithGoogleRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogleRequested implements AuthEvent {
  const factory SignInWithGoogleRequested() = _$SignInWithGoogleRequestedImpl;
}

/// @nodoc
abstract class _$$SignInWithFacebookRequestedImplCopyWith<$Res> {
  factory _$$SignInWithFacebookRequestedImplCopyWith(
    _$SignInWithFacebookRequestedImpl value,
    $Res Function(_$SignInWithFacebookRequestedImpl) then,
  ) = __$$SignInWithFacebookRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithFacebookRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithFacebookRequestedImpl>
    implements _$$SignInWithFacebookRequestedImplCopyWith<$Res> {
  __$$SignInWithFacebookRequestedImplCopyWithImpl(
    _$SignInWithFacebookRequestedImpl _value,
    $Res Function(_$SignInWithFacebookRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithFacebookRequestedImpl implements SignInWithFacebookRequested {
  const _$SignInWithFacebookRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithFacebook()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithFacebookRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return signInWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return signInWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInWithFacebook != null) {
      return signInWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return signInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return signInWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInWithFacebook != null) {
      return signInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebookRequested implements AuthEvent {
  const factory SignInWithFacebookRequested() =
      _$SignInWithFacebookRequestedImpl;
}

/// @nodoc
abstract class _$$SignInWithGitHubRequestedImplCopyWith<$Res> {
  factory _$$SignInWithGitHubRequestedImplCopyWith(
    _$SignInWithGitHubRequestedImpl value,
    $Res Function(_$SignInWithGitHubRequestedImpl) then,
  ) = __$$SignInWithGitHubRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGitHubRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGitHubRequestedImpl>
    implements _$$SignInWithGitHubRequestedImplCopyWith<$Res> {
  __$$SignInWithGitHubRequestedImplCopyWithImpl(
    _$SignInWithGitHubRequestedImpl _value,
    $Res Function(_$SignInWithGitHubRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithGitHubRequestedImpl implements SignInWithGitHubRequested {
  const _$SignInWithGitHubRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGitHub()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGitHubRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return signInWithGitHub();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return signInWithGitHub?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInWithGitHub != null) {
      return signInWithGitHub();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return signInWithGitHub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return signInWithGitHub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (signInWithGitHub != null) {
      return signInWithGitHub(this);
    }
    return orElse();
  }
}

abstract class SignInWithGitHubRequested implements AuthEvent {
  const factory SignInWithGitHubRequested() = _$SignInWithGitHubRequestedImpl;
}

/// @nodoc
abstract class _$$PasswordResetRequestedImplCopyWith<$Res> {
  factory _$$PasswordResetRequestedImplCopyWith(
    _$PasswordResetRequestedImpl value,
    $Res Function(_$PasswordResetRequestedImpl) then,
  ) = __$$PasswordResetRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$PasswordResetRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordResetRequestedImpl>
    implements _$$PasswordResetRequestedImplCopyWith<$Res> {
  __$$PasswordResetRequestedImplCopyWithImpl(
    _$PasswordResetRequestedImpl _value,
    $Res Function(_$PasswordResetRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$PasswordResetRequestedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PasswordResetRequestedImpl implements PasswordResetRequested {
  const _$PasswordResetRequestedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.passwordResetRequested(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetRequestedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetRequestedImplCopyWith<_$PasswordResetRequestedImpl>
  get copyWith =>
      __$$PasswordResetRequestedImplCopyWithImpl<_$PasswordResetRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return passwordResetRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return passwordResetRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (passwordResetRequested != null) {
      return passwordResetRequested(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return passwordResetRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return passwordResetRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (passwordResetRequested != null) {
      return passwordResetRequested(this);
    }
    return orElse();
  }
}

abstract class PasswordResetRequested implements AuthEvent {
  const factory PasswordResetRequested({required final String email}) =
      _$PasswordResetRequestedImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetRequestedImplCopyWith<_$PasswordResetRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutRequestedImplCopyWith<$Res> {
  factory _$$SignOutRequestedImplCopyWith(
    _$SignOutRequestedImpl value,
    $Res Function(_$SignOutRequestedImpl) then,
  ) = __$$SignOutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutRequestedImpl>
    implements _$$SignOutRequestedImplCopyWith<$Res> {
  __$$SignOutRequestedImplCopyWithImpl(
    _$SignOutRequestedImpl _value,
    $Res Function(_$SignOutRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutRequestedImpl implements SignOutRequested {
  const _$SignOutRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signOutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) authUserChanged,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
    )
    signUpRequested,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
    required TResult Function() signInWithGitHub,
    required TResult Function(String email) passwordResetRequested,
    required TResult Function() signOutRequested,
  }) {
    return signOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? authUserChanged,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithFacebook,
    TResult? Function()? signInWithGitHub,
    TResult? Function(String email)? passwordResetRequested,
    TResult? Function()? signOutRequested,
  }) {
    return signOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? authUserChanged,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password, String confirmPassword)?
    signUpRequested,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    TResult Function()? signInWithGitHub,
    TResult Function(String email)? passwordResetRequested,
    TResult Function()? signOutRequested,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignInWithGoogleRequested value) signInWithGoogle,
    required TResult Function(SignInWithFacebookRequested value)
    signInWithFacebook,
    required TResult Function(SignInWithGitHubRequested value) signInWithGitHub,
    required TResult Function(PasswordResetRequested value)
    passwordResetRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
  }) {
    return signOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUserChanged value)? authUserChanged,
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult? Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult? Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult? Function(PasswordResetRequested value)? passwordResetRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
  }) {
    return signOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignInWithGoogleRequested value)? signInWithGoogle,
    TResult Function(SignInWithFacebookRequested value)? signInWithFacebook,
    TResult Function(SignInWithGitHubRequested value)? signInWithGitHub,
    TResult Function(PasswordResetRequested value)? passwordResetRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested(this);
    }
    return orElse();
  }
}

abstract class SignOutRequested implements AuthEvent {
  const factory SignOutRequested() = _$SignOutRequestedImpl;
}
