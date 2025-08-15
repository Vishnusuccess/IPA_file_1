// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onLogout,
    required TResult Function() onCleanData,
    required TResult Function() onForceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onLogout,
    TResult? Function()? onCleanData,
    TResult? Function()? onForceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onLogout,
    TResult Function()? onCleanData,
    TResult Function()? onForceUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnCleanData value) onCleanData,
    required TResult Function(OnForceUpdate value) onForceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnCleanData value)? onCleanData,
    TResult? Function(OnForceUpdate value)? onForceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnCleanData value)? onCleanData,
    TResult Function(OnForceUpdate value)? onForceUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorizationEvent
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
    extends _$AuthorizationEventCopyWithImpl<$Res, _$OnLoginImpl>
    implements _$$OnLoginImplCopyWith<$Res> {
  __$$OnLoginImplCopyWithImpl(
      _$OnLoginImpl _value, $Res Function(_$OnLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLoginImpl implements OnLogin {
  const _$OnLoginImpl();

  @override
  String toString() {
    return 'AuthorizationEvent.onLogin()';
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
    required TResult Function() onLogout,
    required TResult Function() onCleanData,
    required TResult Function() onForceUpdate,
  }) {
    return onLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onLogout,
    TResult? Function()? onCleanData,
    TResult? Function()? onForceUpdate,
  }) {
    return onLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onLogout,
    TResult Function()? onCleanData,
    TResult Function()? onForceUpdate,
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
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnCleanData value) onCleanData,
    required TResult Function(OnForceUpdate value) onForceUpdate,
  }) {
    return onLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnCleanData value)? onCleanData,
    TResult? Function(OnForceUpdate value)? onForceUpdate,
  }) {
    return onLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnCleanData value)? onCleanData,
    TResult Function(OnForceUpdate value)? onForceUpdate,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(this);
    }
    return orElse();
  }
}

abstract class OnLogin implements AuthorizationEvent {
  const factory OnLogin() = _$OnLoginImpl;
}

/// @nodoc
abstract class _$$OnLogoutImplCopyWith<$Res> {
  factory _$$OnLogoutImplCopyWith(
          _$OnLogoutImpl value, $Res Function(_$OnLogoutImpl) then) =
      __$$OnLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLogoutImplCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$OnLogoutImpl>
    implements _$$OnLogoutImplCopyWith<$Res> {
  __$$OnLogoutImplCopyWithImpl(
      _$OnLogoutImpl _value, $Res Function(_$OnLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLogoutImpl implements OnLogout {
  const _$OnLogoutImpl();

  @override
  String toString() {
    return 'AuthorizationEvent.onLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onLogout,
    required TResult Function() onCleanData,
    required TResult Function() onForceUpdate,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onLogout,
    TResult? Function()? onCleanData,
    TResult? Function()? onForceUpdate,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onLogout,
    TResult Function()? onCleanData,
    TResult Function()? onForceUpdate,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnCleanData value) onCleanData,
    required TResult Function(OnForceUpdate value) onForceUpdate,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnCleanData value)? onCleanData,
    TResult? Function(OnForceUpdate value)? onForceUpdate,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnCleanData value)? onCleanData,
    TResult Function(OnForceUpdate value)? onForceUpdate,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class OnLogout implements AuthorizationEvent {
  const factory OnLogout() = _$OnLogoutImpl;
}

/// @nodoc
abstract class _$$OnCleanDataImplCopyWith<$Res> {
  factory _$$OnCleanDataImplCopyWith(
          _$OnCleanDataImpl value, $Res Function(_$OnCleanDataImpl) then) =
      __$$OnCleanDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCleanDataImplCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$OnCleanDataImpl>
    implements _$$OnCleanDataImplCopyWith<$Res> {
  __$$OnCleanDataImplCopyWithImpl(
      _$OnCleanDataImpl _value, $Res Function(_$OnCleanDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnCleanDataImpl implements OnCleanData {
  const _$OnCleanDataImpl();

  @override
  String toString() {
    return 'AuthorizationEvent.onCleanData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCleanDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onLogout,
    required TResult Function() onCleanData,
    required TResult Function() onForceUpdate,
  }) {
    return onCleanData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onLogout,
    TResult? Function()? onCleanData,
    TResult? Function()? onForceUpdate,
  }) {
    return onCleanData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onLogout,
    TResult Function()? onCleanData,
    TResult Function()? onForceUpdate,
    required TResult orElse(),
  }) {
    if (onCleanData != null) {
      return onCleanData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnCleanData value) onCleanData,
    required TResult Function(OnForceUpdate value) onForceUpdate,
  }) {
    return onCleanData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnCleanData value)? onCleanData,
    TResult? Function(OnForceUpdate value)? onForceUpdate,
  }) {
    return onCleanData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnCleanData value)? onCleanData,
    TResult Function(OnForceUpdate value)? onForceUpdate,
    required TResult orElse(),
  }) {
    if (onCleanData != null) {
      return onCleanData(this);
    }
    return orElse();
  }
}

