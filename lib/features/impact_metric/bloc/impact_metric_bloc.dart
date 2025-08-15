import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/network/network_error.dart';
import 'package:trueme/features/chatbot/data/chat_service.dart';
import 'package:trueme/features/impact_metric/data/model/impact_metric_answer_model.dart';
import 'package:trueme/features/impact_metric/data/model/impact_metric_exception.dart';
import 'package:trueme/features/impact_metric/data/model/string_impact_metric_model.dart';

part 'impact_metric_bloc.freezed.dart';
part 'impact_metric_event.dart';
part 'impact_metric_state.dart';

@injectable
class ImpactMetricBloc extends Bloc<ImpactMetricEvent, ImpactMetricState> {
  ImpactMetricBloc(this._chatService) : super(ImpactMetricState.initial()) {
    on<_OnFetchImpactMetricData>(_onFetchImpactMetricData);
    on<_OnStartImpactMetricAnswer>(_onStartImpactMetricAnswer);
  }

  final ChatService _chatService;

  Future<void> _onFetchImpactMetricData(
      _OnFetchImpactMetricData event, Emitter<ImpactMetricState> emit,)
  async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await _chatService.getUiText();

    result.fold(
      (impactMetric) {
        emit(state.copyWith(
          isLoading: false,
          impactMetric: StringImpactMetricModel(
              programId: '',
              question: impactMetric.calmnessCheck['heading'] as String,),
          impactMetricEvent:
              const ImpactMetricEventState.onSuccessGetImpactMetric(),
        ),);
        emit(state.copyWith(
          impactMetricEvent: const ImpactMetricEventState.idle(),
        ),);
      },
      (error) {
        var errorMessage =
            'Failed to fetch impact metric: ${error.runtimeType}';
        if (error is ImpactMetricNotFoundException) {
          errorMessage = 'Impact metric not found';
        }
        emit(state.copyWith(
          isLoading: false,
          error: errorMessage,
          impactMetricEvent: ImpactMetricEventState.showError(
              NetworkError(message: errorMessage),),
        ),);
        emit(state.copyWith(
          impactMetricEvent: const ImpactMetricEventState.idle(),
        ),);
      },
    );
  }

  Future<void> _onStartImpactMetricAnswer(
      _OnStartImpactMetricAnswer event, Emitter<ImpactMetricState> emit,) async
  {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await _chatService.sendCalmness(calmness: event.value);

    result.fold(
      (stageResponse) {
        AppLogger.dev('Calmness sent successfully: ${stageResponse.stage}');
        emit(state.copyWith(
          isLoading: false,
          impactMetricEvent:
              ImpactMetricEventState.onAnswerStarted(stageResponse.message),
        ),);
        emit(state.copyWith(
          impactMetricEvent: const ImpactMetricEventState.idle(),
        ),);
      },
      (error) {
        final errorMessage =
            'Failed to send calmness value: ${error.runtimeType}';
        emit(state.copyWith(
          isLoading: false,
          error: errorMessage,
          impactMetricEvent: ImpactMetricEventState.showError(
              NetworkError(message: errorMessage),),
        ),);
        emit(state.copyWith(
          impactMetricEvent: const ImpactMetricEventState.idle(),
        ),);
      },
    );
  }
}
