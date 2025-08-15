// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_issue_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportIssueEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String message) onMessageChanged,
    required TResult Function(String issueType) onIssueTypeChanged,
    required TResult Function() onSubmitReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String message)? onMessageChanged,
    TResult? Function(String issueType)? onIssueTypeChanged,
    TResult? Function()? onSubmitReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String message)? onMessageChanged,
    TResult Function(String issueType)? onIssueTypeChanged,
    TResult Function()? onSubmitReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_OnIssueTypeChanged value) onIssueTypeChanged,
    required TResult Function(_OnSubmitReport value) onSubmitReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult? Function(_OnSubmitReport value)? onSubmitReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult Function(_OnSubmitReport value)? onSubmitReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportIssueEventCopyWith<$Res> {
  factory $ReportIssueEventCopyWith(
          ReportIssueEvent value, $Res Function(ReportIssueEvent) then) =
      _$ReportIssueEventCopyWithImpl<$Res, ReportIssueEvent>;
}

/// @nodoc
class _$ReportIssueEventCopyWithImpl<$Res, $Val extends ReportIssueEvent>
    implements $ReportIssueEventCopyWith<$Res> {
  _$ReportIssueEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportIssueEvent
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
    extends _$ReportIssueEventCopyWithImpl<$Res, _$OnInitImpl>
    implements _$$OnInitImplCopyWith<$Res> {
  __$$OnInitImplCopyWithImpl(
      _$OnInitImpl _value, $Res Function(_$OnInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnInitImpl with DiagnosticableTreeMixin implements _OnInit {
  const _$OnInitImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEvent.onInit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ReportIssueEvent.onInit'));
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
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String message) onMessageChanged,
    required TResult Function(String issueType) onIssueTypeChanged,
    required TResult Function() onSubmitReport,
  }) {
    return onInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String message)? onMessageChanged,
    TResult? Function(String issueType)? onIssueTypeChanged,
    TResult? Function()? onSubmitReport,
  }) {
    return onInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String message)? onMessageChanged,
    TResult Function(String issueType)? onIssueTypeChanged,
    TResult Function()? onSubmitReport,
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
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_OnIssueTypeChanged value) onIssueTypeChanged,
    required TResult Function(_OnSubmitReport value) onSubmitReport,
  }) {
    return onInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult? Function(_OnSubmitReport value)? onSubmitReport,
  }) {
    return onInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult Function(_OnSubmitReport value)? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(this);
    }
    return orElse();
  }
}

abstract class _OnInit implements ReportIssueEvent {
  const factory _OnInit() = _$OnInitImpl;
}

/// @nodoc
abstract class _$$OnEmailChangedImplCopyWith<$Res> {
  factory _$$OnEmailChangedImplCopyWith(_$OnEmailChangedImpl value,
          $Res Function(_$OnEmailChangedImpl) then) =
      __$$OnEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OnEmailChangedImplCopyWithImpl<$Res>
    extends _$ReportIssueEventCopyWithImpl<$Res, _$OnEmailChangedImpl>
    implements _$$OnEmailChangedImplCopyWith<$Res> {
  __$$OnEmailChangedImplCopyWithImpl(
      _$OnEmailChangedImpl _value, $Res Function(_$OnEmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$OnEmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEmailChangedImpl
    with DiagnosticableTreeMixin
    implements _OnEmailChanged {
  const _$OnEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEvent.onEmailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportIssueEvent.onEmailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      __$$OnEmailChangedImplCopyWithImpl<_$OnEmailChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String message) onMessageChanged,
    required TResult Function(String issueType) onIssueTypeChanged,
    required TResult Function() onSubmitReport,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String message)? onMessageChanged,
    TResult? Function(String issueType)? onIssueTypeChanged,
    TResult? Function()? onSubmitReport,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String message)? onMessageChanged,
    TResult Function(String issueType)? onIssueTypeChanged,
    TResult Function()? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_OnIssueTypeChanged value) onIssueTypeChanged,
    required TResult Function(_OnSubmitReport value) onSubmitReport,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult? Function(_OnSubmitReport value)? onSubmitReport,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult Function(_OnSubmitReport value)? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEmailChanged implements ReportIssueEvent {
  const factory _OnEmailChanged(final String email) = _$OnEmailChangedImpl;

  String get email;

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMessageChangedImplCopyWith<$Res> {
  factory _$$OnMessageChangedImplCopyWith(_$OnMessageChangedImpl value,
          $Res Function(_$OnMessageChangedImpl) then) =
      __$$OnMessageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OnMessageChangedImplCopyWithImpl<$Res>
    extends _$ReportIssueEventCopyWithImpl<$Res, _$OnMessageChangedImpl>
    implements _$$OnMessageChangedImplCopyWith<$Res> {
  __$$OnMessageChangedImplCopyWithImpl(_$OnMessageChangedImpl _value,
      $Res Function(_$OnMessageChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OnMessageChangedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnMessageChangedImpl
    with DiagnosticableTreeMixin
    implements _OnMessageChanged {
  const _$OnMessageChangedImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEvent.onMessageChanged(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportIssueEvent.onMessageChanged'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessageChangedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMessageChangedImplCopyWith<_$OnMessageChangedImpl> get copyWith =>
      __$$OnMessageChangedImplCopyWithImpl<_$OnMessageChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String message) onMessageChanged,
    required TResult Function(String issueType) onIssueTypeChanged,
    required TResult Function() onSubmitReport,
  }) {
    return onMessageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String message)? onMessageChanged,
    TResult? Function(String issueType)? onIssueTypeChanged,
    TResult? Function()? onSubmitReport,
  }) {
    return onMessageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String message)? onMessageChanged,
    TResult Function(String issueType)? onIssueTypeChanged,
    TResult Function()? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onMessageChanged != null) {
      return onMessageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_OnIssueTypeChanged value) onIssueTypeChanged,
    required TResult Function(_OnSubmitReport value) onSubmitReport,
  }) {
    return onMessageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult? Function(_OnSubmitReport value)? onSubmitReport,
  }) {
    return onMessageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult Function(_OnSubmitReport value)? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onMessageChanged != null) {
      return onMessageChanged(this);
    }
    return orElse();
  }
}