abstract class OnCleanData implements AuthorizationEvent {
  const factory OnCleanData() = _$OnCleanDataImpl;
}

/// @nodoc
abstract class _$$OnForceUpdateImplCopyWith<$Res> {
  factory _$$OnForceUpdateImplCopyWith(
          _$OnForceUpdateImpl value, $Res Function(_$OnForceUpdateImpl) then) =
      __$$OnForceUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnForceUpdateImplCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$OnForceUpdateImpl>
    implements _$$OnForceUpdateImplCopyWith<$Res> {
  __$$OnForceUpdateImplCopyWithImpl(
      _$OnForceUpdateImpl _value, $Res Function(_$OnForceUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnForceUpdateImpl implements OnForceUpdate {
  const _$OnForceUpdateImpl();

  @override
  String toString() {
    return 'AuthorizationEvent.onForceUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnForceUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogin,
    required TResult Function() onLogout,
    required TResult Function() onCleanData,
    required TResult Function() onForceUpdate,
  }) {
    return onForceUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLogin,
    TResult? Function()? onLogout,
    TResult? Function()? onCleanData,
    TResult? Function()? onForceUpdate,
  }) {
    return onForceUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogin,
    TResult Function()? onLogout,
    TResult Function()? onCleanData,
    TResult Function()? onForceUpdate,
    required TResult orElse(),
  }) {
    if (onForceUpdate != null) {
      return onForceUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLogin value) onLogin,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnCleanData value) onCleanData,
    required TResult Function(OnForceUpdate value) onForceUpdate,
  }) {
    return onForceUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLogin value)? onLogin,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnCleanData value)? onCleanData,
    TResult? Function(OnForceUpdate value)? onForceUpdate,
  }) {
    return onForceUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLogin value)? onLogin,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnCleanData value)? onCleanData,
    TResult Function(OnForceUpdate value)? onForceUpdate,
    required TResult orElse(),
  }) {
    if (onForceUpdate != null) {
      return onForceUpdate(this);
    }
    return orElse();
  }
}

abstract class OnForceUpdate implements AuthorizationEvent {
  const factory OnForceUpdate() = _$OnForceUpdateImpl;
}

/// @nodoc
mixin _$AuthorizationState {
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get forceUpdate => throw _privateConstructorUsedError;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorizationStateCopyWith<AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
  @useResult
  $Res call({bool isLoggedIn, bool forceUpdate});
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? forceUpdate = null,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorizationStateImplCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory _$$AuthorizationStateImplCopyWith(_$AuthorizationStateImpl value,
          $Res Function(_$AuthorizationStateImpl) then) =
      __$$AuthorizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoggedIn, bool forceUpdate});
}

/// @nodoc
class __$$AuthorizationStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$AuthorizationStateImpl>
    implements _$$AuthorizationStateImplCopyWith<$Res> {
  __$$AuthorizationStateImplCopyWithImpl(_$AuthorizationStateImpl _value,
      $Res Function(_$AuthorizationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? forceUpdate = null,
  }) {
    return _then(_$AuthorizationStateImpl(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthorizationStateImpl implements _AuthorizationState {
  const _$AuthorizationStateImpl(
      {required this.isLoggedIn, required this.forceUpdate});

  @override
  final bool isLoggedIn;
  @override
  final bool forceUpdate;

  @override
  String toString() {
    return 'AuthorizationState(isLoggedIn: $isLoggedIn, forceUpdate: $forceUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationStateImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn, forceUpdate);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationStateImplCopyWith<_$AuthorizationStateImpl> get copyWith =>
      __$$AuthorizationStateImplCopyWithImpl<_$AuthorizationStateImpl>(
          this, _$identity);
}

abstract class _AuthorizationState implements AuthorizationState {
  const factory _AuthorizationState(
      {required final bool isLoggedIn,
      required final bool forceUpdate}) = _$AuthorizationStateImpl;

  @override
  bool get isLoggedIn;
  @override
  bool get forceUpdate;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorizationStateImplCopyWith<_$AuthorizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
