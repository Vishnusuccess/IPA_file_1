part of 'feedback_bloc.dart';

@freezed
class FeedbackEvent with _$FeedbackEvent {
  const factory FeedbackEvent.onFetchFeedbackData(String blockFeedbackId) =
      _OnFetchFeedbackData;

  const factory FeedbackEvent.onCompleteFeedback(BlockFeedbackAnswerArgs args) =
      _OnCompleteFeedback;
}
