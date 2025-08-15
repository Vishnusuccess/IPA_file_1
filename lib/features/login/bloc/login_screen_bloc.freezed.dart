// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onGoogleSignIn,
    required TResult Function(AuthMethods loginMethod) onAuthMethod,
    required TResult Function() onMailSignIn,
    required TResult Function() onAppleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onGoogleSignIn,
    TResult? Function(AuthMethods loginMethod)? onAuthMethod,
    TResult? Function()? onMailSignIn,
    TResult? Function()? onAppleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onGoogleSignIn,
    TResult Function(AuthMethods loginMethod)? onAuthMethod,
    TResult Function()? onMailSignIn,
    TResult Function()? onAppleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnGoogleSignIn value) onGoogleSignIn,
    required TResult Function(OnAuthMethod value) onAuthMethod,
    required TResult Function(OnMailSignIn value) onMailSignIn,
    required TResult Function(OnAppleSignIn value) onAppleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult? Function(OnAuthMethod value)? onAuthMethod,
    TResult? Function(OnMailSignIn value)? onMailSignIn,
    TResult? Function(OnAppleSignIn value)? onAppleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult Function(OnAuthMethod value)? onAuthMethod,
    TResult Function(OnMailSignIn value)? onMailSignIn,
    TResult Function(OnAppleSignIn value)? onAppleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenEventCopyWith<$Res> {
  factory $LoginScreenEventCopyWith(
          LoginScreenEvent value, $Res Function(LoginScreenEvent) then) =
      _$LoginScreenEventCopyWithImpl<$Res, LoginScreenEvent>;
}

/// @nodoc
class _$LoginScreenEventCopyWithImpl<$Res, $Val extends LoginScreenEvent>
    implements $LoginScreenEventCopyWith<$Res> {
  _$LoginScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnLoginImplCopyWith<$Res> {
  factory _$$OnLoginImplCopyWith(
          _$OnLoginImpl value, $Res Function(_$OnLoginImpl) then) =
      __$$OnLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoginImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$OnLoginImpl>
    implements _$$OnLoginImplCopyWith<$Res> {
  __$$OnLoginImplCopyWithImpl(
      _$OnLoginImpl _value, $Res Function(_$OnLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLoginImpl implements OnLogin {
  const _$OnLoginImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.onLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onGoogleSignIn,
    required TResult Function(AuthMethods loginMethod) onAuthMethod,
    required TResult Function() onMailSignIn,
    required TResult Function() onAppleSignIn,
  }) {
    return onLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onGoogleSignIn,
    TResult? Function(AuthMethods loginMethod)? onAuthMethod,
    TResult? Function()? onMailSignIn,
    TResult? Function()? onAppleSignIn,
  }) {
    return onLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onGoogleSignIn,
    TResult Function(AuthMethods loginMethod)? onAuthMethod,
    TResult Function()? onMailSignIn,
    TResult Function()? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnGoogleSignIn value) onGoogleSignIn,
    required TResult Function(OnAuthMethod value) onAuthMethod,
    required TResult Function(OnMailSignIn value) onMailSignIn,
    required TResult Function(OnAppleSignIn value) onAppleSignIn,
  }) {
    return onLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult? Function(OnAuthMethod value)? onAuthMethod,
    TResult? Function(OnMailSignIn value)? onMailSignIn,
    TResult? Function(OnAppleSignIn value)? onAppleSignIn,
  }) {
    return onLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult Function(OnAuthMethod value)? onAuthMethod,
    TResult Function(OnMailSignIn value)? onMailSignIn,
    TResult Function(OnAppleSignIn value)? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(this);
    }
    return orElse();
  }
}

abstract class OnLogin implements LoginScreenEvent {
  const factory OnLogin() = _$OnLoginImpl;
}

