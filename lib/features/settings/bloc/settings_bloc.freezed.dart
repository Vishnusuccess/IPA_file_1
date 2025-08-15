// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function() onDeleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function()? onDeleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnInit value) onInit,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnDeleteUser value) onDeleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnInit value)? onInit,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnDeleteUser value)? onDeleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnInit value)? onInit,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnDeleteUser value)? onDeleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnInitImplCopyWith<$Res> {
  factory _$$OnInitImplCopyWith(
          _$OnInitImpl value, $Res Function(_$OnInitImpl) then) =
      __$$OnInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnInitImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$OnInitImpl>
    implements _$$OnInitImplCopyWith<$Res> {
  __$$OnInitImplCopyWithImpl(
      _$OnInitImpl _value, $Res Function(_$OnInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnInitImpl implements OnInit {
  const _$OnInitImpl();

  @override
  String toString() {
    return 'SettingsEvent.onInit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function() onDeleteUser,
  }) {
    return onInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteUser,
  }) {
    return onInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function()? onDeleteUser,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnInit value) onInit,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnDeleteUser value) onDeleteUser,
  }) {
    return onInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnInit value)? onInit,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnDeleteUser value)? onDeleteUser,
  }) {
    return onInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnInit value)? onInit,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnDeleteUser value)? onDeleteUser,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(this);
    }
    return orElse();
  }
}

abstract class OnInit implements SettingsEvent {
  const factory OnInit() = _$OnInitImpl;
}

/// @nodoc
abstract class _$$OnLogoutImplCopyWith<$Res> {
  factory _$$OnLogoutImplCopyWith(
          _$OnLogoutImpl value, $Res Function(_$OnLogoutImpl) then) =
      __$$OnLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLogoutImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$OnLogoutImpl>
    implements _$$OnLogoutImplCopyWith<$Res> {
  __$$OnLogoutImplCopyWithImpl(
      _$OnLogoutImpl _value, $Res Function(_$OnLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLogoutImpl implements OnLogout {
  const _$OnLogoutImpl();

  @override
  String toString() {
    return 'SettingsEvent.onLogout()';
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
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function() onDeleteUser,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteUser,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function()? onDeleteUser,
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
    required TResult Function(OnInit value) onInit,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnDeleteUser value) onDeleteUser,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnInit value)? onInit,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnDeleteUser value)? onDeleteUser,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnInit value)? onInit,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnDeleteUser value)? onDeleteUser,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class OnLogout implements SettingsEvent {
  const factory OnLogout() = _$OnLogoutImpl;
}

/// @nodoc
abstract class _$$OnDeleteUserImplCopyWith<$Res> {
  factory _$$OnDeleteUserImplCopyWith(
          _$OnDeleteUserImpl value, $Res Function(_$OnDeleteUserImpl) then) =
      __$$OnDeleteUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnDeleteUserImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$OnDeleteUserImpl>
    implements _$$OnDeleteUserImplCopyWith<$Res> {
  __$$OnDeleteUserImplCopyWithImpl(
      _$OnDeleteUserImpl _value, $Res Function(_$OnDeleteUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnDeleteUserImpl implements OnDeleteUser {
  const _$OnDeleteUserImpl();

  @override
  String toString() {
    return 'SettingsEvent.onDeleteUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnDeleteUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function() onDeleteUser,
  }) {
    return onDeleteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteUser,
  }) {
    return onDeleteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function()? onDeleteUser,
    required TResult orElse(),
  }) {
    if (onDeleteUser != null) {
      return onDeleteUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnInit value) onInit,
    required TResult Function(OnLogout value) onLogout,
    required TResult Function(OnDeleteUser value) onDeleteUser,
  }) {
    return onDeleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnInit value)? onInit,
    TResult? Function(OnLogout value)? onLogout,
    TResult? Function(OnDeleteUser value)? onDeleteUser,
  }) {
    return onDeleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnInit value)? onInit,
    TResult Function(OnLogout value)? onLogout,
    TResult Function(OnDeleteUser value)? onDeleteUser,
    required TResult orElse(),
  }) {
    if (onDeleteUser != null) {
      return onDeleteUser(this);
    }
    return orElse();
  }
}

abstract class OnDeleteUser implements SettingsEvent {
  const factory OnDeleteUser() = _$OnDeleteUserImpl;
}

