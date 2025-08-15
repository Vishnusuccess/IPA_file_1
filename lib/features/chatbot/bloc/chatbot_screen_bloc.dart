import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/core/constants/shared_preferenses_keys.dart';
import 'package:trueme/core/services/shared_preferences_service.dart';
import 'package:trueme/core/services/stage_service.dart';
import 'package:trueme/features/chatbot/data/chat_history_repository.dart';
import 'package:trueme/features/chatbot/data/chat_service.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/chatbot/data/models/checkin_timer_model.dart';
import 'package:trueme/features/chatbot/data/models/emotion_model.dart';
import 'package:trueme/features/chatbot/data/models/message_model.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';
import 'package:trueme/features/chatbot/utils/stage_flow_manager.dart';
part 'chatbot_screen_bloc.freezed.dart';
part 'chatbot_screen_event.dart';
part 'chatbot_screen_state.dart';

@injectable
class ChatbotScreenBloc extends Bloc<ChatbotScreenEvent, ChatbotScreenState> {
  ChatbotScreenBloc(
      @factoryParam this.chatbotRouteParams,
      this.chatService,
      this.chatHistoryRepository,
      this.sharedPreferencesService,
      // this._programProgressRepository,
      this._stageService,
      ) : super(ChatbotScreenState.initial()) {
    on<_OnInit>(_onInit);
    on<_OnChangeLineCount>(_onChangeLineCount);
    on<_OnLoadHistoryMessages>(_onLoadHistoryMessages);
    on<_OnLoadMoreMessages>(_onLoadMoreMessages);
    on<_OnSendMessage>(_onSendMessage);
    on<_OnInitializeChat>(_onInitializeChat);
    on<_OnProgressToNext>(_onProgressToNext);
    on<_OnSetFlowStage>(_onSetFlowStage);
    on<_HandleError>(_handleError);
    on<_OnChangeText>(_onChangeText);
    on<_OnInitStageChat>(_onInitStageChat);
    on<_OnSendStageMessage>(_onSendStageMessage);
    on<_OnSendCalmness>(_onSendCalmness);
    on<_OnSendEmotions>(_onSendEmotions);
    on<_OnSendFeedback>(_onSendFeedback);
    on<_OnHandleStageResponse>(_onHandleStageResponse);
    on<_OnGetEmotions>(_onGetEmotions);
    on<_OnGetUiText>(_onGetUiText);
    on<_OnCreateReport>(_onCreateReport);
    on<_OnSendChatIconClicked>(_onSendChatIconClicked);
    on<_OnGetCheckinTimer>(_onGetCheckinTimer);
    on<_OnSendEmotionInfo>(_onSendEmotionInfo);
  }

  final ChatbotRouteParams? chatbotRouteParams;
  final ChatService chatService;
  final ChatHistoryRepository chatHistoryRepository;
  final SharedPreferencesService sharedPreferencesService;
  // final ProgramProgressRepository _programProgressRepository;
  final StageService _stageService;

  Future<void> _onChangeLineCount(
      _OnChangeLineCount event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    if (event.count <= 7) {
      final baseHeight = 60.0 + (event.count - 1) * 24.0;
      emit(state.copyWith(baseHeight: baseHeight));
    }
  }

  List<MessageModel> sortMessages(List<MessageModel> messages) {
    return List<MessageModel>.from(messages)
      ..sort((a, b) {
        final dateA = a.messageDate ?? DateTime(0);
        final dateB = b.messageDate ?? DateTime(0);
        final cmp = dateA.compareTo(dateB);
        if (cmp != 0) return cmp;

        final idA = a.messageId ?? '';
        final idB = b.messageId ?? '';
        return idA.compareTo(idB);
      });
  }