/// @nodoc
abstract class _$$OnGoogleSignInImplCopyWith<$Res> {
  factory _$$OnGoogleSignInImplCopyWith(_$OnGoogleSignInImpl value,
          $Res Function(_$OnGoogleSignInImpl) then) =
      __$$OnGoogleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGoogleSignInImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$OnGoogleSignInImpl>
    implements _$$OnGoogleSignInImplCopyWith<$Res> {
  __$$OnGoogleSignInImplCopyWithImpl(
      _$OnGoogleSignInImpl _value, $Res Function(_$OnGoogleSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnGoogleSignInImpl implements OnGoogleSignIn {
  const _$OnGoogleSignInImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.onGoogleSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGoogleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onGoogleSignIn,
    required TResult Function(AuthMethods loginMethod) onAuthMethod,
    required TResult Function() onMailSignIn,
    required TResult Function() onAppleSignIn,
  }) {
    return onGoogleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onGoogleSignIn,
    TResult? Function(AuthMethods loginMethod)? onAuthMethod,
    TResult? Function()? onMailSignIn,
    TResult? Function()? onAppleSignIn,
  }) {
    return onGoogleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onGoogleSignIn,
    TResult Function(AuthMethods loginMethod)? onAuthMethod,
    TResult Function()? onMailSignIn,
    TResult Function()? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onGoogleSignIn != null) {
      return onGoogleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnGoogleSignIn value) onGoogleSignIn,
    required TResult Function(OnAuthMethod value) onAuthMethod,
    required TResult Function(OnMailSignIn value) onMailSignIn,
    required TResult Function(OnAppleSignIn value) onAppleSignIn,
  }) {
    return onGoogleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult? Function(OnAuthMethod value)? onAuthMethod,
    TResult? Function(OnMailSignIn value)? onMailSignIn,
    TResult? Function(OnAppleSignIn value)? onAppleSignIn,
  }) {
    return onGoogleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult Function(OnAuthMethod value)? onAuthMethod,
    TResult Function(OnMailSignIn value)? onMailSignIn,
    TResult Function(OnAppleSignIn value)? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onGoogleSignIn != null) {
      return onGoogleSignIn(this);
    }
    return orElse();
  }
}

abstract class OnGoogleSignIn implements LoginScreenEvent {
  const factory OnGoogleSignIn() = _$OnGoogleSignInImpl;
}

/// @nodoc
abstract class _$$OnAuthMethodImplCopyWith<$Res> {
  factory _$$OnAuthMethodImplCopyWith(
          _$OnAuthMethodImpl value, $Res Function(_$OnAuthMethodImpl) then) =
      __$$OnAuthMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthMethods loginMethod});
}

/// @nodoc
class __$$OnAuthMethodImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$OnAuthMethodImpl>
    implements _$$OnAuthMethodImplCopyWith<$Res> {
  __$$OnAuthMethodImplCopyWithImpl(
      _$OnAuthMethodImpl _value, $Res Function(_$OnAuthMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginMethod = null,
  }) {
    return _then(_$OnAuthMethodImpl(
      null == loginMethod
          ? _value.loginMethod
          : loginMethod // ignore: cast_nullable_to_non_nullable
              as AuthMethods,
    ));
  }
}

/// @nodoc

class _$OnAuthMethodImpl implements OnAuthMethod {
  const _$OnAuthMethodImpl(this.loginMethod);

  @override
  final AuthMethods loginMethod;

