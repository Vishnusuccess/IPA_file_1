part of 'exercise_page_bloc.dart';

@freezed
class ExercisePageEvent with _$ExercisePageEvent {
  const factory ExercisePageEvent.onInit() = _OnInit;
  const factory ExercisePageEvent.onClickSubmit(
    String exerciseId,
  ) = _OnClickSubmit;

  const factory ExercisePageEvent.onCheckAnswer(
    String answer,
  ) = _OnCheckAnswer;

  const factory ExercisePageEvent.onTimerEnd() = _OnTimerEnd;

  /// Methods
  const factory ExercisePageEvent.onFetchExerciseData(
    String exerciseId,
  ) = _OnFetchExerciseData;
  const factory ExercisePageEvent.onCompleteExerciseData(
    MultiSelectExerciseCompletionArgs args,
  ) = _OnCompleteExerciseData;

  // New events for emotions and checkin timer
  const factory ExercisePageEvent.onGetEmotions() = _OnGetEmotions;

  const factory ExercisePageEvent.onGetCheckinTimer({
    required String stage,
    required int dailyPromptDay,
    int? secondsUntilNextCheckin,
  }) = _OnGetCheckinTimer;

  const factory ExercisePageEvent.onSendEmotions(List<String> emotions) =
      _OnSendEmotions;

  const factory ExercisePageEvent.onGetUiText() = _OnGetUiText;

  // 7-day program events
  const factory ExercisePageEvent.onGetCheckinProgress() =
      _OnGetCheckinProgress;

  const factory ExercisePageEvent.onGetChatStatus() = _OnGetChatStatus;
}
