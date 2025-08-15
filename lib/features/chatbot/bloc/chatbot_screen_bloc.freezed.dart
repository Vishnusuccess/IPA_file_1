// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatbot_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatbotScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotScreenEventCopyWith<$Res> {
  factory $ChatbotScreenEventCopyWith(
          ChatbotScreenEvent value, $Res Function(ChatbotScreenEvent) then) =
      _$ChatbotScreenEventCopyWithImpl<$Res, ChatbotScreenEvent>;
}

/// @nodoc
class _$ChatbotScreenEventCopyWithImpl<$Res, $Val extends ChatbotScreenEvent>
    implements $ChatbotScreenEventCopyWith<$Res> {
  _$ChatbotScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatbotScreenEvent
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
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnInitImpl>
    implements _$$OnInitImplCopyWith<$Res> {
  __$$OnInitImplCopyWithImpl(
      _$OnInitImpl _value, $Res Function(_$OnInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnInitImpl with DiagnosticableTreeMixin implements _OnInit {
  const _$OnInitImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onInit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onInit'));
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
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
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
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onInit != null) {
      return onInit(this);
    }
    return orElse();
  }
}

abstract class _OnInit implements ChatbotScreenEvent {
  const factory _OnInit() = _$OnInitImpl;
}

/// @nodoc
abstract class _$$OnLogoutImplCopyWith<$Res> {
  factory _$$OnLogoutImplCopyWith(
          _$OnLogoutImpl value, $Res Function(_$OnLogoutImpl) then) =
      __$$OnLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLogoutImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnLogoutImpl>
    implements _$$OnLogoutImplCopyWith<$Res> {
  __$$OnLogoutImplCopyWithImpl(
      _$OnLogoutImpl _value, $Res Function(_$OnLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLogoutImpl with DiagnosticableTreeMixin implements _OnLogout {
  const _$OnLogoutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onLogout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onLogout'));
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
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
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
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class _OnLogout implements ChatbotScreenEvent {
  const factory _OnLogout() = _$OnLogoutImpl;
}

/// @nodoc
abstract class _$$OnChangeLineCountImplCopyWith<$Res> {
  factory _$$OnChangeLineCountImplCopyWith(_$OnChangeLineCountImpl value,
          $Res Function(_$OnChangeLineCountImpl) then) =
      __$$OnChangeLineCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$OnChangeLineCountImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnChangeLineCountImpl>
    implements _$$OnChangeLineCountImplCopyWith<$Res> {
  __$$OnChangeLineCountImplCopyWithImpl(_$OnChangeLineCountImpl _value,
      $Res Function(_$OnChangeLineCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$OnChangeLineCountImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnChangeLineCountImpl
    with DiagnosticableTreeMixin
    implements _OnChangeLineCount {
  const _$OnChangeLineCountImpl(this.count);

  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onChangeLineCount(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onChangeLineCount'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeLineCountImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeLineCountImplCopyWith<_$OnChangeLineCountImpl> get copyWith =>
      __$$OnChangeLineCountImplCopyWithImpl<_$OnChangeLineCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onChangeLineCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onChangeLineCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onChangeLineCount != null) {
      return onChangeLineCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onChangeLineCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onChangeLineCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onChangeLineCount != null) {
      return onChangeLineCount(this);
    }
    return orElse();
  }
}

abstract class _OnChangeLineCount implements ChatbotScreenEvent {
  const factory _OnChangeLineCount(final int count) = _$OnChangeLineCountImpl;

  int get count;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangeLineCountImplCopyWith<_$OnChangeLineCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnStartProgramImplCopyWith<$Res> {
  factory _$$OnStartProgramImplCopyWith(_$OnStartProgramImpl value,
          $Res Function(_$OnStartProgramImpl) then) =
      __$$OnStartProgramImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnStartProgramImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnStartProgramImpl>
    implements _$$OnStartProgramImplCopyWith<$Res> {
  __$$OnStartProgramImplCopyWithImpl(
      _$OnStartProgramImpl _value, $Res Function(_$OnStartProgramImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnStartProgramImpl
    with DiagnosticableTreeMixin
    implements _OnStartProgram {
  const _$OnStartProgramImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onStartProgram()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onStartProgram'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnStartProgramImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onStartProgram();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onStartProgram?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onStartProgram != null) {
      return onStartProgram();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onStartProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onStartProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onStartProgram != null) {
      return onStartProgram(this);
    }
    return orElse();
  }
}

abstract class _OnStartProgram implements ChatbotScreenEvent {
  const factory _OnStartProgram() = _$OnStartProgramImpl;
}

/// @nodoc
abstract class _$$OnChangeTextImplCopyWith<$Res> {
  factory _$$OnChangeTextImplCopyWith(
          _$OnChangeTextImpl value, $Res Function(_$OnChangeTextImpl) then) =
      __$$OnChangeTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnChangeTextImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnChangeTextImpl>
    implements _$$OnChangeTextImplCopyWith<$Res> {
  __$$OnChangeTextImplCopyWithImpl(
      _$OnChangeTextImpl _value, $Res Function(_$OnChangeTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnChangeTextImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangeTextImpl with DiagnosticableTreeMixin implements _OnChangeText {
  const _$OnChangeTextImpl(this.text);

  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onChangeText(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onChangeText'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeTextImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeTextImplCopyWith<_$OnChangeTextImpl> get copyWith =>
      __$$OnChangeTextImplCopyWithImpl<_$OnChangeTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onChangeText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onChangeText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onChangeText != null) {
      return onChangeText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onChangeText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onChangeText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onChangeText != null) {
      return onChangeText(this);
    }
    return orElse();
  }
}

abstract class _OnChangeText implements ChatbotScreenEvent {
  const factory _OnChangeText(final String text) = _$OnChangeTextImpl;

  String get text;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangeTextImplCopyWith<_$OnChangeTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSendMessageImplCopyWith<$Res> {
  factory _$$OnSendMessageImplCopyWith(
          _$OnSendMessageImpl value, $Res Function(_$OnSendMessageImpl) then) =
      __$$OnSendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OnSendMessageImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSendMessageImpl>
    implements _$$OnSendMessageImplCopyWith<$Res> {
  __$$OnSendMessageImplCopyWithImpl(
      _$OnSendMessageImpl _value, $Res Function(_$OnSendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OnSendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSendMessageImpl
    with DiagnosticableTreeMixin
    implements _OnSendMessage {
  const _$OnSendMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSendMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onSendMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSendMessageImplCopyWith<_$OnSendMessageImpl> get copyWith =>
      __$$OnSendMessageImplCopyWithImpl<_$OnSendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendMessage != null) {
      return onSendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendMessage != null) {
      return onSendMessage(this);
    }
    return orElse();
  }
}

abstract class _OnSendMessage implements ChatbotScreenEvent {
  const factory _OnSendMessage(final String message) = _$OnSendMessageImpl;

  String get message;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSendMessageImplCopyWith<_$OnSendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoadHistoryMessagesImplCopyWith<$Res> {
  factory _$$OnLoadHistoryMessagesImplCopyWith(
          _$OnLoadHistoryMessagesImpl value,
          $Res Function(_$OnLoadHistoryMessagesImpl) then) =
      __$$OnLoadHistoryMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadHistoryMessagesImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnLoadHistoryMessagesImpl>
    implements _$$OnLoadHistoryMessagesImplCopyWith<$Res> {
  __$$OnLoadHistoryMessagesImplCopyWithImpl(_$OnLoadHistoryMessagesImpl _value,
      $Res Function(_$OnLoadHistoryMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLoadHistoryMessagesImpl
    with DiagnosticableTreeMixin
    implements _OnLoadHistoryMessages {
  const _$OnLoadHistoryMessagesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onLoadHistoryMessages()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ChatbotScreenEvent.onLoadHistoryMessages'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoadHistoryMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onLoadHistoryMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onLoadHistoryMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onLoadHistoryMessages != null) {
      return onLoadHistoryMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onLoadHistoryMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onLoadHistoryMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onLoadHistoryMessages != null) {
      return onLoadHistoryMessages(this);
    }
    return orElse();
  }
}

abstract class _OnLoadHistoryMessages implements ChatbotScreenEvent {
  const factory _OnLoadHistoryMessages() = _$OnLoadHistoryMessagesImpl;
}

/// @nodoc
abstract class _$$OnLoadMoreMessagesImplCopyWith<$Res> {
  factory _$$OnLoadMoreMessagesImplCopyWith(_$OnLoadMoreMessagesImpl value,
          $Res Function(_$OnLoadMoreMessagesImpl) then) =
      __$$OnLoadMoreMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadMoreMessagesImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnLoadMoreMessagesImpl>
    implements _$$OnLoadMoreMessagesImplCopyWith<$Res> {
  __$$OnLoadMoreMessagesImplCopyWithImpl(_$OnLoadMoreMessagesImpl _value,
      $Res Function(_$OnLoadMoreMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLoadMoreMessagesImpl
    with DiagnosticableTreeMixin
    implements _OnLoadMoreMessages {
  const _$OnLoadMoreMessagesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onLoadMoreMessages()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ChatbotScreenEvent.onLoadMoreMessages'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoadMoreMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onLoadMoreMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onLoadMoreMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onLoadMoreMessages != null) {
      return onLoadMoreMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onLoadMoreMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onLoadMoreMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onLoadMoreMessages != null) {
      return onLoadMoreMessages(this);
    }
    return orElse();
  }
}

abstract class _OnLoadMoreMessages implements ChatbotScreenEvent {
  const factory _OnLoadMoreMessages() = _$OnLoadMoreMessagesImpl;
}

/// @nodoc
abstract class _$$OnInitializeChatImplCopyWith<$Res> {
  factory _$$OnInitializeChatImplCopyWith(_$OnInitializeChatImpl value,
          $Res Function(_$OnInitializeChatImpl) then) =
      __$$OnInitializeChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnInitializeChatImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnInitializeChatImpl>
    implements _$$OnInitializeChatImplCopyWith<$Res> {
  __$$OnInitializeChatImplCopyWithImpl(_$OnInitializeChatImpl _value,
      $Res Function(_$OnInitializeChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnInitializeChatImpl
    with DiagnosticableTreeMixin
    implements _OnInitializeChat {
  const _$OnInitializeChatImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onInitializeChat()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ChatbotScreenEvent.onInitializeChat'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnInitializeChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onInitializeChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onInitializeChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onInitializeChat != null) {
      return onInitializeChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onInitializeChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onInitializeChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onInitializeChat != null) {
      return onInitializeChat(this);
    }
    return orElse();
  }
}

abstract class _OnInitializeChat implements ChatbotScreenEvent {
  const factory _OnInitializeChat() = _$OnInitializeChatImpl;
}

/// @nodoc
abstract class _$$OnProgressToNextImplCopyWith<$Res> {
  factory _$$OnProgressToNextImplCopyWith(_$OnProgressToNextImpl value,
          $Res Function(_$OnProgressToNextImpl) then) =
      __$$OnProgressToNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnProgressToNextImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnProgressToNextImpl>
    implements _$$OnProgressToNextImplCopyWith<$Res> {
  __$$OnProgressToNextImplCopyWithImpl(_$OnProgressToNextImpl _value,
      $Res Function(_$OnProgressToNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnProgressToNextImpl
    with DiagnosticableTreeMixin
    implements _OnProgressToNext {
  const _$OnProgressToNextImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onProgressToNext()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ChatbotScreenEvent.onProgressToNext'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnProgressToNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onProgressToNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onProgressToNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onProgressToNext != null) {
      return onProgressToNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onProgressToNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onProgressToNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onProgressToNext != null) {
      return onProgressToNext(this);
    }
    return orElse();
  }
}

abstract class _OnProgressToNext implements ChatbotScreenEvent {
  const factory _OnProgressToNext() = _$OnProgressToNextImpl;
}

/// @nodoc
abstract class _$$OnSetFlowStageImplCopyWith<$Res> {
  factory _$$OnSetFlowStageImplCopyWith(_$OnSetFlowStageImpl value,
          $Res Function(_$OnSetFlowStageImpl) then) =
      __$$OnSetFlowStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatFlowStage stage});
}

/// @nodoc
class __$$OnSetFlowStageImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSetFlowStageImpl>
    implements _$$OnSetFlowStageImplCopyWith<$Res> {
  __$$OnSetFlowStageImplCopyWithImpl(
      _$OnSetFlowStageImpl _value, $Res Function(_$OnSetFlowStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
  }) {
    return _then(_$OnSetFlowStageImpl(
      null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ChatFlowStage,
    ));
  }
}

/// @nodoc

class _$OnSetFlowStageImpl
    with DiagnosticableTreeMixin
    implements _OnSetFlowStage {
  const _$OnSetFlowStageImpl(this.stage);

  @override
  final ChatFlowStage stage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSetFlowStage(stage: $stage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onSetFlowStage'))
      ..add(DiagnosticsProperty('stage', stage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSetFlowStageImpl &&
            (identical(other.stage, stage) || other.stage == stage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stage);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSetFlowStageImplCopyWith<_$OnSetFlowStageImpl> get copyWith =>
      __$$OnSetFlowStageImplCopyWithImpl<_$OnSetFlowStageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSetFlowStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSetFlowStage?.call(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSetFlowStage != null) {
      return onSetFlowStage(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSetFlowStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSetFlowStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSetFlowStage != null) {
      return onSetFlowStage(this);
    }
    return orElse();
  }
}

abstract class _OnSetFlowStage implements ChatbotScreenEvent {
  const factory _OnSetFlowStage(final ChatFlowStage stage) =
      _$OnSetFlowStageImpl;

  ChatFlowStage get stage;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSetFlowStageImplCopyWith<_$OnSetFlowStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandleErrorImplCopyWith<$Res> {
  factory _$$HandleErrorImplCopyWith(
          _$HandleErrorImpl value, $Res Function(_$HandleErrorImpl) then) =
      __$$HandleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$HandleErrorImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$HandleErrorImpl>
    implements _$$HandleErrorImplCopyWith<$Res> {
  __$$HandleErrorImplCopyWithImpl(
      _$HandleErrorImpl _value, $Res Function(_$HandleErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HandleErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HandleErrorImpl with DiagnosticableTreeMixin implements _HandleError {
  const _$HandleErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.handleError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.handleError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleErrorImplCopyWith<_$HandleErrorImpl> get copyWith =>
      __$$HandleErrorImplCopyWithImpl<_$HandleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return handleError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return handleError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (handleError != null) {
      return handleError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return handleError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return handleError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (handleError != null) {
      return handleError(this);
    }
    return orElse();
  }
}

abstract class _HandleError implements ChatbotScreenEvent {
  const factory _HandleError(final String error) = _$HandleErrorImpl;

  String get error;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandleErrorImplCopyWith<_$HandleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnInitStageChatImplCopyWith<$Res> {
  factory _$$OnInitStageChatImplCopyWith(_$OnInitStageChatImpl value,
          $Res Function(_$OnInitStageChatImpl) then) =
      __$$OnInitStageChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnInitStageChatImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnInitStageChatImpl>
    implements _$$OnInitStageChatImplCopyWith<$Res> {
  __$$OnInitStageChatImplCopyWithImpl(
      _$OnInitStageChatImpl _value, $Res Function(_$OnInitStageChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnInitStageChatImpl
    with DiagnosticableTreeMixin
    implements _OnInitStageChat {
  const _$OnInitStageChatImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onInitStageChat()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onInitStageChat'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnInitStageChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onInitStageChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onInitStageChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onInitStageChat != null) {
      return onInitStageChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onInitStageChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onInitStageChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onInitStageChat != null) {
      return onInitStageChat(this);
    }
    return orElse();
  }
}

abstract class _OnInitStageChat implements ChatbotScreenEvent {
  const factory _OnInitStageChat() = _$OnInitStageChatImpl;
}

/// @nodoc
abstract class _$$OnSendStageMessageImplCopyWith<$Res> {
  factory _$$OnSendStageMessageImplCopyWith(_$OnSendStageMessageImpl value,
          $Res Function(_$OnSendStageMessageImpl) then) =
      __$$OnSendStageMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OnSendStageMessageImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSendStageMessageImpl>
    implements _$$OnSendStageMessageImplCopyWith<$Res> {
  __$$OnSendStageMessageImplCopyWithImpl(_$OnSendStageMessageImpl _value,
      $Res Function(_$OnSendStageMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OnSendStageMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSendStageMessageImpl
    with DiagnosticableTreeMixin
    implements _OnSendStageMessage {
  const _$OnSendStageMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSendStageMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ChatbotScreenEvent.onSendStageMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendStageMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSendStageMessageImplCopyWith<_$OnSendStageMessageImpl> get copyWith =>
      __$$OnSendStageMessageImplCopyWithImpl<_$OnSendStageMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSendStageMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSendStageMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendStageMessage != null) {
      return onSendStageMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSendStageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSendStageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendStageMessage != null) {
      return onSendStageMessage(this);
    }
    return orElse();
  }
}

abstract class _OnSendStageMessage implements ChatbotScreenEvent {
  const factory _OnSendStageMessage(final String message) =
      _$OnSendStageMessageImpl;

  String get message;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSendStageMessageImplCopyWith<_$OnSendStageMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSendCalmnessImplCopyWith<$Res> {
  factory _$$OnSendCalmnessImplCopyWith(_$OnSendCalmnessImpl value,
          $Res Function(_$OnSendCalmnessImpl) then) =
      __$$OnSendCalmnessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int calmness});
}

/// @nodoc
class __$$OnSendCalmnessImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSendCalmnessImpl>
    implements _$$OnSendCalmnessImplCopyWith<$Res> {
  __$$OnSendCalmnessImplCopyWithImpl(
      _$OnSendCalmnessImpl _value, $Res Function(_$OnSendCalmnessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calmness = null,
  }) {
    return _then(_$OnSendCalmnessImpl(
      null == calmness
          ? _value.calmness
          : calmness // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnSendCalmnessImpl
    with DiagnosticableTreeMixin
    implements _OnSendCalmness {
  const _$OnSendCalmnessImpl(this.calmness);

  @override
  final int calmness;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSendCalmness(calmness: $calmness)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onSendCalmness'))
      ..add(DiagnosticsProperty('calmness', calmness));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendCalmnessImpl &&
            (identical(other.calmness, calmness) ||
                other.calmness == calmness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calmness);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSendCalmnessImplCopyWith<_$OnSendCalmnessImpl> get copyWith =>
      __$$OnSendCalmnessImplCopyWithImpl<_$OnSendCalmnessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSendCalmness(calmness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSendCalmness?.call(calmness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendCalmness != null) {
      return onSendCalmness(calmness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSendCalmness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSendCalmness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendCalmness != null) {
      return onSendCalmness(this);
    }
    return orElse();
  }
}

abstract class _OnSendCalmness implements ChatbotScreenEvent {
  const factory _OnSendCalmness(final int calmness) = _$OnSendCalmnessImpl;

  int get calmness;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSendCalmnessImplCopyWith<_$OnSendCalmnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSendEmotionsImplCopyWith<$Res> {
  factory _$$OnSendEmotionsImplCopyWith(_$OnSendEmotionsImpl value,
          $Res Function(_$OnSendEmotionsImpl) then) =
      __$$OnSendEmotionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> emotions});
}

/// @nodoc
class __$$OnSendEmotionsImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSendEmotionsImpl>
    implements _$$OnSendEmotionsImplCopyWith<$Res> {
  __$$OnSendEmotionsImplCopyWithImpl(
      _$OnSendEmotionsImpl _value, $Res Function(_$OnSendEmotionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emotions = null,
  }) {
    return _then(_$OnSendEmotionsImpl(
      null == emotions
          ? _value._emotions
          : emotions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OnSendEmotionsImpl
    with DiagnosticableTreeMixin
    implements _OnSendEmotions {
  const _$OnSendEmotionsImpl(final List<String> emotions)
      : _emotions = emotions;

  final List<String> _emotions;
  @override
  List<String> get emotions {
    if (_emotions is EqualUnmodifiableListView) return _emotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emotions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSendEmotions(emotions: $emotions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onSendEmotions'))
      ..add(DiagnosticsProperty('emotions', emotions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendEmotionsImpl &&
            const DeepCollectionEquality().equals(other._emotions, _emotions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_emotions));

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSendEmotionsImplCopyWith<_$OnSendEmotionsImpl> get copyWith =>
      __$$OnSendEmotionsImplCopyWithImpl<_$OnSendEmotionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSendEmotions(emotions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSendEmotions?.call(emotions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendEmotions != null) {
      return onSendEmotions(emotions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSendEmotions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSendEmotions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendEmotions != null) {
      return onSendEmotions(this);
    }
    return orElse();
  }
}

abstract class _OnSendEmotions implements ChatbotScreenEvent {
  const factory _OnSendEmotions(final List<String> emotions) =
      _$OnSendEmotionsImpl;

  List<String> get emotions;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSendEmotionsImplCopyWith<_$OnSendEmotionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSendFeedbackImplCopyWith<$Res> {
  factory _$$OnSendFeedbackImplCopyWith(_$OnSendFeedbackImpl value,
          $Res Function(_$OnSendFeedbackImpl) then) =
      __$$OnSendFeedbackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int feedbackRating, int calmnessValue});
}

/// @nodoc
class __$$OnSendFeedbackImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSendFeedbackImpl>
    implements _$$OnSendFeedbackImplCopyWith<$Res> {
  __$$OnSendFeedbackImplCopyWithImpl(
      _$OnSendFeedbackImpl _value, $Res Function(_$OnSendFeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbackRating = null,
    Object? calmnessValue = null,
  }) {
    return _then(_$OnSendFeedbackImpl(
      null == feedbackRating
          ? _value.feedbackRating
          : feedbackRating // ignore: cast_nullable_to_non_nullable
              as int,
      null == calmnessValue
          ? _value.calmnessValue
          : calmnessValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnSendFeedbackImpl
    with DiagnosticableTreeMixin
    implements _OnSendFeedback {
  const _$OnSendFeedbackImpl(this.feedbackRating, this.calmnessValue);

  @override
  final int feedbackRating;
  @override
  final int calmnessValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSendFeedback(feedbackRating: $feedbackRating, calmnessValue: $calmnessValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onSendFeedback'))
      ..add(DiagnosticsProperty('feedbackRating', feedbackRating))
      ..add(DiagnosticsProperty('calmnessValue', calmnessValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendFeedbackImpl &&
            (identical(other.feedbackRating, feedbackRating) ||
                other.feedbackRating == feedbackRating) &&
            (identical(other.calmnessValue, calmnessValue) ||
                other.calmnessValue == calmnessValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedbackRating, calmnessValue);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSendFeedbackImplCopyWith<_$OnSendFeedbackImpl> get copyWith =>
      __$$OnSendFeedbackImplCopyWithImpl<_$OnSendFeedbackImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSendFeedback(feedbackRating, calmnessValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSendFeedback?.call(feedbackRating, calmnessValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendFeedback != null) {
      return onSendFeedback(feedbackRating, calmnessValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSendFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSendFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendFeedback != null) {
      return onSendFeedback(this);
    }
    return orElse();
  }
}

abstract class _OnSendFeedback implements ChatbotScreenEvent {
  const factory _OnSendFeedback(
      final int feedbackRating, final int calmnessValue) = _$OnSendFeedbackImpl;

  int get feedbackRating;
  int get calmnessValue;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSendFeedbackImplCopyWith<_$OnSendFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnHandleStageResponseImplCopyWith<$Res> {
  factory _$$OnHandleStageResponseImplCopyWith(
          _$OnHandleStageResponseImpl value,
          $Res Function(_$OnHandleStageResponseImpl) then) =
      __$$OnHandleStageResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatStageResponse response});
}

/// @nodoc
class __$$OnHandleStageResponseImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnHandleStageResponseImpl>
    implements _$$OnHandleStageResponseImplCopyWith<$Res> {
  __$$OnHandleStageResponseImplCopyWithImpl(_$OnHandleStageResponseImpl _value,
      $Res Function(_$OnHandleStageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$OnHandleStageResponseImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ChatStageResponse,
    ));
  }
}

/// @nodoc

class _$OnHandleStageResponseImpl
    with DiagnosticableTreeMixin
    implements _OnHandleStageResponse {
  const _$OnHandleStageResponseImpl(this.response);

  @override
  final ChatStageResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onHandleStageResponse(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChatbotScreenEvent.onHandleStageResponse'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnHandleStageResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnHandleStageResponseImplCopyWith<_$OnHandleStageResponseImpl>
      get copyWith => __$$OnHandleStageResponseImplCopyWithImpl<
          _$OnHandleStageResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onHandleStageResponse(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onHandleStageResponse?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onHandleStageResponse != null) {
      return onHandleStageResponse(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onHandleStageResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onHandleStageResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onHandleStageResponse != null) {
      return onHandleStageResponse(this);
    }
    return orElse();
  }
}

abstract class _OnHandleStageResponse implements ChatbotScreenEvent {
  const factory _OnHandleStageResponse(final ChatStageResponse response) =
      _$OnHandleStageResponseImpl;

  ChatStageResponse get response;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnHandleStageResponseImplCopyWith<_$OnHandleStageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetEmotionsImplCopyWith<$Res> {
  factory _$$OnGetEmotionsImplCopyWith(
          _$OnGetEmotionsImpl value, $Res Function(_$OnGetEmotionsImpl) then) =
      __$$OnGetEmotionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetEmotionsImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnGetEmotionsImpl>
    implements _$$OnGetEmotionsImplCopyWith<$Res> {
  __$$OnGetEmotionsImplCopyWithImpl(
      _$OnGetEmotionsImpl _value, $Res Function(_$OnGetEmotionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnGetEmotionsImpl
    with DiagnosticableTreeMixin
    implements _OnGetEmotions {
  const _$OnGetEmotionsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onGetEmotions()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onGetEmotions'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetEmotionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onGetEmotions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onGetEmotions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onGetEmotions != null) {
      return onGetEmotions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onGetEmotions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onGetEmotions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onGetEmotions != null) {
      return onGetEmotions(this);
    }
    return orElse();
  }
}

abstract class _OnGetEmotions implements ChatbotScreenEvent {
  const factory _OnGetEmotions() = _$OnGetEmotionsImpl;
}

/// @nodoc
abstract class _$$OnGetUiTextImplCopyWith<$Res> {
  factory _$$OnGetUiTextImplCopyWith(
          _$OnGetUiTextImpl value, $Res Function(_$OnGetUiTextImpl) then) =
      __$$OnGetUiTextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetUiTextImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnGetUiTextImpl>
    implements _$$OnGetUiTextImplCopyWith<$Res> {
  __$$OnGetUiTextImplCopyWithImpl(
      _$OnGetUiTextImpl _value, $Res Function(_$OnGetUiTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnGetUiTextImpl with DiagnosticableTreeMixin implements _OnGetUiText {
  const _$OnGetUiTextImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onGetUiText()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onGetUiText'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetUiTextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onGetUiText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onGetUiText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onGetUiText != null) {
      return onGetUiText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onGetUiText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onGetUiText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onGetUiText != null) {
      return onGetUiText(this);
    }
    return orElse();
  }
}

abstract class _OnGetUiText implements ChatbotScreenEvent {
  const factory _OnGetUiText() = _$OnGetUiTextImpl;
}

/// @nodoc
abstract class _$$OnCreateReportImplCopyWith<$Res> {
  factory _$$OnCreateReportImplCopyWith(_$OnCreateReportImpl value,
          $Res Function(_$OnCreateReportImpl) then) =
      __$$OnCreateReportImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCreateReportImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnCreateReportImpl>
    implements _$$OnCreateReportImplCopyWith<$Res> {
  __$$OnCreateReportImplCopyWithImpl(
      _$OnCreateReportImpl _value, $Res Function(_$OnCreateReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnCreateReportImpl
    with DiagnosticableTreeMixin
    implements _OnCreateReport {
  const _$OnCreateReportImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onCreateReport()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onCreateReport'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCreateReportImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onCreateReport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onCreateReport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onCreateReport != null) {
      return onCreateReport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onCreateReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onCreateReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onCreateReport != null) {
      return onCreateReport(this);
    }
    return orElse();
  }
}

abstract class _OnCreateReport implements ChatbotScreenEvent {
  const factory _OnCreateReport() = _$OnCreateReportImpl;
}

/// @nodoc
abstract class _$$OnSendChatIconClickedImplCopyWith<$Res> {
  factory _$$OnSendChatIconClickedImplCopyWith(
          _$OnSendChatIconClickedImpl value,
          $Res Function(_$OnSendChatIconClickedImpl) then) =
      __$$OnSendChatIconClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSendChatIconClickedImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSendChatIconClickedImpl>
    implements _$$OnSendChatIconClickedImplCopyWith<$Res> {
  __$$OnSendChatIconClickedImplCopyWithImpl(_$OnSendChatIconClickedImpl _value,
      $Res Function(_$OnSendChatIconClickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSendChatIconClickedImpl
    with DiagnosticableTreeMixin
    implements _OnSendChatIconClicked {
  const _$OnSendChatIconClickedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSendChatIconClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ChatbotScreenEvent.onSendChatIconClicked'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendChatIconClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSendChatIconClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSendChatIconClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendChatIconClicked != null) {
      return onSendChatIconClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSendChatIconClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSendChatIconClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendChatIconClicked != null) {
      return onSendChatIconClicked(this);
    }
    return orElse();
  }
}

abstract class _OnSendChatIconClicked implements ChatbotScreenEvent {
  const factory _OnSendChatIconClicked() = _$OnSendChatIconClickedImpl;
}

/// @nodoc
abstract class _$$OnGetCheckinTimerImplCopyWith<$Res> {
  factory _$$OnGetCheckinTimerImplCopyWith(_$OnGetCheckinTimerImpl value,
          $Res Function(_$OnGetCheckinTimerImpl) then) =
      __$$OnGetCheckinTimerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stage, int dailyPromptDay, int? secondsUntilNextCheckin});
}

/// @nodoc
class __$$OnGetCheckinTimerImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnGetCheckinTimerImpl>
    implements _$$OnGetCheckinTimerImplCopyWith<$Res> {
  __$$OnGetCheckinTimerImplCopyWithImpl(_$OnGetCheckinTimerImpl _value,
      $Res Function(_$OnGetCheckinTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? dailyPromptDay = null,
    Object? secondsUntilNextCheckin = freezed,
  }) {
    return _then(_$OnGetCheckinTimerImpl(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      dailyPromptDay: null == dailyPromptDay
          ? _value.dailyPromptDay
          : dailyPromptDay // ignore: cast_nullable_to_non_nullable
              as int,
      secondsUntilNextCheckin: freezed == secondsUntilNextCheckin
          ? _value.secondsUntilNextCheckin
          : secondsUntilNextCheckin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnGetCheckinTimerImpl
    with DiagnosticableTreeMixin
    implements _OnGetCheckinTimer {
  const _$OnGetCheckinTimerImpl(
      {required this.stage,
      required this.dailyPromptDay,
      this.secondsUntilNextCheckin});

  @override
  final String stage;
  @override
  final int dailyPromptDay;
  @override
  final int? secondsUntilNextCheckin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onGetCheckinTimer(stage: $stage, dailyPromptDay: $dailyPromptDay, secondsUntilNextCheckin: $secondsUntilNextCheckin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenEvent.onGetCheckinTimer'))
      ..add(DiagnosticsProperty('stage', stage))
      ..add(DiagnosticsProperty('dailyPromptDay', dailyPromptDay))
      ..add(DiagnosticsProperty(
          'secondsUntilNextCheckin', secondsUntilNextCheckin));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetCheckinTimerImpl &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.dailyPromptDay, dailyPromptDay) ||
                other.dailyPromptDay == dailyPromptDay) &&
            (identical(
                    other.secondsUntilNextCheckin, secondsUntilNextCheckin) ||
                other.secondsUntilNextCheckin == secondsUntilNextCheckin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stage, dailyPromptDay, secondsUntilNextCheckin);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetCheckinTimerImplCopyWith<_$OnGetCheckinTimerImpl> get copyWith =>
      __$$OnGetCheckinTimerImplCopyWithImpl<_$OnGetCheckinTimerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onGetCheckinTimer(stage, dailyPromptDay, secondsUntilNextCheckin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onGetCheckinTimer?.call(
        stage, dailyPromptDay, secondsUntilNextCheckin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onGetCheckinTimer != null) {
      return onGetCheckinTimer(stage, dailyPromptDay, secondsUntilNextCheckin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onGetCheckinTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onGetCheckinTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onGetCheckinTimer != null) {
      return onGetCheckinTimer(this);
    }
    return orElse();
  }
}

abstract class _OnGetCheckinTimer implements ChatbotScreenEvent {
  const factory _OnGetCheckinTimer(
      {required final String stage,
      required final int dailyPromptDay,
      final int? secondsUntilNextCheckin}) = _$OnGetCheckinTimerImpl;

  String get stage;
  int get dailyPromptDay;
  int? get secondsUntilNextCheckin;

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnGetCheckinTimerImplCopyWith<_$OnGetCheckinTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSendEmotionInfoImplCopyWith<$Res> {
  factory _$$OnSendEmotionInfoImplCopyWith(_$OnSendEmotionInfoImpl value,
          $Res Function(_$OnSendEmotionInfoImpl) then) =
      __$$OnSendEmotionInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSendEmotionInfoImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventCopyWithImpl<$Res, _$OnSendEmotionInfoImpl>
    implements _$$OnSendEmotionInfoImplCopyWith<$Res> {
  __$$OnSendEmotionInfoImplCopyWithImpl(_$OnSendEmotionInfoImpl _value,
      $Res Function(_$OnSendEmotionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSendEmotionInfoImpl
    with DiagnosticableTreeMixin
    implements _OnSendEmotionInfo {
  const _$OnSendEmotionInfoImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEvent.onSendEmotionInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ChatbotScreenEvent.onSendEmotionInfo'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSendEmotionInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInit,
    required TResult Function() onLogout,
    required TResult Function(int count) onChangeLineCount,
    required TResult Function() onStartProgram,
    required TResult Function(String text) onChangeText,
    required TResult Function(String message) onSendMessage,
    required TResult Function() onLoadHistoryMessages,
    required TResult Function() onLoadMoreMessages,
    required TResult Function() onInitializeChat,
    required TResult Function() onProgressToNext,
    required TResult Function(ChatFlowStage stage) onSetFlowStage,
    required TResult Function(String error) handleError,
    required TResult Function() onInitStageChat,
    required TResult Function(String message) onSendStageMessage,
    required TResult Function(int calmness) onSendCalmness,
    required TResult Function(List<String> emotions) onSendEmotions,
    required TResult Function(int feedbackRating, int calmnessValue)
        onSendFeedback,
    required TResult Function(ChatStageResponse response) onHandleStageResponse,
    required TResult Function() onGetEmotions,
    required TResult Function() onGetUiText,
    required TResult Function() onCreateReport,
    required TResult Function() onSendChatIconClicked,
    required TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)
        onGetCheckinTimer,
    required TResult Function() onSendEmotionInfo,
  }) {
    return onSendEmotionInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInit,
    TResult? Function()? onLogout,
    TResult? Function(int count)? onChangeLineCount,
    TResult? Function()? onStartProgram,
    TResult? Function(String text)? onChangeText,
    TResult? Function(String message)? onSendMessage,
    TResult? Function()? onLoadHistoryMessages,
    TResult? Function()? onLoadMoreMessages,
    TResult? Function()? onInitializeChat,
    TResult? Function()? onProgressToNext,
    TResult? Function(ChatFlowStage stage)? onSetFlowStage,
    TResult? Function(String error)? handleError,
    TResult? Function()? onInitStageChat,
    TResult? Function(String message)? onSendStageMessage,
    TResult? Function(int calmness)? onSendCalmness,
    TResult? Function(List<String> emotions)? onSendEmotions,
    TResult? Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult? Function(ChatStageResponse response)? onHandleStageResponse,
    TResult? Function()? onGetEmotions,
    TResult? Function()? onGetUiText,
    TResult? Function()? onCreateReport,
    TResult? Function()? onSendChatIconClicked,
    TResult? Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult? Function()? onSendEmotionInfo,
  }) {
    return onSendEmotionInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInit,
    TResult Function()? onLogout,
    TResult Function(int count)? onChangeLineCount,
    TResult Function()? onStartProgram,
    TResult Function(String text)? onChangeText,
    TResult Function(String message)? onSendMessage,
    TResult Function()? onLoadHistoryMessages,
    TResult Function()? onLoadMoreMessages,
    TResult Function()? onInitializeChat,
    TResult Function()? onProgressToNext,
    TResult Function(ChatFlowStage stage)? onSetFlowStage,
    TResult Function(String error)? handleError,
    TResult Function()? onInitStageChat,
    TResult Function(String message)? onSendStageMessage,
    TResult Function(int calmness)? onSendCalmness,
    TResult Function(List<String> emotions)? onSendEmotions,
    TResult Function(int feedbackRating, int calmnessValue)? onSendFeedback,
    TResult Function(ChatStageResponse response)? onHandleStageResponse,
    TResult Function()? onGetEmotions,
    TResult Function()? onGetUiText,
    TResult Function()? onCreateReport,
    TResult Function()? onSendChatIconClicked,
    TResult Function(
            String stage, int dailyPromptDay, int? secondsUntilNextCheckin)?
        onGetCheckinTimer,
    TResult Function()? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendEmotionInfo != null) {
      return onSendEmotionInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInit value) onInit,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnChangeLineCount value) onChangeLineCount,
    required TResult Function(_OnStartProgram value) onStartProgram,
    required TResult Function(_OnChangeText value) onChangeText,
    required TResult Function(_OnSendMessage value) onSendMessage,
    required TResult Function(_OnLoadHistoryMessages value)
        onLoadHistoryMessages,
    required TResult Function(_OnLoadMoreMessages value) onLoadMoreMessages,
    required TResult Function(_OnInitializeChat value) onInitializeChat,
    required TResult Function(_OnProgressToNext value) onProgressToNext,
    required TResult Function(_OnSetFlowStage value) onSetFlowStage,
    required TResult Function(_HandleError value) handleError,
    required TResult Function(_OnInitStageChat value) onInitStageChat,
    required TResult Function(_OnSendStageMessage value) onSendStageMessage,
    required TResult Function(_OnSendCalmness value) onSendCalmness,
    required TResult Function(_OnSendEmotions value) onSendEmotions,
    required TResult Function(_OnSendFeedback value) onSendFeedback,
    required TResult Function(_OnHandleStageResponse value)
        onHandleStageResponse,
    required TResult Function(_OnGetEmotions value) onGetEmotions,
    required TResult Function(_OnGetUiText value) onGetUiText,
    required TResult Function(_OnCreateReport value) onCreateReport,
    required TResult Function(_OnSendChatIconClicked value)
        onSendChatIconClicked,
    required TResult Function(_OnGetCheckinTimer value) onGetCheckinTimer,
    required TResult Function(_OnSendEmotionInfo value) onSendEmotionInfo,
  }) {
    return onSendEmotionInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInit value)? onInit,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult? Function(_OnStartProgram value)? onStartProgram,
    TResult? Function(_OnChangeText value)? onChangeText,
    TResult? Function(_OnSendMessage value)? onSendMessage,
    TResult? Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult? Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult? Function(_OnInitializeChat value)? onInitializeChat,
    TResult? Function(_OnProgressToNext value)? onProgressToNext,
    TResult? Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult? Function(_HandleError value)? handleError,
    TResult? Function(_OnInitStageChat value)? onInitStageChat,
    TResult? Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult? Function(_OnSendCalmness value)? onSendCalmness,
    TResult? Function(_OnSendEmotions value)? onSendEmotions,
    TResult? Function(_OnSendFeedback value)? onSendFeedback,
    TResult? Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult? Function(_OnGetEmotions value)? onGetEmotions,
    TResult? Function(_OnGetUiText value)? onGetUiText,
    TResult? Function(_OnCreateReport value)? onCreateReport,
    TResult? Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult? Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult? Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
  }) {
    return onSendEmotionInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInit value)? onInit,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnChangeLineCount value)? onChangeLineCount,
    TResult Function(_OnStartProgram value)? onStartProgram,
    TResult Function(_OnChangeText value)? onChangeText,
    TResult Function(_OnSendMessage value)? onSendMessage,
    TResult Function(_OnLoadHistoryMessages value)? onLoadHistoryMessages,
    TResult Function(_OnLoadMoreMessages value)? onLoadMoreMessages,
    TResult Function(_OnInitializeChat value)? onInitializeChat,
    TResult Function(_OnProgressToNext value)? onProgressToNext,
    TResult Function(_OnSetFlowStage value)? onSetFlowStage,
    TResult Function(_HandleError value)? handleError,
    TResult Function(_OnInitStageChat value)? onInitStageChat,
    TResult Function(_OnSendStageMessage value)? onSendStageMessage,
    TResult Function(_OnSendCalmness value)? onSendCalmness,
    TResult Function(_OnSendEmotions value)? onSendEmotions,
    TResult Function(_OnSendFeedback value)? onSendFeedback,
    TResult Function(_OnHandleStageResponse value)? onHandleStageResponse,
    TResult Function(_OnGetEmotions value)? onGetEmotions,
    TResult Function(_OnGetUiText value)? onGetUiText,
    TResult Function(_OnCreateReport value)? onCreateReport,
    TResult Function(_OnSendChatIconClicked value)? onSendChatIconClicked,
    TResult Function(_OnGetCheckinTimer value)? onGetCheckinTimer,
    TResult Function(_OnSendEmotionInfo value)? onSendEmotionInfo,
    required TResult orElse(),
  }) {
    if (onSendEmotionInfo != null) {
      return onSendEmotionInfo(this);
    }
    return orElse();
  }
}

abstract class _OnSendEmotionInfo implements ChatbotScreenEvent {
  const factory _OnSendEmotionInfo() = _$OnSendEmotionInfoImpl;
}

/// @nodoc
mixin _$ChatbotScreenState {
  String get stateId => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showNextPage => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  double get baseHeight => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  ChatFlowStage get chatFlowStage => throw _privateConstructorUsedError;
  bool get canProgressToNext => throw _privateConstructorUsedError;
  ChatbotScreenEventState get chatbotScreenEvent =>
      throw _privateConstructorUsedError;
  ChatStage get currentStage =>
      throw _privateConstructorUsedError; // Pagination properties
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalMessages => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasMoreMessages => throw _privateConstructorUsedError;
  bool get isInitialLoading =>
      throw _privateConstructorUsedError; // Track if we're still in initial loading phase
  List<String> get availableEmotions => throw _privateConstructorUsedError;
  UiTextResponse? get uiText => throw _privateConstructorUsedError;
  CheckinTimerModel? get checkinTimer => throw _privateConstructorUsedError;
  bool get shouldSendEmotionInfo => throw _privateConstructorUsedError;

  /// Create a copy of ChatbotScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatbotScreenStateCopyWith<ChatbotScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotScreenStateCopyWith<$Res> {
  factory $ChatbotScreenStateCopyWith(
          ChatbotScreenState value, $Res Function(ChatbotScreenState) then) =
      _$ChatbotScreenStateCopyWithImpl<$Res, ChatbotScreenState>;
  @useResult
  $Res call(
      {String stateId,
      List<MessageModel> messages,
      bool isLoading,
      bool showNextPage,
      String? error,
      String userName,
      double baseHeight,
      String text,
      ChatFlowStage chatFlowStage,
      bool canProgressToNext,
      ChatbotScreenEventState chatbotScreenEvent,
      ChatStage currentStage,
      int currentPage,
      int pageSize,
      int totalPages,
      int totalMessages,
      bool isLoadingMore,
      bool hasMoreMessages,
      bool isInitialLoading,
      List<String> availableEmotions,
      UiTextResponse? uiText,
      CheckinTimerModel? checkinTimer,
      bool shouldSendEmotionInfo});

  $ChatbotScreenEventStateCopyWith<$Res> get chatbotScreenEvent;
  $CheckinTimerModelCopyWith<$Res>? get checkinTimer;
}

/// @nodoc
class _$ChatbotScreenStateCopyWithImpl<$Res, $Val extends ChatbotScreenState>
    implements $ChatbotScreenStateCopyWith<$Res> {
  _$ChatbotScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatbotScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? messages = null,
    Object? isLoading = null,
    Object? showNextPage = null,
    Object? error = freezed,
    Object? userName = null,
    Object? baseHeight = null,
    Object? text = null,
    Object? chatFlowStage = null,
    Object? canProgressToNext = null,
    Object? chatbotScreenEvent = null,
    Object? currentStage = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? totalMessages = null,
    Object? isLoadingMore = null,
    Object? hasMoreMessages = null,
    Object? isInitialLoading = null,
    Object? availableEmotions = null,
    Object? uiText = freezed,
    Object? checkinTimer = freezed,
    Object? shouldSendEmotionInfo = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showNextPage: null == showNextPage
          ? _value.showNextPage
          : showNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      baseHeight: null == baseHeight
          ? _value.baseHeight
          : baseHeight // ignore: cast_nullable_to_non_nullable
              as double,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chatFlowStage: null == chatFlowStage
          ? _value.chatFlowStage
          : chatFlowStage // ignore: cast_nullable_to_non_nullable
              as ChatFlowStage,
      canProgressToNext: null == canProgressToNext
          ? _value.canProgressToNext
          : canProgressToNext // ignore: cast_nullable_to_non_nullable
              as bool,
      chatbotScreenEvent: null == chatbotScreenEvent
          ? _value.chatbotScreenEvent
          : chatbotScreenEvent // ignore: cast_nullable_to_non_nullable
              as ChatbotScreenEventState,
      currentStage: null == currentStage
          ? _value.currentStage
          : currentStage // ignore: cast_nullable_to_non_nullable
              as ChatStage,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessages: null == totalMessages
          ? _value.totalMessages
          : totalMessages // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreMessages: null == hasMoreMessages
          ? _value.hasMoreMessages
          : hasMoreMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialLoading: null == isInitialLoading
          ? _value.isInitialLoading
          : isInitialLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      availableEmotions: null == availableEmotions
          ? _value.availableEmotions
          : availableEmotions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uiText: freezed == uiText
          ? _value.uiText
          : uiText // ignore: cast_nullable_to_non_nullable
              as UiTextResponse?,
      checkinTimer: freezed == checkinTimer
          ? _value.checkinTimer
          : checkinTimer // ignore: cast_nullable_to_non_nullable
              as CheckinTimerModel?,
      shouldSendEmotionInfo: null == shouldSendEmotionInfo
          ? _value.shouldSendEmotionInfo
          : shouldSendEmotionInfo // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ChatbotScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatbotScreenEventStateCopyWith<$Res> get chatbotScreenEvent {
    return $ChatbotScreenEventStateCopyWith<$Res>(_value.chatbotScreenEvent,
        (value) {
      return _then(_value.copyWith(chatbotScreenEvent: value) as $Val);
    });
  }

  /// Create a copy of ChatbotScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckinTimerModelCopyWith<$Res>? get checkinTimer {
    if (_value.checkinTimer == null) {
      return null;
    }

    return $CheckinTimerModelCopyWith<$Res>(_value.checkinTimer!, (value) {
      return _then(_value.copyWith(checkinTimer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatbotScreenStateImplCopyWith<$Res>
    implements $ChatbotScreenStateCopyWith<$Res> {
  factory _$$ChatbotScreenStateImplCopyWith(_$ChatbotScreenStateImpl value,
          $Res Function(_$ChatbotScreenStateImpl) then) =
      __$$ChatbotScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<MessageModel> messages,
      bool isLoading,
      bool showNextPage,
      String? error,
      String userName,
      double baseHeight,
      String text,
      ChatFlowStage chatFlowStage,
      bool canProgressToNext,
      ChatbotScreenEventState chatbotScreenEvent,
      ChatStage currentStage,
      int currentPage,
      int pageSize,
      int totalPages,
      int totalMessages,
      bool isLoadingMore,
      bool hasMoreMessages,
      bool isInitialLoading,
      List<String> availableEmotions,
      UiTextResponse? uiText,
      CheckinTimerModel? checkinTimer,
      bool shouldSendEmotionInfo});

  @override
  $ChatbotScreenEventStateCopyWith<$Res> get chatbotScreenEvent;
  @override
  $CheckinTimerModelCopyWith<$Res>? get checkinTimer;
}

/// @nodoc
class __$$ChatbotScreenStateImplCopyWithImpl<$Res>
    extends _$ChatbotScreenStateCopyWithImpl<$Res, _$ChatbotScreenStateImpl>
    implements _$$ChatbotScreenStateImplCopyWith<$Res> {
  __$$ChatbotScreenStateImplCopyWithImpl(_$ChatbotScreenStateImpl _value,
      $Res Function(_$ChatbotScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? messages = null,
    Object? isLoading = null,
    Object? showNextPage = null,
    Object? error = freezed,
    Object? userName = null,
    Object? baseHeight = null,
    Object? text = null,
    Object? chatFlowStage = null,
    Object? canProgressToNext = null,
    Object? chatbotScreenEvent = null,
    Object? currentStage = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? totalMessages = null,
    Object? isLoadingMore = null,
    Object? hasMoreMessages = null,
    Object? isInitialLoading = null,
    Object? availableEmotions = null,
    Object? uiText = freezed,
    Object? checkinTimer = freezed,
    Object? shouldSendEmotionInfo = null,
  }) {
    return _then(_$ChatbotScreenStateImpl(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showNextPage: null == showNextPage
          ? _value.showNextPage
          : showNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      baseHeight: null == baseHeight
          ? _value.baseHeight
          : baseHeight // ignore: cast_nullable_to_non_nullable
              as double,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chatFlowStage: null == chatFlowStage
          ? _value.chatFlowStage
          : chatFlowStage // ignore: cast_nullable_to_non_nullable
              as ChatFlowStage,
      canProgressToNext: null == canProgressToNext
          ? _value.canProgressToNext
          : canProgressToNext // ignore: cast_nullable_to_non_nullable
              as bool,
      chatbotScreenEvent: null == chatbotScreenEvent
          ? _value.chatbotScreenEvent
          : chatbotScreenEvent // ignore: cast_nullable_to_non_nullable
              as ChatbotScreenEventState,
      currentStage: null == currentStage
          ? _value.currentStage
          : currentStage // ignore: cast_nullable_to_non_nullable
              as ChatStage,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessages: null == totalMessages
          ? _value.totalMessages
          : totalMessages // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreMessages: null == hasMoreMessages
          ? _value.hasMoreMessages
          : hasMoreMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialLoading: null == isInitialLoading
          ? _value.isInitialLoading
          : isInitialLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      availableEmotions: null == availableEmotions
          ? _value._availableEmotions
          : availableEmotions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uiText: freezed == uiText
          ? _value.uiText
          : uiText // ignore: cast_nullable_to_non_nullable
              as UiTextResponse?,
      checkinTimer: freezed == checkinTimer
          ? _value.checkinTimer
          : checkinTimer // ignore: cast_nullable_to_non_nullable
              as CheckinTimerModel?,
      shouldSendEmotionInfo: null == shouldSendEmotionInfo
          ? _value.shouldSendEmotionInfo
          : shouldSendEmotionInfo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatbotScreenStateImpl
    with DiagnosticableTreeMixin
    implements _ChatbotScreenState {
  const _$ChatbotScreenStateImpl(
      {required this.stateId,
      required final List<MessageModel> messages,
      required this.isLoading,
      required this.showNextPage,
      required this.error,
      required this.userName,
      required this.baseHeight,
      required this.text,
      required this.chatFlowStage,
      required this.canProgressToNext,
      required this.chatbotScreenEvent,
      required this.currentStage,
      required this.currentPage,
      required this.pageSize,
      required this.totalPages,
      required this.totalMessages,
      required this.isLoadingMore,
      required this.hasMoreMessages,
      required this.isInitialLoading,
      required final List<String> availableEmotions,
      required this.uiText,
      required this.checkinTimer,
      required this.shouldSendEmotionInfo})
      : _messages = messages,
        _availableEmotions = availableEmotions;

  @override
  final String stateId;
  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final bool isLoading;
  @override
  final bool showNextPage;
  @override
  final String? error;
  @override
  final String userName;
  @override
  final double baseHeight;
  @override
  final String text;
  @override
  final ChatFlowStage chatFlowStage;
  @override
  final bool canProgressToNext;
  @override
  final ChatbotScreenEventState chatbotScreenEvent;
  @override
  final ChatStage currentStage;
// Pagination properties
  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final int totalMessages;
  @override
  final bool isLoadingMore;
  @override
  final bool hasMoreMessages;
  @override
  final bool isInitialLoading;
// Track if we're still in initial loading phase
  final List<String> _availableEmotions;
// Track if we're still in initial loading phase
  @override
  List<String> get availableEmotions {
    if (_availableEmotions is EqualUnmodifiableListView)
      return _availableEmotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableEmotions);
  }

  @override
  final UiTextResponse? uiText;
  @override
  final CheckinTimerModel? checkinTimer;
  @override
  final bool shouldSendEmotionInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenState(stateId: $stateId, messages: $messages, isLoading: $isLoading, showNextPage: $showNextPage, error: $error, userName: $userName, baseHeight: $baseHeight, text: $text, chatFlowStage: $chatFlowStage, canProgressToNext: $canProgressToNext, chatbotScreenEvent: $chatbotScreenEvent, currentStage: $currentStage, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, totalMessages: $totalMessages, isLoadingMore: $isLoadingMore, hasMoreMessages: $hasMoreMessages, isInitialLoading: $isInitialLoading, availableEmotions: $availableEmotions, uiText: $uiText, checkinTimer: $checkinTimer, shouldSendEmotionInfo: $shouldSendEmotionInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatbotScreenState'))
      ..add(DiagnosticsProperty('stateId', stateId))
      ..add(DiagnosticsProperty('messages', messages))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('showNextPage', showNextPage))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('baseHeight', baseHeight))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('chatFlowStage', chatFlowStage))
      ..add(DiagnosticsProperty('canProgressToNext', canProgressToNext))
      ..add(DiagnosticsProperty('chatbotScreenEvent', chatbotScreenEvent))
      ..add(DiagnosticsProperty('currentStage', currentStage))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('totalMessages', totalMessages))
      ..add(DiagnosticsProperty('isLoadingMore', isLoadingMore))
      ..add(DiagnosticsProperty('hasMoreMessages', hasMoreMessages))
      ..add(DiagnosticsProperty('isInitialLoading', isInitialLoading))
      ..add(DiagnosticsProperty('availableEmotions', availableEmotions))
      ..add(DiagnosticsProperty('uiText', uiText))
      ..add(DiagnosticsProperty('checkinTimer', checkinTimer))
      ..add(
          DiagnosticsProperty('shouldSendEmotionInfo', shouldSendEmotionInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatbotScreenStateImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showNextPage, showNextPage) ||
                other.showNextPage == showNextPage) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.baseHeight, baseHeight) ||
                other.baseHeight == baseHeight) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.chatFlowStage, chatFlowStage) ||
                other.chatFlowStage == chatFlowStage) &&
            (identical(other.canProgressToNext, canProgressToNext) ||
                other.canProgressToNext == canProgressToNext) &&
            (identical(other.chatbotScreenEvent, chatbotScreenEvent) ||
                other.chatbotScreenEvent == chatbotScreenEvent) &&
            (identical(other.currentStage, currentStage) ||
                other.currentStage == currentStage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalMessages, totalMessages) ||
                other.totalMessages == totalMessages) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasMoreMessages, hasMoreMessages) ||
                other.hasMoreMessages == hasMoreMessages) &&
            (identical(other.isInitialLoading, isInitialLoading) ||
                other.isInitialLoading == isInitialLoading) &&
            const DeepCollectionEquality()
                .equals(other._availableEmotions, _availableEmotions) &&
            (identical(other.uiText, uiText) || other.uiText == uiText) &&
            (identical(other.checkinTimer, checkinTimer) ||
                other.checkinTimer == checkinTimer) &&
            (identical(other.shouldSendEmotionInfo, shouldSendEmotionInfo) ||
                other.shouldSendEmotionInfo == shouldSendEmotionInfo));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        stateId,
        const DeepCollectionEquality().hash(_messages),
        isLoading,
        showNextPage,
        error,
        userName,
        baseHeight,
        text,
        chatFlowStage,
        canProgressToNext,
        chatbotScreenEvent,
        currentStage,
        currentPage,
        pageSize,
        totalPages,
        totalMessages,
        isLoadingMore,
        hasMoreMessages,
        isInitialLoading,
        const DeepCollectionEquality().hash(_availableEmotions),
        uiText,
        checkinTimer,
        shouldSendEmotionInfo
      ]);

  /// Create a copy of ChatbotScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatbotScreenStateImplCopyWith<_$ChatbotScreenStateImpl> get copyWith =>
      __$$ChatbotScreenStateImplCopyWithImpl<_$ChatbotScreenStateImpl>(
          this, _$identity);
}

abstract class _ChatbotScreenState implements ChatbotScreenState {
  const factory _ChatbotScreenState(
      {required final String stateId,
      required final List<MessageModel> messages,
      required final bool isLoading,
      required final bool showNextPage,
      required final String? error,
      required final String userName,
      required final double baseHeight,
      required final String text,
      required final ChatFlowStage chatFlowStage,
      required final bool canProgressToNext,
      required final ChatbotScreenEventState chatbotScreenEvent,
      required final ChatStage currentStage,
      required final int currentPage,
      required final int pageSize,
      required final int totalPages,
      required final int totalMessages,
      required final bool isLoadingMore,
      required final bool hasMoreMessages,
      required final bool isInitialLoading,
      required final List<String> availableEmotions,
      required final UiTextResponse? uiText,
      required final CheckinTimerModel? checkinTimer,
      required final bool shouldSendEmotionInfo}) = _$ChatbotScreenStateImpl;

  @override
  String get stateId;
  @override
  List<MessageModel> get messages;
  @override
  bool get isLoading;
  @override
  bool get showNextPage;
  @override
  String? get error;
  @override
  String get userName;
  @override
  double get baseHeight;
  @override
  String get text;
  @override
  ChatFlowStage get chatFlowStage;
  @override
  bool get canProgressToNext;
  @override
  ChatbotScreenEventState get chatbotScreenEvent;
  @override
  ChatStage get currentStage; // Pagination properties
  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  int get totalMessages;
  @override
  bool get isLoadingMore;
  @override
  bool get hasMoreMessages;
  @override
  bool get isInitialLoading; // Track if we're still in initial loading phase
  @override
  List<String> get availableEmotions;
  @override
  UiTextResponse? get uiText;
  @override
  CheckinTimerModel? get checkinTimer;
  @override
  bool get shouldSendEmotionInfo;

  /// Create a copy of ChatbotScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatbotScreenStateImplCopyWith<_$ChatbotScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatbotScreenEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onMoveToSplashScreen,
    required TResult Function(ChatStage stage) onNavigateToStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onMoveToSplashScreen,
    TResult? Function(ChatStage stage)? onNavigateToStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onMoveToSplashScreen,
    TResult Function(ChatStage stage)? onNavigateToStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnMoveToSplashScreen value) onMoveToSplashScreen,
    required TResult Function(_OnNavigateToStage value) onNavigateToStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult? Function(_OnNavigateToStage value)? onNavigateToStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult Function(_OnNavigateToStage value)? onNavigateToStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotScreenEventStateCopyWith<$Res> {
  factory $ChatbotScreenEventStateCopyWith(ChatbotScreenEventState value,
          $Res Function(ChatbotScreenEventState) then) =
      _$ChatbotScreenEventStateCopyWithImpl<$Res, ChatbotScreenEventState>;
}

/// @nodoc
class _$ChatbotScreenEventStateCopyWithImpl<$Res,
        $Val extends ChatbotScreenEventState>
    implements $ChatbotScreenEventStateCopyWith<$Res> {
  _$ChatbotScreenEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatbotScreenEventState
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
    extends _$ChatbotScreenEventStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl with DiagnosticableTreeMixin implements _Idle {
  const _$IdleImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEventState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatbotScreenEventState.idle'));
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
    required TResult Function() onMoveToSplashScreen,
    required TResult Function(ChatStage stage) onNavigateToStage,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onMoveToSplashScreen,
    TResult? Function(ChatStage stage)? onNavigateToStage,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onMoveToSplashScreen,
    TResult Function(ChatStage stage)? onNavigateToStage,
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
    required TResult Function(_OnMoveToSplashScreen value) onMoveToSplashScreen,
    required TResult Function(_OnNavigateToStage value) onNavigateToStage,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult? Function(_OnNavigateToStage value)? onNavigateToStage,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult Function(_OnNavigateToStage value)? onNavigateToStage,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements ChatbotScreenEventState {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$OnMoveToSplashScreenImplCopyWith<$Res> {
  factory _$$OnMoveToSplashScreenImplCopyWith(_$OnMoveToSplashScreenImpl value,
          $Res Function(_$OnMoveToSplashScreenImpl) then) =
      __$$OnMoveToSplashScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnMoveToSplashScreenImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventStateCopyWithImpl<$Res,
        _$OnMoveToSplashScreenImpl>
    implements _$$OnMoveToSplashScreenImplCopyWith<$Res> {
  __$$OnMoveToSplashScreenImplCopyWithImpl(_$OnMoveToSplashScreenImpl _value,
      $Res Function(_$OnMoveToSplashScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnMoveToSplashScreenImpl
    with DiagnosticableTreeMixin
    implements _OnMoveToSplashScreen {
  const _$OnMoveToSplashScreenImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEventState.onMoveToSplashScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ChatbotScreenEventState.onMoveToSplashScreen'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMoveToSplashScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onMoveToSplashScreen,
    required TResult Function(ChatStage stage) onNavigateToStage,
  }) {
    return onMoveToSplashScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onMoveToSplashScreen,
    TResult? Function(ChatStage stage)? onNavigateToStage,
  }) {
    return onMoveToSplashScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onMoveToSplashScreen,
    TResult Function(ChatStage stage)? onNavigateToStage,
    required TResult orElse(),
  }) {
    if (onMoveToSplashScreen != null) {
      return onMoveToSplashScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnMoveToSplashScreen value) onMoveToSplashScreen,
    required TResult Function(_OnNavigateToStage value) onNavigateToStage,
  }) {
    return onMoveToSplashScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult? Function(_OnNavigateToStage value)? onNavigateToStage,
  }) {
    return onMoveToSplashScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult Function(_OnNavigateToStage value)? onNavigateToStage,
    required TResult orElse(),
  }) {
    if (onMoveToSplashScreen != null) {
      return onMoveToSplashScreen(this);
    }
    return orElse();
  }
}

abstract class _OnMoveToSplashScreen implements ChatbotScreenEventState {
  const factory _OnMoveToSplashScreen() = _$OnMoveToSplashScreenImpl;
}

/// @nodoc
abstract class _$$OnNavigateToStageImplCopyWith<$Res> {
  factory _$$OnNavigateToStageImplCopyWith(_$OnNavigateToStageImpl value,
          $Res Function(_$OnNavigateToStageImpl) then) =
      __$$OnNavigateToStageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatStage stage});
}

/// @nodoc
class __$$OnNavigateToStageImplCopyWithImpl<$Res>
    extends _$ChatbotScreenEventStateCopyWithImpl<$Res, _$OnNavigateToStageImpl>
    implements _$$OnNavigateToStageImplCopyWith<$Res> {
  __$$OnNavigateToStageImplCopyWithImpl(_$OnNavigateToStageImpl _value,
      $Res Function(_$OnNavigateToStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotScreenEventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
  }) {
    return _then(_$OnNavigateToStageImpl(
      null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ChatStage,
    ));
  }
}

/// @nodoc

class _$OnNavigateToStageImpl
    with DiagnosticableTreeMixin
    implements _OnNavigateToStage {
  const _$OnNavigateToStageImpl(this.stage);

  @override
  final ChatStage stage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatbotScreenEventState.onNavigateToStage(stage: $stage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChatbotScreenEventState.onNavigateToStage'))
      ..add(DiagnosticsProperty('stage', stage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNavigateToStageImpl &&
            (identical(other.stage, stage) || other.stage == stage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stage);

  /// Create a copy of ChatbotScreenEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNavigateToStageImplCopyWith<_$OnNavigateToStageImpl> get copyWith =>
      __$$OnNavigateToStageImplCopyWithImpl<_$OnNavigateToStageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() onMoveToSplashScreen,
    required TResult Function(ChatStage stage) onNavigateToStage,
  }) {
    return onNavigateToStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? onMoveToSplashScreen,
    TResult? Function(ChatStage stage)? onNavigateToStage,
  }) {
    return onNavigateToStage?.call(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? onMoveToSplashScreen,
    TResult Function(ChatStage stage)? onNavigateToStage,
    required TResult orElse(),
  }) {
    if (onNavigateToStage != null) {
      return onNavigateToStage(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OnMoveToSplashScreen value) onMoveToSplashScreen,
    required TResult Function(_OnNavigateToStage value) onNavigateToStage,
  }) {
    return onNavigateToStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult? Function(_OnNavigateToStage value)? onNavigateToStage,
  }) {
    return onNavigateToStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OnMoveToSplashScreen value)? onMoveToSplashScreen,
    TResult Function(_OnNavigateToStage value)? onNavigateToStage,
    required TResult orElse(),
  }) {
    if (onNavigateToStage != null) {
      return onNavigateToStage(this);
    }
    return orElse();
  }
}

abstract class _OnNavigateToStage implements ChatbotScreenEventState {
  const factory _OnNavigateToStage(final ChatStage stage) =
      _$OnNavigateToStageImpl;

  ChatStage get stage;

  /// Create a copy of ChatbotScreenEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNavigateToStageImplCopyWith<_$OnNavigateToStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
