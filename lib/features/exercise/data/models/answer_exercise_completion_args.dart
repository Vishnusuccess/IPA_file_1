import 'package:equatable/equatable.dart';
import 'package:trueme/features/exercise/data/models/exercise_completion_args_base.dart';
import 'package:trueme/features/exercise/data/models/string_multi_select_exercise_model.dart';

class AnswerExerciseCompletionArgs extends ExerciseCompletionArgsBase
    with EquatableMixin {
  const AnswerExerciseCompletionArgs({
    required super.programProgressId,
    required super.exerciseId,
    required super.exerciseType,
    this.answers,
  });

  factory AnswerExerciseCompletionArgs.fromJson(
    Map<String, dynamic> json,
  ) {
    return AnswerExerciseCompletionArgs(
      programProgressId: json['programProgressId'] as String,
      exerciseId: json['exerciseId'] as String,
      exerciseType: ExerciseType.values.firstWhere(
        (e) => e.name == json['exerciseType'],
      ),
      answers: json['answers'] != null
          ? (json['answers'] as List<dynamic>).cast<String>()
          : null,
    );
  }

  final List<String>? answers;

  @override
  Map<String, dynamic> toJson() => {
        r'$type': exerciseType.name,
        'programProgressId': programProgressId,
        'exerciseId': exerciseId,
        'exerciseType': exerciseType.name,
        'answers': answers,
      };

  @override
  List<Object?> get props => [
        programProgressId,
        exerciseId,
        exerciseType,
        answers,
      ];
}
