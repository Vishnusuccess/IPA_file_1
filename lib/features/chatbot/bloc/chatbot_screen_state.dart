part of 'chatbot_screen_bloc.dart';

@freezed
class ChatbotScreenState with _$ChatbotScreenState {
  const factory ChatbotScreenState({
    required String stateId,
    required List<MessageModel> messages,
    required bool isLoading,
    required bool showNextPage,
    required String? error,
    required String userName,
    required double baseHeight,
    required String text,
    required ChatFlowStage chatFlowStage,
    required bool canProgressToNext,
    required ChatbotScreenEventState chatbotScreenEvent,
    required ChatStage currentStage,
    // Pagination properties
    required int currentPage,
    required int pageSize,
    required int totalPages,
    required int totalMessages,
    required bool isLoadingMore,
    required bool hasMoreMessages,
    required bool
        isInitialLoading, // Track if we're still in initial loading phase
    required List<String> availableEmotions,
    required UiTextResponse? uiText,
    required CheckinTimerModel? checkinTimer,
    required bool
        shouldSendEmotionInfo, // Remember if we should use /chat/emotion-info endpoint
  }) = _ChatbotScreenState;

  factory ChatbotScreenState.initial() => ChatbotScreenState(
        stateId: UniqueKey().toString(),
        messages: [],
        error: null,
        isLoading: true,
        showNextPage: false,
        baseHeight: 60,
        userName: '',
        text: '',
        chatFlowStage: ChatFlowStage.init,
        canProgressToNext: false,
        chatbotScreenEvent: const ChatbotScreenEventState.idle(),
        currentStage: ChatStage.onboardingIntro,
        // Pagination initial values
        currentPage: 1,
        pageSize: 10,
        totalPages: 1,
        totalMessages: 0,
        isLoadingMore: false,
        hasMoreMessages: true, // Initially assume there are messages to load
        isInitialLoading: true, // Set initial loading to true
        availableEmotions: [],
        uiText: null,
        checkinTimer: null,
        shouldSendEmotionInfo: false,
      );
}

@freezed
class ChatbotScreenEventState with _$ChatbotScreenEventState {
  const factory ChatbotScreenEventState.idle() = _Idle;

  const factory ChatbotScreenEventState.onMoveToSplashScreen() =
      _OnMoveToSplashScreen;

  const factory ChatbotScreenEventState.onNavigateToStage(ChatStage stage) =
      _OnNavigateToStage;
}
