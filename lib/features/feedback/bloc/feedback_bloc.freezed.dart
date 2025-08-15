// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedbackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String blockFeedbackId) onFetchFeedbackData,
    required TResult Function(BlockFeedbackAnswerArgs args) onCompleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String blockFeedbackId)? onFetchFeedbackData,
    TResult? Function(BlockFeedbackAnswerArgs args)? onCompleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String blockFeedbackId)? onFetchFeedbackData,
    TResult Function(BlockFeedbackAnswerArgs args)? onCompleteFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchFeedbackData value) onFetchFeedbackData,
    required TResult Function(_OnCompleteFeedback value) onCompleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchFeedbackData value)? onFetchFeedbackData,
    TResult? Function(_OnCompleteFeedback value)? onCompleteFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchFeedbackData value)? onFetchFeedbackData,
    TResult Function(_OnCompleteFeedback value)? onCompleteFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackEventCopyWith<$Res> {
  factory $FeedbackEventCopyWith(
          FeedbackEvent value, $Res Function(FeedbackEvent) then) =
      _$FeedbackEventCopyWithImpl<$Res, FeedbackEvent>;
}

/// @nodoc
class _$FeedbackEventCopyWithImpl<$Res, $Val extends FeedbackEvent>
    implements $FeedbackEventCopyWith<$Res> {
  _$FeedbackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnFetchFeedbackDataImplCopyWith<$Res> {
  factory _$$OnFetchFeedbackDataImplCopyWith(_$OnFetchFeedbackDataImpl value,
          $Res Function(_$OnFetchFeedbackDataImpl) then) =
      __$$OnFetchFeedbackDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blockFeedbackId});
}

/// @nodoc
class __$$OnFetchFeedbackDataImplCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$OnFetchFeedbackDataImpl>
    implements _$$OnFetchFeedbackDataImplCopyWith<$Res> {
  __$$OnFetchFeedbackDataImplCopyWithImpl(_$OnFetchFeedbackDataImpl _value,
      $Res Function(_$OnFetchFeedbackDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockFeedbackId = null,
  }) {
    return _then(_$OnFetchFeedbackDataImpl(
      null == blockFeedbackId
          ? _value.blockFeedbackId
          : blockFeedbackId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnFetchFeedbackDataImpl implements _OnFetchFeedbackData {
  const _$OnFetchFeedbackDataImpl(this.blockFeedbackId);

  @override
  final String blockFeedbackId;

  @override
  String toString() {
    return 'FeedbackEvent.onFetchFeedbackData(blockFeedbackId: $blockFeedbackId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFetchFeedbackDataImpl &&
            (identical(other.blockFeedbackId, blockFeedbackId) ||
                other.blockFeedbackId == blockFeedbackId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockFeedbackId);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFetchFeedbackDataImplCopyWith<_$OnFetchFeedbackDataImpl> get copyWith =>
      __$$OnFetchFeedbackDataImplCopyWithImpl<_$OnFetchFeedbackDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String blockFeedbackId) onFetchFeedbackData,
    required TResult Function(BlockFeedbackAnswerArgs args) onCompleteFeedback,
  }) {
    return onFetchFeedbackData(blockFeedbackId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String blockFeedbackId)? onFetchFeedbackData,
    TResult? Function(BlockFeedbackAnswerArgs args)? onCompleteFeedback,
  }) {
    return onFetchFeedbackData?.call(blockFeedbackId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String blockFeedbackId)? onFetchFeedbackData,
    TResult Function(BlockFeedbackAnswerArgs args)? onCompleteFeedback,
    required TResult orElse(),
  }) {
    if (onFetchFeedbackData != null) {
      return onFetchFeedbackData(blockFeedbackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchFeedbackData value) onFetchFeedbackData,
    required TResult Function(_OnCompleteFeedback value) onCompleteFeedback,
  }) {
    return onFetchFeedbackData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchFeedbackData value)? onFetchFeedbackData,
    TResult? Function(_OnCompleteFeedback value)? onCompleteFeedback,
  }) {
    return onFetchFeedbackData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchFeedbackData value)? onFetchFeedbackData,
    TResult Function(_OnCompleteFeedback value)? onCompleteFeedback,
    required TResult orElse(),
  }) {
    if (onFetchFeedbackData != null) {
      return onFetchFeedbackData(this);
    }
    return orElse();
  }
}

