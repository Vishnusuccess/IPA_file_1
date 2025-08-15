// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_completion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseCompletionModelImpl _$$ExerciseCompletionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseCompletionModelImpl(
      exerciseType: json['exerciseType'] as String,
      exerciseCompletionId: json['exerciseCompletionId'] as String,
      exerciseId: json['exerciseId'] as String,
      programProgressId: json['programProgressId'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ExerciseCompletionModelImplToJson(
        _$ExerciseCompletionModelImpl instance) =>
    <String, dynamic>{
      'exerciseType': instance.exerciseType,
      'exerciseCompletionId': instance.exerciseCompletionId,
      'exerciseId': instance.exerciseId,
      'programProgressId': instance.programProgressId,
      'answers': instance.answers,
    };
