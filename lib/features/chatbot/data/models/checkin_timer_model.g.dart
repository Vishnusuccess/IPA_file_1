// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_timer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckinTimerModelImpl _$$CheckinTimerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckinTimerModelImpl(
      stage: json['stage'] as String,
      dailyPromptDay: (json['dailyPromptDay'] as num).toInt(),
      secondsUntilNextCheckin:
          (json['secondsUntilNextCheckin'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CheckinTimerModelImplToJson(
        _$CheckinTimerModelImpl instance) =>
    <String, dynamic>{
      'stage': instance.stage,
      'dailyPromptDay': instance.dailyPromptDay,
      'secondsUntilNextCheckin': instance.secondsUntilNextCheckin,
    };