  @override
  String toString() {
    return 'LoginScreenEvent.onAuthMethod(loginMethod: $loginMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAuthMethodImpl &&
            (identical(other.loginMethod, loginMethod) ||
                other.loginMethod == loginMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginMethod);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAuthMethodImplCopyWith<_$OnAuthMethodImpl> get copyWith =>
      __$$OnAuthMethodImplCopyWithImpl<_$OnAuthMethodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onGoogleSignIn,
    required TResult Function(AuthMethods loginMethod) onAuthMethod,
    required TResult Function() onMailSignIn,
    required TResult Function() onAppleSignIn,
  }) {
    return onAuthMethod(loginMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onGoogleSignIn,
    TResult? Function(AuthMethods loginMethod)? onAuthMethod,
    TResult? Function()? onMailSignIn,
    TResult? Function()? onAppleSignIn,
  }) {
    return onAuthMethod?.call(loginMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onGoogleSignIn,
    TResult Function(AuthMethods loginMethod)? onAuthMethod,
    TResult Function()? onMailSignIn,
    TResult Function()? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onAuthMethod != null) {
      return onAuthMethod(loginMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnGoogleSignIn value) onGoogleSignIn,
    required TResult Function(OnAuthMethod value) onAuthMethod,
    required TResult Function(OnMailSignIn value) onMailSignIn,
    required TResult Function(OnAppleSignIn value) onAppleSignIn,
  }) {
    return onAuthMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult? Function(OnAuthMethod value)? onAuthMethod,
    TResult? Function(OnMailSignIn value)? onMailSignIn,
    TResult? Function(OnAppleSignIn value)? onAppleSignIn,
  }) {
    return onAuthMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult Function(OnAuthMethod value)? onAuthMethod,
    TResult Function(OnMailSignIn value)? onMailSignIn,
    TResult Function(OnAppleSignIn value)? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onAuthMethod != null) {
      return onAuthMethod(this);
    }
    return orElse();
  }
}

abstract class OnAuthMethod implements LoginScreenEvent {
  const factory OnAuthMethod(final AuthMethods loginMethod) =
      _$OnAuthMethodImpl;

  AuthMethods get loginMethod;

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnAuthMethodImplCopyWith<_$OnAuthMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMailSignInImplCopyWith<$Res> {
  factory _$$OnMailSignInImplCopyWith(
          _$OnMailSignInImpl value, $Res Function(_$OnMailSignInImpl) then) =
      __$$OnMailSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnMailSignInImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$OnMailSignInImpl>
    implements _$$OnMailSignInImplCopyWith<$Res> {
  __$$OnMailSignInImplCopyWithImpl(
      _$OnMailSignInImpl _value, $Res Function(_$OnMailSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnMailSignInImpl implements OnMailSignIn {
  const _$OnMailSignInImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.onMailSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnMailSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onGoogleSignIn,
    required TResult Function(AuthMethods loginMethod) onAuthMethod,
    required TResult Function() onMailSignIn,
    required TResult Function() onAppleSignIn,
  }) {
    return onMailSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onGoogleSignIn,
    TResult? Function(AuthMethods loginMethod)? onAuthMethod,
    TResult? Function()? onMailSignIn,
    TResult? Function()? onAppleSignIn,
  }) {
    return onMailSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onGoogleSignIn,
    TResult Function(AuthMethods loginMethod)? onAuthMethod,
    TResult Function()? onMailSignIn,
    TResult Function()? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onMailSignIn != null) {
      return onMailSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnGoogleSignIn value) onGoogleSignIn,
    required TResult Function(OnAuthMethod value) onAuthMethod,
    required TResult Function(OnMailSignIn value) onMailSignIn,
    required TResult Function(OnAppleSignIn value) onAppleSignIn,
  }) {
    return onMailSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult? Function(OnAuthMethod value)? onAuthMethod,
    TResult? Function(OnMailSignIn value)? onMailSignIn,
    TResult? Function(OnAppleSignIn value)? onAppleSignIn,
  }) {
    return onMailSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult Function(OnAuthMethod value)? onAuthMethod,
    TResult Function(OnMailSignIn value)? onMailSignIn,
    TResult Function(OnAppleSignIn value)? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onMailSignIn != null) {
      return onMailSignIn(this);
    }
    return orElse();
  }
}

abstract class OnMailSignIn implements LoginScreenEvent {
  const factory OnMailSignIn() = _$OnMailSignInImpl;
}