abstract class _OnMessageChanged implements ReportIssueEvent {
  const factory _OnMessageChanged(final String message) =
      _$OnMessageChangedImpl;

  String get message;

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnMessageChangedImplCopyWith<_$OnMessageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnIssueTypeChangedImplCopyWith<$Res> {
  factory _$$OnIssueTypeChangedImplCopyWith(_$OnIssueTypeChangedImpl value,
          $Res Function(_$OnIssueTypeChangedImpl) then) =
      __$$OnIssueTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String issueType});
}

/// @nodoc
class __$$OnIssueTypeChangedImplCopyWithImpl<$Res>
    extends _$ReportIssueEventCopyWithImpl<$Res, _$OnIssueTypeChangedImpl>
    implements _$$OnIssueTypeChangedImplCopyWith<$Res> {
  __$$OnIssueTypeChangedImplCopyWithImpl(_$OnIssueTypeChangedImpl _value,
      $Res Function(_$OnIssueTypeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issueType = null,
  }) {
    return _then(_$OnIssueTypeChangedImpl(
      null == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnIssueTypeChangedImpl
    with DiagnosticableTreeMixin
    implements _OnIssueTypeChanged {
  const _$OnIssueTypeChangedImpl(this.issueType);

  @override
  final String issueType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEvent.onIssueTypeChanged(issueType: $issueType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportIssueEvent.onIssueTypeChanged'))
      ..add(DiagnosticsProperty('issueType', issueType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnIssueTypeChangedImpl &&
            (identical(other.issueType, issueType) ||
                other.issueType == issueType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, issueType);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnIssueTypeChangedImplCopyWith<_$OnIssueTypeChangedImpl> get copyWith =>
      __$$OnIssueTypeChangedImplCopyWithImpl<_$OnIssueTypeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String message) onMessageChanged,
    required TResult Function(String issueType) onIssueTypeChanged,
    required TResult Function() onSubmitReport,
  }) {
    return onIssueTypeChanged(issueType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String message)? onMessageChanged,
    TResult? Function(String issueType)? onIssueTypeChanged,
    TResult? Function()? onSubmitReport,
  }) {
    return onIssueTypeChanged?.call(issueType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String message)? onMessageChanged,
    TResult Function(String issueType)? onIssueTypeChanged,
    TResult Function()? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onIssueTypeChanged != null) {
      return onIssueTypeChanged(issueType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_OnIssueTypeChanged value) onIssueTypeChanged,
    required TResult Function(_OnSubmitReport value) onSubmitReport,
  }) {
    return onIssueTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult? Function(_OnSubmitReport value)? onSubmitReport,
  }) {
    return onIssueTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult Function(_OnSubmitReport value)? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onIssueTypeChanged != null) {
      return onIssueTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _OnIssueTypeChanged implements ReportIssueEvent {
  const factory _OnIssueTypeChanged(final String issueType) =
      _$OnIssueTypeChangedImpl;

  String get issueType;

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnIssueTypeChangedImplCopyWith<_$OnIssueTypeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSubmitReportImplCopyWith<$Res> {
  factory _$$OnSubmitReportImplCopyWith(_$OnSubmitReportImpl value,
          $Res Function(_$OnSubmitReportImpl) then) =
      __$$OnSubmitReportImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSubmitReportImplCopyWithImpl<$Res>
    extends _$ReportIssueEventCopyWithImpl<$Res, _$OnSubmitReportImpl>
    implements _$$OnSubmitReportImplCopyWith<$Res> {
  __$$OnSubmitReportImplCopyWithImpl(
      _$OnSubmitReportImpl _value, $Res Function(_$OnSubmitReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSubmitReportImpl
    with DiagnosticableTreeMixin
    implements _OnSubmitReport {
  const _$OnSubmitReportImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEvent.onSubmitReport()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ReportIssueEvent.onSubmitReport'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSubmitReportImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String message) onMessageChanged,
    required TResult Function(String issueType) onIssueTypeChanged,
    required TResult Function() onSubmitReport,
  }) {
    return onSubmitReport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String message)? onMessageChanged,
    TResult? Function(String issueType)? onIssueTypeChanged,
    TResult? Function()? onSubmitReport,
  }) {
    return onSubmitReport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String message)? onMessageChanged,
    TResult Function(String issueType)? onIssueTypeChanged,
    TResult Function()? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onSubmitReport != null) {
      return onSubmitReport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_OnIssueTypeChanged value) onIssueTypeChanged,
    required TResult Function(_OnSubmitReport value) onSubmitReport,
  }) {
    return onSubmitReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult? Function(_OnSubmitReport value)? onSubmitReport,
  }) {
    return onSubmitReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_OnIssueTypeChanged value)? onIssueTypeChanged,
    TResult Function(_OnSubmitReport value)? onSubmitReport,
    required TResult orElse(),
  }) {
    if (onSubmitReport != null) {
      return onSubmitReport(this);
    }
    return orElse();
  }
}

