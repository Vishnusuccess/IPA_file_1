import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/core/network/network_error.dart';
import 'package:trueme/features/feedback/data/block_feedback_repository.dart';
import 'package:trueme/features/feedback/data/models/block_feedback_answer_args.dart';
import 'package:trueme/features/feedback/data/models/block_feedback_exception.dart';
import 'package:trueme/features/feedback/data/models/string_block_feedback_model.dart';

part 'feedback_bloc.freezed.dart';
part 'feedback_event.dart';
part 'feedback_state.dart';

@injectable
class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc(this._blockFeedbackRepository) : super(FeedbackState.initial()) {
    on<_OnFetchFeedbackData>(_onFetchFeedbackData);
    on<_OnCompleteFeedback>(_onCompleteFeedback);
  }

  final BlockFeedbackRepository _blockFeedbackRepository;

  Future<void> _onFetchFeedbackData(
      _OnFetchFeedbackData event, Emitter<FeedbackState> emit,) async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _blockFeedbackRepository.getBlockFeedback(
      blockFeedbackId: event.blockFeedbackId,
    );
    result.fold(
      (feedback) {
        emit(state.copyWith(
          isLoading: false,
          feedback: feedback,
          feedbackEvent: const FeedbackEventState.onSuccessGetFeedback(),
        ),);
        emit(state.copyWith(
          feedbackEvent: const FeedbackEventState.idle(),
        ),);
      },
      (error) {
        var errorMessage = 'Failed to fetch feedback: ${error.runtimeType}';
        if (error is BlockFeedbackNotFoundException) {
          errorMessage = 'Feedback not found';
        }
        emit(state.copyWith(
          isLoading: false,
          error: errorMessage,
          feedbackEvent:
              FeedbackEventState.showError(NetworkError(message: errorMessage)),
        ),);
        emit(state.copyWith(
          feedbackEvent: const FeedbackEventState.idle(),
        ),);
      },
    );
  }

  Future<void> _onCompleteFeedback(
      _OnCompleteFeedback event, Emitter<FeedbackState> emit,) async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _blockFeedbackRepository.completeFeedback(event.args);
    result.fold(
      (unit) {
        emit(state.copyWith(
          isLoading: false,
          isCompleted: true,
          feedbackEvent: const FeedbackEventState.onFeedbackCompleted(),
        ),);
        emit(state.copyWith(
          feedbackEvent: const FeedbackEventState.idle(),
        ),);
      },
      (error) {
        final errorMessage =
            'Failed to complete feedback: ${error.runtimeType}';
        emit(state.copyWith(
          isLoading: false,
          error: errorMessage,
          feedbackEvent:
              FeedbackEventState.showError(NetworkError(message: errorMessage)),
        ),);
        emit(state.copyWith(
          feedbackEvent: const FeedbackEventState.idle(),
        ),);
      },
    );
  }
}