/// @nodoc
abstract class _$$OnAppleSignInImplCopyWith<$Res> {
  factory _$$OnAppleSignInImplCopyWith(
          _$OnAppleSignInImpl value, $Res Function(_$OnAppleSignInImpl) then) =
      __$$OnAppleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnAppleSignInImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$OnAppleSignInImpl>
    implements _$$OnAppleSignInImplCopyWith<$Res> {
  __$$OnAppleSignInImplCopyWithImpl(
      _$OnAppleSignInImpl _value, $Res Function(_$OnAppleSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnAppleSignInImpl implements OnAppleSignIn {
  const _$OnAppleSignInImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.onAppleSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnAppleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onGoogleSignIn,
    required TResult Function(AuthMethods loginMethod) onAuthMethod,
    required TResult Function() onMailSignIn,
    required TResult Function() onAppleSignIn,
  }) {
    return onAppleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onGoogleSignIn,
    TResult? Function(AuthMethods loginMethod)? onAuthMethod,
    TResult? Function()? onMailSignIn,
    TResult? Function()? onAppleSignIn,
  }) {
    return onAppleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onGoogleSignIn,
    TResult Function(AuthMethods loginMethod)? onAuthMethod,
    TResult Function()? onMailSignIn,
    TResult Function()? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onAppleSignIn != null) {
      return onAppleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnGoogleSignIn value) onGoogleSignIn,
    required TResult Function(OnAuthMethod value) onAuthMethod,
    required TResult Function(OnMailSignIn value) onMailSignIn,
    required TResult Function(OnAppleSignIn value) onAppleSignIn,
  }) {
    return onAppleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult? Function(OnAuthMethod value)? onAuthMethod,
    TResult? Function(OnMailSignIn value)? onMailSignIn,
    TResult? Function(OnAppleSignIn value)? onAppleSignIn,
  }) {
    return onAppleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnGoogleSignIn value)? onGoogleSignIn,
    TResult Function(OnAuthMethod value)? onAuthMethod,
    TResult Function(OnMailSignIn value)? onMailSignIn,
    TResult Function(OnAppleSignIn value)? onAppleSignIn,
    required TResult orElse(),
  }) {
    if (onAppleSignIn != null) {
      return onAppleSignIn(this);
    }
    return orElse();
  }
}

abstract class OnAppleSignIn implements LoginScreenEvent {
  const factory OnAppleSignIn() = _$OnAppleSignInImpl;
}

