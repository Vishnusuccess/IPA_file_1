part of 'impact_metric_bloc.dart';

@freezed
class ImpactMetricState with _$ImpactMetricState {
  const factory ImpactMetricState({
    required bool isLoading,
    required ImpactMetricEventState impactMetricEvent,
    StringImpactMetricModel? impactMetric,
    ImpactMetricAnswerModel? answer,
    String? error,
  }) = _ImpactMetricState;

  factory ImpactMetricState.initial() => const ImpactMetricState(
        isLoading: false,
        impactMetricEvent: ImpactMetricEventState.idle(),
      );
}

@freezed
class ImpactMetricEventState with _$ImpactMetricEventState {
  const factory ImpactMetricEventState.idle() = _Idle;

  const factory ImpactMetricEventState.onSuccessGetImpactMetric() =
      _OnSuccessGetImpactMetric;

  const factory ImpactMetricEventState.onAnswerStarted(String message) =
      _OnAnswerStarted;

  const factory ImpactMetricEventState.showError(NetworkError error) =
      _ShowError;
}
