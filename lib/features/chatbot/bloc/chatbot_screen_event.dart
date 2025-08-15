part of 'chatbot_screen_bloc.dart';

@freezed
class ChatbotScreenEvent with _$ChatbotScreenEvent {
  const factory ChatbotScreenEvent.onInit() = _OnInit;

  const factory ChatbotScreenEvent.onLogout() = _OnLogout;

  const factory ChatbotScreenEvent.onChangeLineCount(int count) =
      _OnChangeLineCount;

  const factory ChatbotScreenEvent.onStartProgram() = _OnStartProgram;

  const factory ChatbotScreenEvent.onChangeText(String text) = _OnChangeText;

  const factory ChatbotScreenEvent.onSendMessage(String message) =
      _OnSendMessage;

  const factory ChatbotScreenEvent.onLoadHistoryMessages() =
      _OnLoadHistoryMessages;

  const factory ChatbotScreenEvent.onLoadMoreMessages() = _OnLoadMoreMessages;

  const factory ChatbotScreenEvent.onInitializeChat() = _OnInitializeChat;

  const factory ChatbotScreenEvent.onProgressToNext() = _OnProgressToNext;

  const factory ChatbotScreenEvent.onSetFlowStage(ChatFlowStage stage) =
      _OnSetFlowStage;

  const factory ChatbotScreenEvent.handleError(String error) = _HandleError;

  // New stage-based events
  const factory ChatbotScreenEvent.onInitStageChat() = _OnInitStageChat;

  const factory ChatbotScreenEvent.onSendStageMessage(String message) =
      _OnSendStageMessage;

  const factory ChatbotScreenEvent.onSendCalmness(int calmness) =
      _OnSendCalmness;

  const factory ChatbotScreenEvent.onSendEmotions(List<String> emotions) =
      _OnSendEmotions;

  const factory ChatbotScreenEvent.onSendFeedback(
      int feedbackRating, int calmnessValue,) = _OnSendFeedback;

  const factory ChatbotScreenEvent.onHandleStageResponse(
      ChatStageResponse response,) = _OnHandleStageResponse;

  const factory ChatbotScreenEvent.onGetEmotions() = _OnGetEmotions;

  const factory ChatbotScreenEvent.onGetUiText() = _OnGetUiText;

  const factory ChatbotScreenEvent.onCreateReport() = _OnCreateReport;

  const factory ChatbotScreenEvent.onSendChatIconClicked() =
      _OnSendChatIconClicked;

  const factory ChatbotScreenEvent.onGetCheckinTimer({
    required String stage,
    required int dailyPromptDay,
    int? secondsUntilNextCheckin,
  }) = _OnGetCheckinTimer;

  const factory ChatbotScreenEvent.onSendEmotionInfo() = _OnSendEmotionInfo;
}
