import 'package:equatable/equatable.dart';
import 'package:trueme/features/exercise/data/models/string_multi_select_exercise_model.dart';

class MultiSelectExerciseCompletionModel extends Equatable {
  const MultiSelectExerciseCompletionModel({
    required this.exerciseType,
    required this.exerciseCompletionId,
    required this.exerciseId,
    required this.programProgressId,
    this.answers,
  });

  factory MultiSelectExerciseCompletionModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return MultiSelectExerciseCompletionModel(
      exerciseType: ExerciseType.values.firstWhere(
        (e) => e.name == json['exerciseType'],
      ),
      exerciseCompletionId: json['exerciseCompletionId'] as String,
      exerciseId: json['exerciseId'] as String,
      programProgressId: json['programProgressId'] as String,
      answers: json['answers'] != null
          ? (json['answers'] as List<dynamic>).cast<String>()
          : null,
    );
  }

  final ExerciseType exerciseType;
  final String exerciseCompletionId;
  final String exerciseId;
  final String programProgressId;
  final List<String>? answers;

  Map<String, dynamic> toJson() => {
        'exerciseType': exerciseType.name,
        'exerciseCompletionId': exerciseCompletionId,
        'exerciseId': exerciseId,
        'programProgressId': programProgressId,
        'answers': answers,
      };

  @override
  List<Object?> get props => [
        exerciseType,
        exerciseCompletionId,
        exerciseId,
        programProgressId,
        answers,
      ];
}