/// @nodoc
mixin _$LoginScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  LoginEventState get loginEvent => throw _privateConstructorUsedError;
  bool get isSubmitLoadingGoogle => throw _privateConstructorUsedError;
  bool get isSubmitLoadingMail => throw _privateConstructorUsedError;
  bool get isSubmitLoadingApple => throw _privateConstructorUsedError;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
  @useResult
  $Res call(
      {bool isLoading,
      LoginEventState loginEvent,
      bool isSubmitLoadingGoogle,
      bool isSubmitLoadingMail,
      bool isSubmitLoadingApple});

  $LoginEventStateCopyWith<$Res> get loginEvent;
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loginEvent = null,
    Object? isSubmitLoadingGoogle = null,
    Object? isSubmitLoadingMail = null,
    Object? isSubmitLoadingApple = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginEvent: null == loginEvent
          ? _value.loginEvent
          : loginEvent // ignore: cast_nullable_to_non_nullable
              as LoginEventState,
      isSubmitLoadingGoogle: null == isSubmitLoadingGoogle
          ? _value.isSubmitLoadingGoogle
          : isSubmitLoadingGoogle // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitLoadingMail: null == isSubmitLoadingMail
          ? _value.isSubmitLoadingMail
          : isSubmitLoadingMail // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitLoadingApple: null == isSubmitLoadingApple
          ? _value.isSubmitLoadingApple
          : isSubmitLoadingApple // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginEventStateCopyWith<$Res> get loginEvent {
    return $LoginEventStateCopyWith<$Res>(_value.loginEvent, (value) {
      return _then(_value.copyWith(loginEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginScreenStateImplCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$LoginScreenStateImplCopyWith(_$LoginScreenStateImpl value,
          $Res Function(_$LoginScreenStateImpl) then) =
      __$$LoginScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      LoginEventState loginEvent,
      bool isSubmitLoadingGoogle,
      bool isSubmitLoadingMail,
      bool isSubmitLoadingApple});

  @override
  $LoginEventStateCopyWith<$Res> get loginEvent;
}

/// @nodoc
class __$$LoginScreenStateImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenStateImpl>
    implements _$$LoginScreenStateImplCopyWith<$Res> {
  __$$LoginScreenStateImplCopyWithImpl(_$LoginScreenStateImpl _value,
      $Res Function(_$LoginScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loginEvent = null,
    Object? isSubmitLoadingGoogle = null,
    Object? isSubmitLoadingMail = null,
    Object? isSubmitLoadingApple = null,
  }) {
    return _then(_$LoginScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginEvent: null == loginEvent
          ? _value.loginEvent
          : loginEvent // ignore: cast_nullable_to_non_nullable
              as LoginEventState,
      isSubmitLoadingGoogle: null == isSubmitLoadingGoogle
          ? _value.isSubmitLoadingGoogle
          : isSubmitLoadingGoogle // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitLoadingMail: null == isSubmitLoadingMail
          ? _value.isSubmitLoadingMail
          : isSubmitLoadingMail // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitLoadingApple: null == isSubmitLoadingApple
          ? _value.isSubmitLoadingApple
          : isSubmitLoadingApple // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginScreenStateImpl implements _LoginScreenState {
  const _$LoginScreenStateImpl(
      {required this.isLoading,
      required this.loginEvent,
      required this.isSubmitLoadingGoogle,
      required this.isSubmitLoadingMail,
      required this.isSubmitLoadingApple});

  @override
  final bool isLoading;
  @override
  final LoginEventState loginEvent;
  @override
  final bool isSubmitLoadingGoogle;
  @override
  final bool isSubmitLoadingMail;
  @override
  final bool isSubmitLoadingApple;

  @override
  String toString() {
    return 'LoginScreenState(isLoading: $isLoading, loginEvent: $loginEvent, isSubmitLoadingGoogle: $isSubmitLoadingGoogle, isSubmitLoadingMail: $isSubmitLoadingMail, isSubmitLoadingApple: $isSubmitLoadingApple)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loginEvent, loginEvent) ||
                other.loginEvent == loginEvent) &&
            (identical(other.isSubmitLoadingGoogle, isSubmitLoadingGoogle) ||
                other.isSubmitLoadingGoogle == isSubmitLoadingGoogle) &&
            (identical(other.isSubmitLoadingMail, isSubmitLoadingMail) ||
                other.isSubmitLoadingMail == isSubmitLoadingMail) &&
            (identical(other.isSubmitLoadingApple, isSubmitLoadingApple) ||
                other.isSubmitLoadingApple == isSubmitLoadingApple));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, loginEvent,
      isSubmitLoadingGoogle, isSubmitLoadingMail, isSubmitLoadingApple);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      __$$LoginScreenStateImplCopyWithImpl<_$LoginScreenStateImpl>(
          this, _$identity);
}

abstract class _LoginScreenState implements LoginScreenState {
  const factory _LoginScreenState(
      {required final bool isLoading,
      required final LoginEventState loginEvent,
      required final bool isSubmitLoadingGoogle,
      required final bool isSubmitLoadingMail,
      required final bool isSubmitLoadingApple}) = _$LoginScreenStateImpl;

  @override
  bool get isLoading;
  @override
  LoginEventState get loginEvent;
  @override
  bool get isSubmitLoadingGoogle;
  @override
  bool get isSubmitLoadingMail;
  @override
  bool get isSubmitLoadingApple;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onNavigateToSplash,
    required TResult Function() onPopSign,
    required TResult Function(AuthError error) showAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onNavigateToSplash,
    TResult? Function()? onPopSign,
    TResult? Function(AuthError error)? showAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onNavigateToSplash,
    TResult Function()? onPopSign,
    TResult Function(AuthError error)? showAuthError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OnNavigateToSplash value) onNavigateToSplash,
    required TResult Function(OnPopSign value) onPopSign,
    required TResult Function(ShowAuthError value) showAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult? Function(OnPopSign value)? onPopSign,
    TResult? Function(ShowAuthError value)? showAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult Function(OnPopSign value)? onPopSign,
    TResult Function(ShowAuthError value)? showAuthError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventStateCopyWith<$Res> {
  factory $LoginEventStateCopyWith(
          LoginEventState value, $Res Function(LoginEventState) then) =
      _$LoginEventStateCopyWithImpl<$Res, LoginEventState>;
}

/// @nodoc
class _$LoginEventStateCopyWithImpl<$Res, $Val extends LoginEventState>
    implements $LoginEventStateCopyWith<$Res> {
  _$LoginEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$LoginEventStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl implements Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'LoginEventState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onNavigateToSplash,
    required TResult Function() onPopSign,
    required TResult Function(AuthError error) showAuthError,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onNavigateToSplash,
    TResult? Function()? onPopSign,
    TResult? Function(AuthError error)? showAuthError,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onNavigateToSplash,
    TResult Function()? onPopSign,
    TResult Function(AuthError error)? showAuthError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OnNavigateToSplash value) onNavigateToSplash,
    required TResult Function(OnPopSign value) onPopSign,
    required TResult Function(ShowAuthError value) showAuthError,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult? Function(OnPopSign value)? onPopSign,
    TResult? Function(ShowAuthError value)? showAuthError,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult Function(OnPopSign value)? onPopSign,
    TResult Function(ShowAuthError value)? showAuthError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements LoginEventState {
  const factory Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$OnNavigateToSplashImplCopyWith<$Res> {
  factory _$$OnNavigateToSplashImplCopyWith(_$OnNavigateToSplashImpl value,
          $Res Function(_$OnNavigateToSplashImpl) then) =
      __$$OnNavigateToSplashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnNavigateToSplashImplCopyWithImpl<$Res>
    extends _$LoginEventStateCopyWithImpl<$Res, _$OnNavigateToSplashImpl>
    implements _$$OnNavigateToSplashImplCopyWith<$Res> {
  __$$OnNavigateToSplashImplCopyWithImpl(_$OnNavigateToSplashImpl _value,
      $Res Function(_$OnNavigateToSplashImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnNavigateToSplashImpl implements OnNavigateToSplash {
  const _$OnNavigateToSplashImpl();

  @override
  String toString() {
    return 'LoginEventState.onNavigateToSplash()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnNavigateToSplashImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onNavigateToSplash,
    required TResult Function() onPopSign,
    required TResult Function(AuthError error) showAuthError,
  }) {
    return onNavigateToSplash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onNavigateToSplash,
    TResult? Function()? onPopSign,
    TResult? Function(AuthError error)? showAuthError,
  }) {
    return onNavigateToSplash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onNavigateToSplash,
    TResult Function()? onPopSign,
    TResult Function(AuthError error)? showAuthError,
    required TResult orElse(),
  }) {
    if (onNavigateToSplash != null) {
      return onNavigateToSplash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OnNavigateToSplash value) onNavigateToSplash,
    required TResult Function(OnPopSign value) onPopSign,
    required TResult Function(ShowAuthError value) showAuthError,
  }) {
    return onNavigateToSplash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult? Function(OnPopSign value)? onPopSign,
    TResult? Function(ShowAuthError value)? showAuthError,
  }) {
    return onNavigateToSplash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult Function(OnPopSign value)? onPopSign,
    TResult Function(ShowAuthError value)? showAuthError,
    required TResult orElse(),
  }) {
    if (onNavigateToSplash != null) {
      return onNavigateToSplash(this);
    }
    return orElse();
  }
}

