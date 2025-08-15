part of 'exercise_page_bloc.dart';

@freezed
class ExercisePageState with _$ExercisePageState {
  const factory ExercisePageState({
    required String stateId,
    required bool isLoading,
    required String exerciseId,
    required String programProgressId,
    required List<String> selectedAnswers,
    required List<String> potentialAnswers,
    required ExerciseProgressStageModel? program,
    required MultiSelectExerciseCompletionModel? completion,
    required StringMultiSelectExerciseModel? exercise,
    required ExercisePageEventState exercisePageEvent,

    // new fields
    required List<String> emotions,
    required bool isEmotionsLoading,
    required CheckinTimerModel? checkinTimer,
    required bool isCheckinTimerLoading,
    required UiTextResponse? uiText,
    required AnswerExerciseModel? answerExercise,
    // 7-day program fields
    required CheckinProgressModel? checkinProgress,
    required bool isCheckinProgressLoading,
    required ChatStatusResponse? chatStatus,
    required bool isChatStatusLoading,
  }) = _ExercisePageState;

  factory ExercisePageState.init() => const ExercisePageState(
        stateId: '',
        exerciseId: '',
        isLoading: false,
        program: null,
        selectedAnswers: [],
        potentialAnswers: [],
        programProgressId: '',
        completion: null,
        exercise: null,

        exercisePageEvent: ExercisePageEventState.idle(),
        emotions: [],
        isEmotionsLoading: false,
        checkinTimer: null,
        isCheckinTimerLoading: false,
        uiText: null,
        answerExercise: null,
        // 7-day program defaults
        checkinProgress: null,
        isCheckinProgressLoading: false,
        chatStatus: null,
        isChatStatusLoading: false,
      );
}

@freezed
class ExercisePageEventState with _$ExercisePageEventState {
  const factory ExercisePageEventState.idle() = _Idle;

  const factory ExercisePageEventState.onSuccessGetExercise() = _OnSuccessLogin;

  const factory ExercisePageEventState.showError(NetworkError error) =
      _OnNetworkError;

  const factory ExercisePageEventState.onSuccessSubmitEmotions(String message) =
      _OnSuccessSubmitEmotions;
}
