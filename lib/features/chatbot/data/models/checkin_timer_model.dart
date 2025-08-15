import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkin_timer_model.freezed.dart';
part 'checkin_timer_model.g.dart';

@freezed
class CheckinTimerModel with _$CheckinTimerModel {
  const factory CheckinTimerModel({
    required String stage,
    required int dailyPromptDay,
    int? secondsUntilNextCheckin,
  }) = _CheckinTimerModel;

  factory CheckinTimerModel.fromJson(Map<String, dynamic> json) =>
      _$CheckinTimerModelFromJson(json);
}