/// @nodoc
mixin _$SettingsState {
  String get version => throw _privateConstructorUsedError;
  String get trueMeEnvDisplay => throw _privateConstructorUsedError;
  String get trueMeEndpointUrl => throw _privateConstructorUsedError;
  SettingsEventState get settingStateEvent =>
      throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {String version,
      String trueMeEnvDisplay,
      String trueMeEndpointUrl,
      SettingsEventState settingStateEvent,
      String userId});

  $SettingsEventStateCopyWith<$Res> get settingStateEvent;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? trueMeEnvDisplay = null,
    Object? trueMeEndpointUrl = null,
    Object? settingStateEvent = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      trueMeEnvDisplay: null == trueMeEnvDisplay
          ? _value.trueMeEnvDisplay
          : trueMeEnvDisplay // ignore: cast_nullable_to_non_nullable
              as String,
      trueMeEndpointUrl: null == trueMeEndpointUrl
          ? _value.trueMeEndpointUrl
          : trueMeEndpointUrl // ignore: cast_nullable_to_non_nullable
              as String,
      settingStateEvent: null == settingStateEvent
          ? _value.settingStateEvent
          : settingStateEvent // ignore: cast_nullable_to_non_nullable
              as SettingsEventState,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsEventStateCopyWith<$Res> get settingStateEvent {
    return $SettingsEventStateCopyWith<$Res>(_value.settingStateEvent, (value) {
      return _then(_value.copyWith(settingStateEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      String trueMeEnvDisplay,
      String trueMeEndpointUrl,
      SettingsEventState settingStateEvent,
      String userId});

  @override
  $SettingsEventStateCopyWith<$Res> get settingStateEvent;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? trueMeEnvDisplay = null,
    Object? trueMeEndpointUrl = null,
    Object? settingStateEvent = null,
    Object? userId = null,
  }) {
    return _then(_$SettingsStateImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      trueMeEnvDisplay: null == trueMeEnvDisplay
          ? _value.trueMeEnvDisplay
          : trueMeEnvDisplay // ignore: cast_nullable_to_non_nullable
              as String,
      trueMeEndpointUrl: null == trueMeEndpointUrl
          ? _value.trueMeEndpointUrl
          : trueMeEndpointUrl // ignore: cast_nullable_to_non_nullable
              as String,
      settingStateEvent: null == settingStateEvent
          ? _value.settingStateEvent
          : settingStateEvent // ignore: cast_nullable_to_non_nullable
              as SettingsEventState,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  _$SettingsStateImpl(
      {required this.version,
      required this.trueMeEnvDisplay,
      required this.trueMeEndpointUrl,
      required this.settingStateEvent,
      required this.userId});

  @override
  final String version;
  @override
  final String trueMeEnvDisplay;
  @override
  final String trueMeEndpointUrl;
  @override
  final SettingsEventState settingStateEvent;
  @override
  final String userId;

  @override
  String toString() {
    return 'SettingsState(version: $version, trueMeEnvDisplay: $trueMeEnvDisplay, trueMeEndpointUrl: $trueMeEndpointUrl, settingStateEvent: $settingStateEvent, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.trueMeEnvDisplay, trueMeEnvDisplay) ||
                other.trueMeEnvDisplay == trueMeEnvDisplay) &&
            (identical(other.trueMeEndpointUrl, trueMeEndpointUrl) ||
                other.trueMeEndpointUrl == trueMeEndpointUrl) &&
            (identical(other.settingStateEvent, settingStateEvent) ||
                other.settingStateEvent == settingStateEvent) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, trueMeEnvDisplay,
      trueMeEndpointUrl, settingStateEvent, userId);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  factory _SettingsState(
      {required final String version,
      required final String trueMeEnvDisplay,
      required final String trueMeEndpointUrl,
      required final SettingsEventState settingStateEvent,
      required final String userId}) = _$SettingsStateImpl;

  @override
  String get version;
  @override
  String get trueMeEnvDisplay;
  @override
  String get trueMeEndpointUrl;
  @override
  SettingsEventState get settingStateEvent;
  @override
  String get userId;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onLogout,
    required TResult Function() onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onLogout,
    TResult Function()? onDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnLogoutEvent value) onLogout,
    required TResult Function(_OnDeleteAccountEvent value) onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnLogoutEvent value)? onLogout,
    TResult? Function(_OnDeleteAccountEvent value)? onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnLogoutEvent value)? onLogout,
    TResult Function(_OnDeleteAccountEvent value)? onDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventStateCopyWith<$Res> {
  factory $SettingsEventStateCopyWith(
          SettingsEventState value, $Res Function(SettingsEventState) then) =
      _$SettingsEventStateCopyWithImpl<$Res, SettingsEventState>;
}