abstract class OnNavigateToSplash implements LoginEventState {
  const factory OnNavigateToSplash() = _$OnNavigateToSplashImpl;
}

/// @nodoc
abstract class _$$OnPopSignImplCopyWith<$Res> {
  factory _$$OnPopSignImplCopyWith(
          _$OnPopSignImpl value, $Res Function(_$OnPopSignImpl) then) =
      __$$OnPopSignImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnPopSignImplCopyWithImpl<$Res>
    extends _$LoginEventStateCopyWithImpl<$Res, _$OnPopSignImpl>
    implements _$$OnPopSignImplCopyWith<$Res> {
  __$$OnPopSignImplCopyWithImpl(
      _$OnPopSignImpl _value, $Res Function(_$OnPopSignImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnPopSignImpl implements OnPopSign {
  const _$OnPopSignImpl();

  @override
  String toString() {
    return 'LoginEventState.onPopSign()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnPopSignImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onNavigateToSplash,
    required TResult Function() onPopSign,
    required TResult Function(AuthError error) showAuthError,
  }) {
    return onPopSign();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onNavigateToSplash,
    TResult? Function()? onPopSign,
    TResult? Function(AuthError error)? showAuthError,
  }) {
    return onPopSign?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onNavigateToSplash,
    TResult Function()? onPopSign,
    TResult Function(AuthError error)? showAuthError,
    required TResult orElse(),
  }) {
    if (onPopSign != null) {
      return onPopSign();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OnNavigateToSplash value) onNavigateToSplash,
    required TResult Function(OnPopSign value) onPopSign,
    required TResult Function(ShowAuthError value) showAuthError,
  }) {
    return onPopSign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult? Function(OnPopSign value)? onPopSign,
    TResult? Function(ShowAuthError value)? showAuthError,
  }) {
    return onPopSign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult Function(OnPopSign value)? onPopSign,
    TResult Function(ShowAuthError value)? showAuthError,
    required TResult orElse(),
  }) {
    if (onPopSign != null) {
      return onPopSign(this);
    }
    return orElse();
  }
}

