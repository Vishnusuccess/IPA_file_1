import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:trueme/core/network/network_error.dart';
import 'package:trueme/core/services/stage_service.dart';
import 'package:trueme/features/chatbot/data/chat_service.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/chatbot/data/models/chat_status_response_model.dart';
import 'package:trueme/features/chatbot/data/models/checkin_progress_model.dart';
import 'package:trueme/features/chatbot/data/models/checkin_timer_model.dart';
import 'package:trueme/features/chatbot/data/models/emotion_model.dart';
import 'package:trueme/features/exercise/data/exercise_repository.dart';
import 'package:trueme/features/exercise/data/models/answer_exercise_model.dart';
import 'package:trueme/features/exercise/data/models/multi_select_exercise_completion_args.dart';
import 'package:trueme/features/exercise/data/models/multi_select_exercise_completion_model.dart';
import 'package:trueme/features/exercise/data/models/string_multi_select_exercise_model.dart';
import 'package:trueme/features/exercise/widgets/answer_blocks_widget.dart';
import 'package:trueme/features/splash_screen/data/model/progress_stage_model.dart';

part 'exercise_page_bloc.freezed.dart';
part 'exercise_page_event.dart';
part 'exercise_page_state.dart';

@injectable
class ExercisePageBloc extends Bloc<ExercisePageEvent, ExercisePageState> {
  ExercisePageBloc(
    this._exerciseRepository,
    this._chatService,
    this._stageService,
  ) : super(ExercisePageState.init()) {
    on<_OnInit>(_onInit);
    on<_OnCompleteExerciseData>(_onCompleteExerciseData);
    on<_OnClickSubmit>(_onClickSubmit);
    on<_OnCheckAnswer>(_onCheckAnswer);
    on<_OnTimerEnd>(_onTimerEnd);
    on<_OnGetEmotions>(_onGetEmotions);
    on<_OnGetCheckinTimer>(_onGetCheckinTimer);
    on<_OnSendEmotions>(_onSendEmotions);
    on<_OnGetUiText>(_onGetUiText);
    // 7-day program event handlers
    on<_OnGetCheckinProgress>(_onGetCheckinProgress);
    on<_OnGetChatStatus>(_onGetChatStatus);
  }

  final ExerciseRepository _exerciseRepository;
  final ChatService _chatService;
  final StageService _stageService;

  Future<void> _onInit(_OnInit event, Emitter<ExercisePageState> emit) async {
    debugPrint('🏃 ExercisePageBloc: _onInit called at ${DateTime.now()}');
    await OneSignal.InAppMessages.addTrigger('impact_metric_complete', 'true');
  }

  Future<void> _onClickSubmit(
      _OnClickSubmit event, Emitter<ExercisePageState> emit,) async {
    final answerExercise = state.answerExercise;

    if (answerExercise != null) {
      final answers = getAnswerBlockValues(answerExercise.exerciseId);

      if (answers.isNotEmpty) {
        await _completeExerciseByType(ExerciseType.Answer, answers, emit);
      } else {
        emit(
          state.copyWith(
            exercisePageEvent: ExercisePageEventState.showError(
              NetworkError(message: 'Please provide answers'),
            ),
          ),
        );
      }
    } else if (state.exercise != null) {
      if (state.selectedAnswers.isNotEmpty) {
        await _completeExerciseByType(
            ExerciseType.MultiSelect, state.selectedAnswers, emit,);
      } else {
        emit(
          state.copyWith(
            exercisePageEvent: ExercisePageEventState.showError(
              NetworkError(message: 'Please select at least one answer'),
            ),
          ),
        );
      }
    } else {
      emit(
        state.copyWith(
          exercisePageEvent: ExercisePageEventState.showError(
            NetworkError(message: 'No exercise found'),
          ),
        ),
      );
    }
  }

  Future<void> _onCheckAnswer(
      _OnCheckAnswer event, Emitter<ExercisePageState> emit,) async {
    final currentAnswers = List<String>.from(state.selectedAnswers);

    if (currentAnswers.contains(event.answer)) {
      currentAnswers.remove(event.answer);
    } else {
      currentAnswers.add(event.answer);
    }

    emit(state.copyWith(selectedAnswers: currentAnswers));
  }

  Future<void> _onCompleteExerciseData(
      _OnCompleteExerciseData event, Emitter<ExercisePageState> emit,) async {
    emit(state.copyWith(isLoading: true));
    /* final result = await _exerciseRepository.completeExerciseGeneric(args);

    result.fold(
      (completion) {
        emit(
          state.copyWith(
            exercisePageEvent:
            const ExercisePageEventState.onSuccessGetExercise(),
            isLoading: false,
          ),
        );
        emit(
          state.copyWith(
            exercisePageEvent: const ExercisePageEventState.idle(),
          ),
        );
      },
      (error) {
        emit(
          state.copyWith(
            exercisePageEvent: ExercisePageEventState.showError(
              NetworkError(message: error.toString()),
            ),
            isLoading: false,
          ),
        );
      },
    );*/
  }

  Future<void> _onTimerEnd(
      _OnTimerEnd event, Emitter<ExercisePageState> emit,) async {
    // When timer ends, just refresh the exercise state without navigating away
    emit(state.copyWith(selectedAnswers: []));
    // Don't emit onSuccessGetExercise as it
    // triggers navigation back to splash screen
    // Just stay on the current exercise screen
  }