abstract class _OnFetchFeedbackData implements FeedbackEvent {
  const factory _OnFetchFeedbackData(final String blockFeedbackId) =
      _$OnFetchFeedbackDataImpl;

  String get blockFeedbackId;

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnFetchFeedbackDataImplCopyWith<_$OnFetchFeedbackDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCompleteFeedbackImplCopyWith<$Res> {
  factory _$$OnCompleteFeedbackImplCopyWith(_$OnCompleteFeedbackImpl value,
          $Res Function(_$OnCompleteFeedbackImpl) then) =
      __$$OnCompleteFeedbackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockFeedbackAnswerArgs args});
}

/// @nodoc
class __$$OnCompleteFeedbackImplCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$OnCompleteFeedbackImpl>
    implements _$$OnCompleteFeedbackImplCopyWith<$Res> {
  __$$OnCompleteFeedbackImplCopyWithImpl(_$OnCompleteFeedbackImpl _value,
      $Res Function(_$OnCompleteFeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$OnCompleteFeedbackImpl(
      null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as BlockFeedbackAnswerArgs,
    ));
  }
}

/// @nodoc

class _$OnCompleteFeedbackImpl implements _OnCompleteFeedback {
  const _$OnCompleteFeedbackImpl(this.args);

  @override
  final BlockFeedbackAnswerArgs args;

  @override
  String toString() {
    return 'FeedbackEvent.onCompleteFeedback(args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCompleteFeedbackImpl &&
            (identical(other.args, args) || other.args == args));
  }

  @override
  int get hashCode => Object.hash(runtimeType, args);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCompleteFeedbackImplCopyWith<_$OnCompleteFeedbackImpl> get copyWith =>
      __$$OnCompleteFeedbackImplCopyWithImpl<_$OnCompleteFeedbackImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String blockFeedbackId) onFetchFeedbackData,
    required TResult Function(BlockFeedbackAnswerArgs args) onCompleteFeedback,
  }) {
    return onCompleteFeedback(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String blockFeedbackId)? onFetchFeedbackData,
    TResult? Function(BlockFeedbackAnswerArgs args)? onCompleteFeedback,
  }) {
    return onCompleteFeedback?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String blockFeedbackId)? onFetchFeedbackData,
    TResult Function(BlockFeedbackAnswerArgs args)? onCompleteFeedback,
    required TResult orElse(),
  }) {
    if (onCompleteFeedback != null) {
      return onCompleteFeedback(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchFeedbackData value) onFetchFeedbackData,
    required TResult Function(_OnCompleteFeedback value) onCompleteFeedback,
  }) {
    return onCompleteFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchFeedbackData value)? onFetchFeedbackData,
    TResult? Function(_OnCompleteFeedback value)? onCompleteFeedback,
  }) {
    return onCompleteFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchFeedbackData value)? onFetchFeedbackData,
    TResult Function(_OnCompleteFeedback value)? onCompleteFeedback,
    required TResult orElse(),
  }) {
    if (onCompleteFeedback != null) {
      return onCompleteFeedback(this);
    }
    return orElse();
  }
}

abstract class _OnCompleteFeedback implements FeedbackEvent {
  const factory _OnCompleteFeedback(final BlockFeedbackAnswerArgs args) =
      _$OnCompleteFeedbackImpl;