abstract class OnPopSign implements LoginEventState {
  const factory OnPopSign() = _$OnPopSignImpl;
}

/// @nodoc
abstract class _$$ShowAuthErrorImplCopyWith<$Res> {
  factory _$$ShowAuthErrorImplCopyWith(
          _$ShowAuthErrorImpl value, $Res Function(_$ShowAuthErrorImpl) then) =
      __$$ShowAuthErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthError error});
}

/// @nodoc
class __$$ShowAuthErrorImplCopyWithImpl<$Res>
    extends _$LoginEventStateCopyWithImpl<$Res, _$ShowAuthErrorImpl>
    implements _$$ShowAuthErrorImplCopyWith<$Res> {
  __$$ShowAuthErrorImplCopyWithImpl(
      _$ShowAuthErrorImpl _value, $Res Function(_$ShowAuthErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ShowAuthErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthError,
    ));
  }
}

/// @nodoc

class _$ShowAuthErrorImpl implements ShowAuthError {
  const _$ShowAuthErrorImpl(this.error);

  @override
  final AuthError error;

  @override
  String toString() {
    return 'LoginEventState.showAuthError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAuthErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAuthErrorImplCopyWith<_$ShowAuthErrorImpl> get copyWith =>
      __$$ShowAuthErrorImplCopyWithImpl<_$ShowAuthErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onNavigateToSplash,
    required TResult Function() onPopSign,
    required TResult Function(AuthError error) showAuthError,
  }) {
    return showAuthError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onNavigateToSplash,
    TResult? Function()? onPopSign,
    TResult? Function(AuthError error)? showAuthError,
  }) {
    return showAuthError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onNavigateToSplash,
    TResult Function()? onPopSign,
    TResult Function(AuthError error)? showAuthError,
    required TResult orElse(),
  }) {
    if (showAuthError != null) {
      return showAuthError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OnNavigateToSplash value) onNavigateToSplash,
    required TResult Function(OnPopSign value) onPopSign,
    required TResult Function(ShowAuthError value) showAuthError,
  }) {
    return showAuthError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult? Function(OnPopSign value)? onPopSign,
    TResult? Function(ShowAuthError value)? showAuthError,
  }) {
    return showAuthError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OnNavigateToSplash value)? onNavigateToSplash,
    TResult Function(OnPopSign value)? onPopSign,
    TResult Function(ShowAuthError value)? showAuthError,
    required TResult orElse(),
  }) {
    if (showAuthError != null) {
      return showAuthError(this);
    }
    return orElse();
  }
}

abstract class ShowAuthError implements LoginEventState {
  const factory ShowAuthError(final AuthError error) = _$ShowAuthErrorImpl;

  AuthError get error;

  /// Create a copy of LoginEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowAuthErrorImplCopyWith<_$ShowAuthErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