  Future<void> _completeExerciseByType(
    ExerciseType exerciseType,
    List<String> answers,
    Emitter<ExercisePageState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
  }

  Future<void> _onGetEmotions(
      _OnGetEmotions event, Emitter<ExercisePageState> emit,) async {
    debugPrint('😭 ExercisePageBloc: _onGetEmotions called'
        ' at ${DateTime.now()}');
    emit(state.copyWith(isLoading: true));
    final result = await _exerciseRepository.fetchEmotions();
    result.fold(
      (emotions) {
        debugPrint(
            '😊 ExercisePageBloc:'
                ' Got ${emotions.length} emotions: $emotions');
        emit(state.copyWith(potentialAnswers: emotions, isLoading: false));
      },
      (error) {
        debugPrint('❌ ExercisePageBloc: Error fetching emotions: $error');
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  Future<void> _onGetCheckinTimer(
      _OnGetCheckinTimer event, Emitter<ExercisePageState> emit,) async {
    emit(state.copyWith(isCheckinTimerLoading: true));
    final result = await _exerciseRepository.fetchCheckinTimer(
      stage: event.stage,
      dailyPromptDay: event.dailyPromptDay,
      secondsUntilNextCheckin: event.secondsUntilNextCheckin,
    );
    result.fold(
      (timer) => emit(
          state.copyWith(checkinTimer: timer, isCheckinTimerLoading: false),),
      (error) => emit(state.copyWith(isCheckinTimerLoading: false)),
    );
  }

  Future<void> _onSendEmotions(
      _OnSendEmotions event, Emitter<ExercisePageState> emit,) async {
    // Check if user selected any emotions
    if (event.emotions.isEmpty) {
      emit(state.copyWith(
        exercisePageEvent: ExercisePageEventState.showError(
          NetworkError(message: 'Please select at least one emotion'),
        ),
      ),);
      emit(state.copyWith(
        exercisePageEvent: const ExercisePageEventState.idle(),
      ),);
      return;
    }

    emit(state.copyWith(isLoading: true));

    // Send emotions via chat POST endpoint
    final result = await _chatService.sendChatRequest(emotions: event.emotions);

    result.fold(
      (stageResponse) {
        emit(state.copyWith(
          isLoading: false,
          exercisePageEvent: ExercisePageEventState.onSuccessSubmitEmotions(
              stageResponse.message,),
        ),);
        emit(state.copyWith(
          exercisePageEvent: const ExercisePageEventState.idle(),
        ),);
      },
      (error) {
        emit(state.copyWith(
          isLoading: false,
          exercisePageEvent: ExercisePageEventState.showError(
            NetworkError(message: 'Failed to send emotions: $error'),
          ),
        ),);
        emit(state.copyWith(
          exercisePageEvent: const ExercisePageEventState.idle(),
        ),);
      },
    );
  }

  Future<void> _onGetUiText(
      _OnGetUiText event, Emitter<ExercisePageState> emit,) async {
    final result = await _chatService.getUiText();
    result.fold(
      (uiTextResponse) {
        emit(state.copyWith(uiText: uiTextResponse));
      },
      (error) {
        emit(state.copyWith(
          exercisePageEvent: ExercisePageEventState.showError(
            NetworkError(message: 'Failed to get UI text: $error'),
          ),
        ),);
      },
    );
  }

  Future<void> _onGetCheckinProgress(
      _OnGetCheckinProgress event, Emitter<ExercisePageState> emit,) async {
    emit(state.copyWith(isCheckinProgressLoading: true));

    final result = await _chatService.getCheckinProgress();
    result.fold(
      (checkinProgress) {
        emit(state.copyWith(
          checkinProgress: checkinProgress,
          isCheckinProgressLoading: false,
        ),);
      },
      (error) {
        emit(state.copyWith(
          isCheckinProgressLoading: false,
          exercisePageEvent: ExercisePageEventState.showError(
            NetworkError(message: 'Failed to get checkin progress: $error'),
          ),
        ),);
      },
    );
  }

  Future<void> _onGetChatStatus(
      _OnGetChatStatus event, Emitter<ExercisePageState> emit,) async {
    emit(state.copyWith(isChatStatusLoading: true));

    final result = await _chatService.checkChatStatus();
    result.fold(
      (chatStatus) {
        // Update stage service with current stage from API
        final currentStage = ChatStage.fromString(chatStatus.stage);
        _stageService.updateStage(currentStage);

        emit(state.copyWith(
          chatStatus: chatStatus,
          isChatStatusLoading: false,
        ),);
      },
      (error) {
        emit(state.copyWith(
          isChatStatusLoading: false,
          exercisePageEvent: ExercisePageEventState.showError(
            NetworkError(message: 'Failed to get chat status: $error'),
          ),
        ),);
      },
    );
  }
}

extension ExercisePageStateExtensions on ExercisePageState {
  AnswerExerciseModel? get answerExercise {
    return _answerExerciseCache[stateId];
  }
}

final Map<String, AnswerExerciseModel> _answerExerciseCache = {};
