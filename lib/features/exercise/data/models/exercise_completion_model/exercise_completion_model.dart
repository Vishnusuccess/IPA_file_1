import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_completion_model.freezed.dart';
part 'exercise_completion_model.g.dart';

@freezed
class ExerciseCompletionModel with _$ExerciseCompletionModel {
  const factory ExerciseCompletionModel({
    required String exerciseType,
    required String exerciseCompletionId,
    required String exerciseId,
    required String programProgressId,
    required List<String> answers,
  }) = _ExerciseCompletionModel;

  factory ExerciseCompletionModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseCompletionModelFromJson(json);

  factory ExerciseCompletionModel.empty() => const ExerciseCompletionModel(
        exerciseType: '',
        exerciseCompletionId: '',
        exerciseId: '',
        programProgressId: '',
        answers: [],
      );
}