/// @nodoc
class _$SettingsEventStateCopyWithImpl<$Res, $Val extends SettingsEventState>
    implements $SettingsEventStateCopyWith<$Res> {
  _$SettingsEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEventState
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
    extends _$SettingsEventStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'SettingsEventState.idle()';
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
    required TResult Function() onLogout,
    required TResult Function() onDeleteAccount,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteAccount,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onLogout,
    TResult Function()? onDeleteAccount,
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
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnLogoutEvent value) onLogout,
    required TResult Function(_OnDeleteAccountEvent value) onDeleteAccount,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnLogoutEvent value)? onLogout,
    TResult? Function(_OnDeleteAccountEvent value)? onDeleteAccount,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnLogoutEvent value)? onLogout,
    TResult Function(_OnDeleteAccountEvent value)? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SettingsEventState {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$OnLogoutEventImplCopyWith<$Res> {
  factory _$$OnLogoutEventImplCopyWith(
          _$OnLogoutEventImpl value, $Res Function(_$OnLogoutEventImpl) then) =
      __$$OnLogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLogoutEventImplCopyWithImpl<$Res>
    extends _$SettingsEventStateCopyWithImpl<$Res, _$OnLogoutEventImpl>
    implements _$$OnLogoutEventImplCopyWith<$Res> {
  __$$OnLogoutEventImplCopyWithImpl(
      _$OnLogoutEventImpl _value, $Res Function(_$OnLogoutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLogoutEventImpl implements _OnLogoutEvent {
  const _$OnLogoutEventImpl();

  @override
  String toString() {
    return 'SettingsEventState.onLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onLogout,
    required TResult Function() onDeleteAccount,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteAccount,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onLogout,
    TResult Function()? onDeleteAccount,
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
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnLogoutEvent value) onLogout,
    required TResult Function(_OnDeleteAccountEvent value) onDeleteAccount,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnLogoutEvent value)? onLogout,
    TResult? Function(_OnDeleteAccountEvent value)? onDeleteAccount,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnLogoutEvent value)? onLogout,
    TResult Function(_OnDeleteAccountEvent value)? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class _OnLogoutEvent implements SettingsEventState {
  const factory _OnLogoutEvent() = _$OnLogoutEventImpl;
}

/// @nodoc
abstract class _$$OnDeleteAccountEventImplCopyWith<$Res> {
  factory _$$OnDeleteAccountEventImplCopyWith(_$OnDeleteAccountEventImpl value,
          $Res Function(_$OnDeleteAccountEventImpl) then) =
      __$$OnDeleteAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnDeleteAccountEventImplCopyWithImpl<$Res>
    extends _$SettingsEventStateCopyWithImpl<$Res, _$OnDeleteAccountEventImpl>
    implements _$$OnDeleteAccountEventImplCopyWith<$Res> {
  __$$OnDeleteAccountEventImplCopyWithImpl(_$OnDeleteAccountEventImpl _value,
      $Res Function(_$OnDeleteAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnDeleteAccountEventImpl implements _OnDeleteAccountEvent {
  const _$OnDeleteAccountEventImpl();

  @override
  String toString() {
    return 'SettingsEventState.onDeleteAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onLogout,
    required TResult Function() onDeleteAccount,
  }) {
    return onDeleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onLogout,
    TResult? Function()? onDeleteAccount,
  }) {
    return onDeleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onLogout,
    TResult Function()? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onDeleteAccount != null) {
      return onDeleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnLogoutEvent value) onLogout,
    required TResult Function(_OnDeleteAccountEvent value) onDeleteAccount,
  }) {
    return onDeleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnLogoutEvent value)? onLogout,
    TResult? Function(_OnDeleteAccountEvent value)? onDeleteAccount,
  }) {
    return onDeleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnLogoutEvent value)? onLogout,
    TResult Function(_OnDeleteAccountEvent value)? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onDeleteAccount != null) {
      return onDeleteAccount(this);
    }
    return orElse();
  }
}

abstract class _OnDeleteAccountEvent implements SettingsEventState {
  const factory _OnDeleteAccountEvent() = _$OnDeleteAccountEventImpl;
}