  Future<void> _onChangeText(
      _OnChangeText event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(text: event.text));
  }

  Future<void> _onInit(
      _OnInit event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    final storedUserName =
    sharedPreferencesService.getString(SharedPreferencesKeys.userName);
    if (storedUserName != null && storedUserName.isNotEmpty) {
      emit(state.copyWith(userName: storedUserName));
    }

    final currentStage = _stageService.currentStage;

    if (currentStage == ChatStage.normalChat) {
      final result =
      await chatService.getPaginatedChatHistory(pageSize: state.pageSize);

      result.fold(
            (paginatedHistory) {
          final newMessages = paginatedHistory.messages
              .map((message) => message.toMessageModel())
              .where(
                (msg) => (msg.message ?? '').trim().isNotEmpty,
          )
              .toList()
            ..sort(
                  (a, b) => (a.messageDate ?? DateTime(0))
                  .compareTo(b.messageDate ?? DateTime(0)),
            );

          final hasMore =
              paginatedHistory.pagination.page <
                  paginatedHistory.pagination.totalPages &&
                  newMessages.isNotEmpty;

          emit(
            state.copyWith(
              messages: newMessages,
              isLoading: false,
              isInitialLoading: false,
              currentPage: 1,
              totalPages: paginatedHistory.pagination.totalPages,
              totalMessages: paginatedHistory.pagination.totalMessages,
              hasMoreMessages: hasMore,
            ),
          );

          if (newMessages.isNotEmpty) {
            emit(state.copyWith(chatFlowStage: ChatFlowStage.finalChat));
          } else {
            add(const ChatbotScreenEvent.onInitializeChat());
          }
        },
            (error) {
          emit(
            state.copyWith(
              isLoading: false,
              isInitialLoading: false,
              hasMoreMessages: false,
              error: 'Failed to load chat history: $error',
            ),
          );

          add(const ChatbotScreenEvent.onInitializeChat());
        },
      );
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          isInitialLoading: false,
          messages: [],
          currentPage: 1,
          totalPages: 1,
          totalMessages: 0,
          hasMoreMessages: false,
        ),
      );

      if (chatbotRouteParams?.initialMessage != null) {
        final initialMessage = MessageModel(
          message: chatbotRouteParams!.initialMessage,
          authorType: 'AI',
          messageDate: DateTime(0),
        );

        emit(
          state.copyWith(
            messages: [initialMessage],
            isLoading: false,
            isInitialLoading: false,
          ),
        );
      }

      if ((chatbotRouteParams?.skipInit ?? false) == false &&
          chatbotRouteParams?.initialMessage == null) {
        emit(
          state.copyWith(
            shouldSendEmotionInfo:
            chatbotRouteParams?.shouldSendEmotionInfo ?? false,
          ),
        );

        if (chatbotRouteParams?.shouldSendEmotionInfo ?? false) {
          add(const ChatbotScreenEvent.onSendEmotionInfo());
        } else {
          add(const ChatbotScreenEvent.onInitializeChat());
        }
      }
    }
  }

  Future<void> _onLoadMoreMessages(
      _OnLoadMoreMessages event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    if (state.isLoadingMore || state.isLoading || !state.hasMoreMessages) {
      return;
    }

    final nextPage = state.currentPage + 1;
    emit(state.copyWith(isLoadingMore: true));

    final result = await chatService.getPaginatedChatHistory(
      page: nextPage,
      pageSize: state.pageSize,
    );

    result.fold(
          (paginatedHistory) {
        final newMessages = paginatedHistory.messages
            .map((message) => message.toMessageModel())
            .map(
              (msg) => msg.copyWith(
            messageId: msg.messageId ??
                '${msg.messageDate?.millisecondsSinceEpoch}-${msg.message}',
          ),
        )
            .toList();

        final combinedMessages = [...newMessages, ...state.messages]
          ..sort(
                (a, b) => (a.messageDate ?? DateTime(0))
                .compareTo(b.messageDate ?? DateTime(0)),
          );

        final hasMore =
            paginatedHistory.pagination.page <
                paginatedHistory.pagination.totalPages &&
                newMessages.isNotEmpty;

        emit(
          state.copyWith(
            messages: combinedMessages,
            isLoadingMore: false,
            currentPage: nextPage,
            totalPages: paginatedHistory.pagination.totalPages,
            totalMessages: paginatedHistory.pagination.totalMessages,
            hasMoreMessages: hasMore,
          ),
        );
      },
          (error) {
        emit(
          state.copyWith(
            isLoadingMore: false,
            hasMoreMessages: false,
            error: 'Failed to load chat history: $error',
          ),
        );
      },
    );
  }

  Future<void> _onSendMessage(
      _OnSendMessage event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    final tempId = UniqueKey().toString();

    final userMessage = MessageModel(
      message: event.message,
      authorType: 'User',
      messageDate: DateTime.now(),
      messageId: tempId,
    );

    final botThinkingMessage = MessageModel(
      message: '',
      authorType: 'AI',
      messageDate: DateTime.now(),
      messageId: 'thinking-$tempId',
      aiThinking: true,
    );

    final updatedMessages = List<MessageModel>.from(state.messages)
      ..add(userMessage)
      ..add(botThinkingMessage);

    emit(
      state.copyWith(
        messages: sortMessages(updatedMessages),
        isLoading: true,
        text: '',
      ),
    );

    (await (state.shouldSendEmotionInfo
        ? chatService.sendEmotionInfo(message: event.message)
        : chatService.sendChatRequest(message: event.message)))
      .fold(
            (stageResponse) {
          _stageService
            ..updateStageFromString(stageResponse.stage)
            ..updateHintStageFromString(stageResponse.stageHint);

          final stage = ChatStage.fromString(stageResponse.stage);
          final hintStage = stageResponse.stageHint != null
              ? ChatStage.fromString(stageResponse.stageHint!)
              : null;

          final currentMessages = List<MessageModel>.from(state.messages)
            ..removeWhere((m) => m.messageId == 'thinking-$tempId')
            ..add(MessageModel(
              message: stageResponse.message,
              authorType: 'AI',
              messageDate: DateTime.now(),
              messageId: UniqueKey().toString(),
            ),);

          emit(state.copyWith(
            messages: sortMessages(currentMessages),
            isLoading: false,
            currentStage: _stageService.currentStage,
            canProgressToNext: stage == ChatStage.periodicCheckinEmotion ||
                hintStage == ChatStage.periodicCheckinEmotion ||
                _shouldShowProgressButton(stage),
          ),);
        },
            (error) {
          final currentMessages = List<MessageModel>.from(state.messages)
            ..removeWhere((m) => m.messageId == 'thinking-$tempId');

          emit(state.copyWith(
            messages: sortMessages(currentMessages),
            isLoading: false,
            error: 'Failed to send message: $error',
          ),);
        },
      );

  }

  Future<void> _onInitializeChat(
      _OnInitializeChat event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true, chatFlowStage: ChatFlowStage.init));

    final params =
    ChatbotRouteParams(chatEndpointUtils: ChatEndpointUtils.init);
    final result = await chatService.sendChatMessage('', params);

    result.fold(
          (stageResponse) {
        _stageService
          ..updateStageFromString(stageResponse.stage)
          ..updateHintStageFromString(stageResponse.stageHint);

        final stage = ChatStage.fromString(stageResponse.stage);
        final hintStage = stageResponse.stageHint != null
            ? ChatStage.fromString(stageResponse.stageHint!)
            : null;

        final updatedMessages = List<MessageModel>.from(state.messages)
          ..add(
            MessageModel(
              message: stageResponse.message,
              authorType: 'AI',
              messageId: UniqueKey().toString(),
              messageDate: DateTime.now(),
            ),
          )
          ..sort(
                (a, b) => (a.messageDate ?? DateTime(0))
                .compareTo(b.messageDate ?? DateTime(0)),
          );

        final canProgress = stage == ChatStage.periodicCheckinEmotion ||
            hintStage == ChatStage.periodicCheckinEmotion ||
            _shouldShowProgressButton(stage);

        emit(
          state.copyWith(
            messages: sortMessages(updatedMessages),
            isLoading: false,
            isInitialLoading: false,
            currentStage: _stageService.currentStage,
            canProgressToNext: canProgress,
          ),
        );
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: true,
            error: 'Failed to initialize chat: $error',
          ),
        );
      },
    );
  }

  Future<void> _onProgressToNext(
      _OnProgressToNext event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    final nextStage = state.chatFlowStage.nextStage;
    if (nextStage != null) {
      emit(
        state.copyWith(
          chatFlowStage: nextStage,
          canProgressToNext: false,
          messages: [],
        ),
      );

      if (nextStage != ChatFlowStage.finalChat) {
        add(const ChatbotScreenEvent.onInitializeChat());
      }
    }
  }

  Future<void> _onSetFlowStage(
      _OnSetFlowStage event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(
      state.copyWith(
        chatFlowStage: event.stage,
        canProgressToNext: false,
        messages: [],
      ),
    );

    add(const ChatbotScreenEvent.onInitializeChat());
  }

  Future<void> _handleError(
      _HandleError event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(error: event.error));
  }

  Future<void> _onLoadHistoryMessages(
      _OnLoadHistoryMessages event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final result =
      await chatService.getChatHistory(chatbotRouteParams?.chatEndpointUtils);

      result.fold(
            (userResponse) {
          if (userResponse.history?.isEmpty ?? true) {
            add(const ChatbotScreenEvent.onSendMessage(''));
          }

          if (userResponse.showStartJourney) {
            emit(state.copyWith(showNextPage: true));
          }

          final sortedMessages = sortMessages(userResponse.history ?? []);
          emit(state.copyWith(messages: sortedMessages, isLoading: false));
        },
            (failure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: 'Failed to load history: $failure',
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: 'Unexpected error loading history: $e',
        ),
      );
    }
  }

  void loadNextPage() {
    final currentStage = _stageService.currentStage;
    if (currentStage == ChatStage.normalChat &&
        state.hasMoreMessages &&
        !state.isLoadingMore &&
        !state.isLoading) {
      add(const ChatbotScreenEvent.onLoadMoreMessages());
    }
  }

  Future<void> _onInitStageChat(
      _OnInitStageChat event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.initChat();

    result.fold(
          (stageResponse) {
        final initialMessage = MessageModel(
          message: stageResponse.message,
          authorType: 'AI',
          messageDate: DateTime.now(),
          messageId: UniqueKey().toString(),
        );

        final stage = ChatStage.fromString(stageResponse.stage);

        emit(
          state.copyWith(
            messages: sortMessages([initialMessage]),
            isLoading: false,
            isInitialLoading: false,
            currentStage: stage,
            canProgressToNext: _shouldShowProgressButton(stage),
          ),
        );

        _stageService.updateStage(stage);
        add(ChatbotScreenEvent.onHandleStageResponse(stageResponse));
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: false,
            error: 'Failed to initialize chat: $error',
          ),
        );
      },
    );
  }

  Future<void> _onSendStageMessage(
      _OnSendStageMessage event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    final tempId = UniqueKey().toString();

    final userMessage = MessageModel(
      message: event.message,
      authorType: 'User',
      messageDate: DateTime.now(),
      messageId: tempId,
    );

    final botThinkingMessage = MessageModel(
      message: '',
      authorType: 'AI',
      messageDate: DateTime.now(),
      messageId: 'thinking-$tempId',
      aiThinking: true,
    );

    final updatedMessages = List<MessageModel>.from(state.messages)
      ..add(userMessage)
      ..add(botThinkingMessage);

    emit(
      state.copyWith(
        messages: sortMessages(updatedMessages),
        isLoading: true,
        text: '',
      ),
    );

    final result = await chatService.sendMessage(message: event.message);

    result.fold(
          (stageResponse) {
        final currentMessages = List<MessageModel>.from(state.messages)
          ..removeWhere((msg) => msg.messageId == 'thinking-$tempId')
          ..add(
            MessageModel(
              message: stageResponse.message,
              authorType: 'AI',
              messageDate: DateTime.now(),
              messageId: UniqueKey().toString(),
            ),
          );

        final newStage = ChatStage.fromString(stageResponse.stage);

        emit(
          state.copyWith(
            messages: sortMessages(currentMessages),
            isLoading: false,
            currentStage: newStage,
            canProgressToNext: _shouldShowProgressButton(newStage),
          ),
        );

        add(ChatbotScreenEvent.onHandleStageResponse(stageResponse));
      },
          (error) {
        final currentMessages = List<MessageModel>.from(state.messages)
          ..removeWhere((msg) => msg.messageId == 'thinking-$tempId');

        emit(
          state.copyWith(
            messages: sortMessages(currentMessages),
            isLoading: false,
            error: 'Failed to send message: $error',
          ),
        );
      },
    );
  }

  Future<void> _onSendCalmness(
      _OnSendCalmness event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.sendCalmness(calmness: event.calmness);

    result.fold(
          (stageResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            currentStage: ChatStage.fromString(stageResponse.stage),
          ),
        );

        add(ChatbotScreenEvent.onHandleStageResponse(stageResponse));
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to send calmness: $error',
          ),
        );
      },
    );
  }

  Future<void> _onSendEmotions(
      _OnSendEmotions event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.sendEmotions(emotions: event.emotions);

    result.fold(
          (stageResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            currentStage: ChatStage.fromString(stageResponse.stage),
          ),
        );

        add(ChatbotScreenEvent.onHandleStageResponse(stageResponse));
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to send emotions: $error',
          ),
        );
      },
    );
  }

  Future<void> _onSendFeedback(
      _OnSendFeedback event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.sendFeedback(
      feedbackRating: event.feedbackRating,
      calmnessValue: event.calmnessValue,
    );

    result.fold(
          (stageResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            currentStage: ChatStage.fromString(stageResponse.stage),
          ),
        );

        add(ChatbotScreenEvent.onHandleStageResponse(stageResponse));
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to send feedback: $error',
          ),
        );
      },
    );
  }

  Future<void> _onHandleStageResponse(
      _OnHandleStageResponse event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    final stage = ChatStage.fromString(event.response.stage);

    emit(
      state.copyWith(
        currentStage: stage,
        canProgressToNext: _shouldShowProgressButton(stage),
      ),
    );

    _stageService.updateStage(stage);

    if (StageFlowManager.shouldRedirectToExternalScreen(stage)) {
      emit(
        state.copyWith(
          chatbotScreenEvent: ChatbotScreenEventState.onNavigateToStage(stage),
        ),
      );

      emit(
        state.copyWith(
          chatbotScreenEvent: const ChatbotScreenEventState.idle(),
        ),
      );
    }
  }

  bool _shouldShowProgressButton(ChatStage stage) {
    switch (stage) {
      case ChatStage.periodicCheckinEmotion:
      case ChatStage.onboardingEmotion:
      case ChatStage.onboardingCalmness:
      case ChatStage.finalCalmness:
      case ChatStage.feedbackPending:
        return true;
      case ChatStage.onboardingIntro:
      case ChatStage.periodicProgramInfo:
      case ChatStage.normalChat:
      case ChatStage.reportReady:
      case ChatStage.chatCompleted:
        return false;
    }
  }

  Future<void> _onGetEmotions(
      _OnGetEmotions event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.getEmotions();

    result.fold(
          (emotionsResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            availableEmotions: emotionsResponse.emotions,
          ),
        );
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to get emotions: $error',
          ),
        );
      },
    );
  }

  Future<void> _onGetUiText(
      _OnGetUiText event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.getUiText();

    result.fold(
          (uiTextResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            uiText: uiTextResponse,
          ),
        );
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to get UI text: $error',
          ),
        );
      },
    );
  }

  Future<void> _onCreateReport(
      _OnCreateReport event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.createReport();

    result.fold(
          (stageResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            currentStage: ChatStage.fromString(stageResponse.stage),
          ),
        );

        add(ChatbotScreenEvent.onHandleStageResponse(stageResponse));
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to create report: $error',
          ),
        );
      },
    );
  }

  Future<void> _onSendChatIconClicked(
      _OnSendChatIconClicked event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.sendChatIconClicked();

    result.fold(
          (stageResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            currentStage: ChatStage.fromString(stageResponse.stage),
          ),
        );

        add(ChatbotScreenEvent.onHandleStageResponse(stageResponse));
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to send chat icon clicked: $error',
          ),
        );
      },
    );
  }

  Future<void> _onGetCheckinTimer(
      _OnGetCheckinTimer event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.getCheckinTimer(
      stage: event.stage,
      dailyPromptDay: event.dailyPromptDay,
      secondsUntilNextCheckin: event.secondsUntilNextCheckin,
    );

    result.fold(
          (checkinTimerResponse) {
        emit(
          state.copyWith(
            isLoading: false,
            checkinTimer: checkinTimerResponse,
          ),
        );
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to get checkin timer: $error',
          ),
        );
      },
    );
  }

  Future<void> _onSendEmotionInfo(
      _OnSendEmotionInfo event,
      Emitter<ChatbotScreenState> emit,
      ) async {
    emit(state.copyWith(isLoading: true));

    final result = await chatService.sendEmotionInfo();

    result.fold(
          (stageResponse) {
        final newMessage = MessageModel(
          message: stageResponse.message,
          authorType: 'AI',
          messageDate: DateTime.now(),
        );

        final updatedMessages = [...state.messages, newMessage];

        emit(
          state.copyWith(
            messages: updatedMessages,
            isLoading: false,
            // Intentionally not updating stage here (endless chat)
          ),
        );
      },
          (error) {
        emit(
          state.copyWith(
            isLoading: false,
            error: 'Failed to send emotion info: $error',
          ),
        );
      },
    );
  }
}
