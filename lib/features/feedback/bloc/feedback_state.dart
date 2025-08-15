part of 'feedback_bloc.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    required bool isLoading,
    required FeedbackEventState feedbackEvent,
    required bool isCompleted,
    StringBlockFeedbackModel? feedback,
    String? error,
  }) = _FeedbackState;

  factory FeedbackState.initial() => const FeedbackState(
        isLoading: false,
        isCompleted: false,
        feedbackEvent: FeedbackEventState.idle(),
      );
}

@freezed
class FeedbackEventState with _$FeedbackEventState {
  const factory FeedbackEventState.idle() = _Idle;

  const factory FeedbackEventState.onSuccessGetFeedback() =
      _OnSuccessGetFeedback;

  const factory FeedbackEventState.onFeedbackCompleted() = _OnFeedbackCompleted;

  const factory FeedbackEventState.showError(NetworkError error) = _ShowError;
}
