part of 'impact_metric_bloc.dart';

@freezed
class ImpactMetricEvent with _$ImpactMetricEvent {
  const factory ImpactMetricEvent.onFetchImpactMetricData() =
      _OnFetchImpactMetricData;

  const factory ImpactMetricEvent.onClickSendImpactMetric({
    required int value,
  }) = _OnStartImpactMetricAnswer;
}