abstract class _OnSubmitReport implements ReportIssueEvent {
  const factory _OnSubmitReport() = _$OnSubmitReportImpl;
}

/// @nodoc
mixin _$ReportIssueState {
  String get stateId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get selectedIssueType => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  ReportIssueEventState get reportIssueEvent =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportIssueStateCopyWith<ReportIssueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportIssueStateCopyWith<$Res> {
  factory $ReportIssueStateCopyWith(
          ReportIssueState value, $Res Function(ReportIssueState) then) =
      _$ReportIssueStateCopyWithImpl<$Res, ReportIssueState>;
  @useResult
  $Res call(
      {String stateId,
      String email,
      String message,
      String? selectedIssueType,
      bool isSubmitting,
      bool isFormValid,
      ReportIssueEventState reportIssueEvent,
      String? error});

  $ReportIssueEventStateCopyWith<$Res> get reportIssueEvent;
}

/// @nodoc
class _$ReportIssueStateCopyWithImpl<$Res, $Val extends ReportIssueState>
    implements $ReportIssueStateCopyWith<$Res> {
  _$ReportIssueStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? email = null,
    Object? message = null,
    Object? selectedIssueType = freezed,
    Object? isSubmitting = null,
    Object? isFormValid = null,
    Object? reportIssueEvent = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIssueType: freezed == selectedIssueType
          ? _value.selectedIssueType
          : selectedIssueType // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      reportIssueEvent: null == reportIssueEvent
          ? _value.reportIssueEvent
          : reportIssueEvent // ignore: cast_nullable_to_non_nullable
              as ReportIssueEventState,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportIssueEventStateCopyWith<$Res> get reportIssueEvent {
    return $ReportIssueEventStateCopyWith<$Res>(_value.reportIssueEvent,
        (value) {
      return _then(_value.copyWith(reportIssueEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportIssueStateImplCopyWith<$Res>
    implements $ReportIssueStateCopyWith<$Res> {
  factory _$$ReportIssueStateImplCopyWith(_$ReportIssueStateImpl value,
          $Res Function(_$ReportIssueStateImpl) then) =
      __$$ReportIssueStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      String email,
      String message,
      String? selectedIssueType,
      bool isSubmitting,
      bool isFormValid,
      ReportIssueEventState reportIssueEvent,
      String? error});

  @override
  $ReportIssueEventStateCopyWith<$Res> get reportIssueEvent;
}

/// @nodoc
class __$$ReportIssueStateImplCopyWithImpl<$Res>
    extends _$ReportIssueStateCopyWithImpl<$Res, _$ReportIssueStateImpl>
    implements _$$ReportIssueStateImplCopyWith<$Res> {
  __$$ReportIssueStateImplCopyWithImpl(_$ReportIssueStateImpl _value,
      $Res Function(_$ReportIssueStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? email = null,
    Object? message = null,
    Object? selectedIssueType = freezed,
    Object? isSubmitting = null,
    Object? isFormValid = null,
    Object? reportIssueEvent = null,
    Object? error = freezed,
  }) {
    return _then(_$ReportIssueStateImpl(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIssueType: freezed == selectedIssueType
          ? _value.selectedIssueType
          : selectedIssueType // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      reportIssueEvent: null == reportIssueEvent
          ? _value.reportIssueEvent
          : reportIssueEvent // ignore: cast_nullable_to_non_nullable
              as ReportIssueEventState,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReportIssueStateImpl
    with DiagnosticableTreeMixin
    implements _ReportIssueState {
  const _$ReportIssueStateImpl(
      {required this.stateId,
      required this.email,
      required this.message,
      required this.selectedIssueType,
      required this.isSubmitting,
      required this.isFormValid,
      required this.reportIssueEvent,
      this.error});

  @override
  final String stateId;
  @override
  final String email;
  @override
  final String message;
  @override
  final String? selectedIssueType;
  @override
  final bool isSubmitting;
  @override
  final bool isFormValid;
  @override
  final ReportIssueEventState reportIssueEvent;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueState(stateId: $stateId, email: $email, message: $message, selectedIssueType: $selectedIssueType, isSubmitting: $isSubmitting, isFormValid: $isFormValid, reportIssueEvent: $reportIssueEvent, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportIssueState'))
      ..add(DiagnosticsProperty('stateId', stateId))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('selectedIssueType', selectedIssueType))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isFormValid', isFormValid))
      ..add(DiagnosticsProperty('reportIssueEvent', reportIssueEvent))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportIssueStateImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.selectedIssueType, selectedIssueType) ||
                other.selectedIssueType == selectedIssueType) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.reportIssueEvent, reportIssueEvent) ||
                other.reportIssueEvent == reportIssueEvent) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateId, email, message,
      selectedIssueType, isSubmitting, isFormValid, reportIssueEvent, error);

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportIssueStateImplCopyWith<_$ReportIssueStateImpl> get copyWith =>
      __$$ReportIssueStateImplCopyWithImpl<_$ReportIssueStateImpl>(
          this, _$identity);
}

abstract class _ReportIssueState implements ReportIssueState {
  const factory _ReportIssueState(
      {required final String stateId,
      required final String email,
      required final String message,
      required final String? selectedIssueType,
      required final bool isSubmitting,
      required final bool isFormValid,
      required final ReportIssueEventState reportIssueEvent,
      final String? error}) = _$ReportIssueStateImpl;

  @override
  String get stateId;
  @override
  String get email;
  @override
  String get message;
  @override
  String? get selectedIssueType;
  @override
  bool get isSubmitting;
  @override
  bool get isFormValid;
  @override
  ReportIssueEventState get reportIssueEvent;
  @override
  String? get error;

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportIssueStateImplCopyWith<_$ReportIssueStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportIssueEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onSubmitSuccess,
    required TResult Function(String error) onSubmitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSubmitSuccess,
    TResult? Function(String error)? onSubmitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSubmitSuccess,
    TResult Function(String error)? onSubmitError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnSubmitSuccess value) onSubmitSuccess,
    required TResult Function(_OnSubmitError value) onSubmitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult? Function(_OnSubmitError value)? onSubmitError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult Function(_OnSubmitError value)? onSubmitError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportIssueEventStateCopyWith<$Res> {
  factory $ReportIssueEventStateCopyWith(ReportIssueEventState value,
          $Res Function(ReportIssueEventState) then) =
      _$ReportIssueEventStateCopyWithImpl<$Res, ReportIssueEventState>;
}

/// @nodoc
class _$ReportIssueEventStateCopyWithImpl<$Res,
        $Val extends ReportIssueEventState>
    implements $ReportIssueEventStateCopyWith<$Res> {
  _$ReportIssueEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportIssueEventState
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
    extends _$ReportIssueEventStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl with DiagnosticableTreeMixin implements _Idle {
  const _$IdleImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEventState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ReportIssueEventState.idle'));
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
    required TResult Function() onSubmitSuccess,
    required TResult Function(String error) onSubmitError,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSubmitSuccess,
    TResult? Function(String error)? onSubmitError,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSubmitSuccess,
    TResult Function(String error)? onSubmitError,
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
    required TResult Function(_OnSubmitSuccess value) onSubmitSuccess,
    required TResult Function(_OnSubmitError value) onSubmitError,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult? Function(_OnSubmitError value)? onSubmitError,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult Function(_OnSubmitError value)? onSubmitError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements ReportIssueEventState {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$OnSubmitSuccessImplCopyWith<$Res> {
  factory _$$OnSubmitSuccessImplCopyWith(_$OnSubmitSuccessImpl value,
          $Res Function(_$OnSubmitSuccessImpl) then) =
      __$$OnSubmitSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSubmitSuccessImplCopyWithImpl<$Res>
    extends _$ReportIssueEventStateCopyWithImpl<$Res, _$OnSubmitSuccessImpl>
    implements _$$OnSubmitSuccessImplCopyWith<$Res> {
  __$$OnSubmitSuccessImplCopyWithImpl(
      _$OnSubmitSuccessImpl _value, $Res Function(_$OnSubmitSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSubmitSuccessImpl
    with DiagnosticableTreeMixin
    implements _OnSubmitSuccess {
  const _$OnSubmitSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEventState.onSubmitSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ReportIssueEventState.onSubmitSuccess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSubmitSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onSubmitSuccess,
    required TResult Function(String error) onSubmitError,
  }) {
    return onSubmitSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSubmitSuccess,
    TResult? Function(String error)? onSubmitError,
  }) {
    return onSubmitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSubmitSuccess,
    TResult Function(String error)? onSubmitError,
    required TResult orElse(),
  }) {
    if (onSubmitSuccess != null) {
      return onSubmitSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnSubmitSuccess value) onSubmitSuccess,
    required TResult Function(_OnSubmitError value) onSubmitError,
  }) {
    return onSubmitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult? Function(_OnSubmitError value)? onSubmitError,
  }) {
    return onSubmitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult Function(_OnSubmitError value)? onSubmitError,
    required TResult orElse(),
  }) {
    if (onSubmitSuccess != null) {
      return onSubmitSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnSubmitSuccess implements ReportIssueEventState {
  const factory _OnSubmitSuccess() = _$OnSubmitSuccessImpl;
}

/// @nodoc
abstract class _$$OnSubmitErrorImplCopyWith<$Res> {
  factory _$$OnSubmitErrorImplCopyWith(
          _$OnSubmitErrorImpl value, $Res Function(_$OnSubmitErrorImpl) then) =
      __$$OnSubmitErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$OnSubmitErrorImplCopyWithImpl<$Res>
    extends _$ReportIssueEventStateCopyWithImpl<$Res, _$OnSubmitErrorImpl>
    implements _$$OnSubmitErrorImplCopyWith<$Res> {
  __$$OnSubmitErrorImplCopyWithImpl(
      _$OnSubmitErrorImpl _value, $Res Function(_$OnSubmitErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportIssueEventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OnSubmitErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSubmitErrorImpl
    with DiagnosticableTreeMixin
    implements _OnSubmitError {
  const _$OnSubmitErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportIssueEventState.onSubmitError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportIssueEventState.onSubmitError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSubmitErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ReportIssueEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSubmitErrorImplCopyWith<_$OnSubmitErrorImpl> get copyWith =>
      __$$OnSubmitErrorImplCopyWithImpl<_$OnSubmitErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onSubmitSuccess,
    required TResult Function(String error) onSubmitError,
  }) {
    return onSubmitError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSubmitSuccess,
    TResult? Function(String error)? onSubmitError,
  }) {
    return onSubmitError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSubmitSuccess,
    TResult Function(String error)? onSubmitError,
    required TResult orElse(),
  }) {
    if (onSubmitError != null) {
      return onSubmitError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnSubmitSuccess value) onSubmitSuccess,
    required TResult Function(_OnSubmitError value) onSubmitError,
  }) {
    return onSubmitError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult? Function(_OnSubmitError value)? onSubmitError,
  }) {
    return onSubmitError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSubmitSuccess value)? onSubmitSuccess,
    TResult Function(_OnSubmitError value)? onSubmitError,
    required TResult orElse(),
  }) {
    if (onSubmitError != null) {
      return onSubmitError(this);
    }
    return orElse();
  }
}

abstract class _OnSubmitError implements ReportIssueEventState {
  const factory _OnSubmitError(final String error) = _$OnSubmitErrorImpl;

  String get error;

  /// Create a copy of ReportIssueEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSubmitErrorImplCopyWith<_$OnSubmitErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