  BlockFeedbackAnswerArgs get args;

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnCompleteFeedbackImplCopyWith<_$OnCompleteFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedbackState {
  bool get isLoading => throw _privateConstructorUsedError;
  FeedbackEventState get feedbackEvent => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  StringBlockFeedbackModel? get feedback => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackStateCopyWith<FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res, FeedbackState>;
  @useResult
  $Res call(
      {bool isLoading,
      FeedbackEventState feedbackEvent,
      bool isCompleted,
      StringBlockFeedbackModel? feedback,
      String? error});

  $FeedbackEventStateCopyWith<$Res> get feedbackEvent;
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res, $Val extends FeedbackState>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? feedbackEvent = null,
    Object? isCompleted = null,
    Object? feedback = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackEvent: null == feedbackEvent
          ? _value.feedbackEvent
          : feedbackEvent // ignore: cast_nullable_to_non_nullable
              as FeedbackEventState,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as StringBlockFeedbackModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackEventStateCopyWith<$Res> get feedbackEvent {
    return $FeedbackEventStateCopyWith<$Res>(_value.feedbackEvent, (value) {
      return _then(_value.copyWith(feedbackEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackStateImplCopyWith<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  factory _$$FeedbackStateImplCopyWith(
          _$FeedbackStateImpl value, $Res Function(_$FeedbackStateImpl) then) =
      __$$FeedbackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      FeedbackEventState feedbackEvent,
      bool isCompleted,
      StringBlockFeedbackModel? feedback,
      String? error});

  @override
  $FeedbackEventStateCopyWith<$Res> get feedbackEvent;
}

/// @nodoc
class __$$FeedbackStateImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$FeedbackStateImpl>
    implements _$$FeedbackStateImplCopyWith<$Res> {
  __$$FeedbackStateImplCopyWithImpl(
      _$FeedbackStateImpl _value, $Res Function(_$FeedbackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? feedbackEvent = null,
    Object? isCompleted = null,
    Object? feedback = freezed,
    Object? error = freezed,
  }) {
    return _then(_$FeedbackStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackEvent: null == feedbackEvent
          ? _value.feedbackEvent
          : feedbackEvent // ignore: cast_nullable_to_non_nullable
              as FeedbackEventState,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as StringBlockFeedbackModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeedbackStateImpl implements _FeedbackState {
  const _$FeedbackStateImpl(
      {required this.isLoading,
      required this.feedbackEvent,
      required this.isCompleted,
      this.feedback,
      this.error});

  @override
  final bool isLoading;
  @override
  final FeedbackEventState feedbackEvent;
  @override
  final bool isCompleted;
  @override
  final StringBlockFeedbackModel? feedback;
  @override
  final String? error;

  @override
  String toString() {
    return 'FeedbackState(isLoading: $isLoading, feedbackEvent: $feedbackEvent, isCompleted: $isCompleted, feedback: $feedback, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.feedbackEvent, feedbackEvent) ||
                other.feedbackEvent == feedbackEvent) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, feedbackEvent, isCompleted, feedback, error);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      __$$FeedbackStateImplCopyWithImpl<_$FeedbackStateImpl>(this, _$identity);
}

abstract class _FeedbackState implements FeedbackState {
  const factory _FeedbackState(
      {required final bool isLoading,
      required final FeedbackEventState feedbackEvent,
      required final bool isCompleted,
      final StringBlockFeedbackModel? feedback,
      final String? error}) = _$FeedbackStateImpl;

  @override
  bool get isLoading;
  @override
  FeedbackEventState get feedbackEvent;
  @override
  bool get isCompleted;
  @override
  StringBlockFeedbackModel? get feedback;
  @override
  String? get error;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedbackEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onSuccessGetFeedback,
    required TResult Function() onFeedbackCompleted,
    required TResult Function(NetworkError error) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSuccessGetFeedback,
    TResult? Function()? onFeedbackCompleted,
    TResult? Function(NetworkError error)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSuccessGetFeedback,
    TResult Function()? onFeedbackCompleted,
    TResult Function(NetworkError error)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnSuccessGetFeedback value) onSuccessGetFeedback,
    required TResult Function(_OnFeedbackCompleted value) onFeedbackCompleted,
    required TResult Function(_ShowError value) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult? Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult? Function(_ShowError value)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackEventStateCopyWith<$Res> {
  factory $FeedbackEventStateCopyWith(
          FeedbackEventState value, $Res Function(FeedbackEventState) then) =
      _$FeedbackEventStateCopyWithImpl<$Res, FeedbackEventState>;
}

/// @nodoc
class _$FeedbackEventStateCopyWithImpl<$Res, $Val extends FeedbackEventState>
    implements $FeedbackEventStateCopyWith<$Res> {
  _$FeedbackEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackEventState
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
    extends _$FeedbackEventStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'FeedbackEventState.idle()';
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
    required TResult Function() onSuccessGetFeedback,
    required TResult Function() onFeedbackCompleted,
    required TResult Function(NetworkError error) showError,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSuccessGetFeedback,
    TResult? Function()? onFeedbackCompleted,
    TResult? Function(NetworkError error)? showError,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSuccessGetFeedback,
    TResult Function()? onFeedbackCompleted,
    TResult Function(NetworkError error)? showError,
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
    required TResult Function(_OnSuccessGetFeedback value) onSuccessGetFeedback,
    required TResult Function(_OnFeedbackCompleted value) onFeedbackCompleted,
    required TResult Function(_ShowError value) showError,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult? Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult? Function(_ShowError value)? showError,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements FeedbackEventState {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$OnSuccessGetFeedbackImplCopyWith<$Res> {
  factory _$$OnSuccessGetFeedbackImplCopyWith(_$OnSuccessGetFeedbackImpl value,
          $Res Function(_$OnSuccessGetFeedbackImpl) then) =
      __$$OnSuccessGetFeedbackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSuccessGetFeedbackImplCopyWithImpl<$Res>
    extends _$FeedbackEventStateCopyWithImpl<$Res, _$OnSuccessGetFeedbackImpl>
    implements _$$OnSuccessGetFeedbackImplCopyWith<$Res> {
  __$$OnSuccessGetFeedbackImplCopyWithImpl(_$OnSuccessGetFeedbackImpl _value,
      $Res Function(_$OnSuccessGetFeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSuccessGetFeedbackImpl implements _OnSuccessGetFeedback {
  const _$OnSuccessGetFeedbackImpl();

  @override
  String toString() {
    return 'FeedbackEventState.onSuccessGetFeedback()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSuccessGetFeedbackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onSuccessGetFeedback,
    required TResult Function() onFeedbackCompleted,
    required TResult Function(NetworkError error) showError,
  }) {
    return onSuccessGetFeedback();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSuccessGetFeedback,
    TResult? Function()? onFeedbackCompleted,
    TResult? Function(NetworkError error)? showError,
  }) {
    return onSuccessGetFeedback?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSuccessGetFeedback,
    TResult Function()? onFeedbackCompleted,
    TResult Function(NetworkError error)? showError,
    required TResult orElse(),
  }) {
    if (onSuccessGetFeedback != null) {
      return onSuccessGetFeedback();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnSuccessGetFeedback value) onSuccessGetFeedback,
    required TResult Function(_OnFeedbackCompleted value) onFeedbackCompleted,
    required TResult Function(_ShowError value) showError,
  }) {
    return onSuccessGetFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult? Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult? Function(_ShowError value)? showError,
  }) {
    return onSuccessGetFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (onSuccessGetFeedback != null) {
      return onSuccessGetFeedback(this);
    }
    return orElse();
  }
}

abstract class _OnSuccessGetFeedback implements FeedbackEventState {
  const factory _OnSuccessGetFeedback() = _$OnSuccessGetFeedbackImpl;
}

/// @nodoc
abstract class _$$OnFeedbackCompletedImplCopyWith<$Res> {
  factory _$$OnFeedbackCompletedImplCopyWith(_$OnFeedbackCompletedImpl value,
          $Res Function(_$OnFeedbackCompletedImpl) then) =
      __$$OnFeedbackCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFeedbackCompletedImplCopyWithImpl<$Res>
    extends _$FeedbackEventStateCopyWithImpl<$Res, _$OnFeedbackCompletedImpl>
    implements _$$OnFeedbackCompletedImplCopyWith<$Res> {
  __$$OnFeedbackCompletedImplCopyWithImpl(_$OnFeedbackCompletedImpl _value,
      $Res Function(_$OnFeedbackCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnFeedbackCompletedImpl implements _OnFeedbackCompleted {
  const _$OnFeedbackCompletedImpl();

  @override
  String toString() {
    return 'FeedbackEventState.onFeedbackCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFeedbackCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onSuccessGetFeedback,
    required TResult Function() onFeedbackCompleted,
    required TResult Function(NetworkError error) showError,
  }) {
    return onFeedbackCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSuccessGetFeedback,
    TResult? Function()? onFeedbackCompleted,
    TResult? Function(NetworkError error)? showError,
  }) {
    return onFeedbackCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSuccessGetFeedback,
    TResult Function()? onFeedbackCompleted,
    TResult Function(NetworkError error)? showError,
    required TResult orElse(),
  }) {
    if (onFeedbackCompleted != null) {
      return onFeedbackCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnSuccessGetFeedback value) onSuccessGetFeedback,
    required TResult Function(_OnFeedbackCompleted value) onFeedbackCompleted,
    required TResult Function(_ShowError value) showError,
  }) {
    return onFeedbackCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult? Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult? Function(_ShowError value)? showError,
  }) {
    return onFeedbackCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (onFeedbackCompleted != null) {
      return onFeedbackCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnFeedbackCompleted implements FeedbackEventState {
  const factory _OnFeedbackCompleted() = _$OnFeedbackCompletedImpl;
}

/// @nodoc
abstract class _$$ShowErrorImplCopyWith<$Res> {
  factory _$$ShowErrorImplCopyWith(
          _$ShowErrorImpl value, $Res Function(_$ShowErrorImpl) then) =
      __$$ShowErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkError error});
}

/// @nodoc
class __$$ShowErrorImplCopyWithImpl<$Res>
    extends _$FeedbackEventStateCopyWithImpl<$Res, _$ShowErrorImpl>
    implements _$$ShowErrorImplCopyWith<$Res> {
  __$$ShowErrorImplCopyWithImpl(
      _$ShowErrorImpl _value, $Res Function(_$ShowErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ShowErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$ShowErrorImpl implements _ShowError {
  const _$ShowErrorImpl(this.error);

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'FeedbackEventState.showError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FeedbackEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorImplCopyWith<_$ShowErrorImpl> get copyWith =>
      __$$ShowErrorImplCopyWithImpl<_$ShowErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onSuccessGetFeedback,
    required TResult Function() onFeedbackCompleted,
    required TResult Function(NetworkError error) showError,
  }) {
    return showError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onSuccessGetFeedback,
    TResult? Function()? onFeedbackCompleted,
    TResult? Function(NetworkError error)? showError,
  }) {
    return showError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onSuccessGetFeedback,
    TResult Function()? onFeedbackCompleted,
    TResult Function(NetworkError error)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnSuccessGetFeedback value) onSuccessGetFeedback,
    required TResult Function(_OnFeedbackCompleted value) onFeedbackCompleted,
    required TResult Function(_ShowError value) showError,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult? Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult? Function(_ShowError value)? showError,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnSuccessGetFeedback value)? onSuccessGetFeedback,
    TResult Function(_OnFeedbackCompleted value)? onFeedbackCompleted,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class _ShowError implements FeedbackEventState {
  const factory _ShowError(final NetworkError error) = _$ShowErrorImpl;

  NetworkError get error;

  /// Create a copy of FeedbackEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowErrorImplCopyWith<_$ShowErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
