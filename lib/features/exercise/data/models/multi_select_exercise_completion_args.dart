import 'package:equatable/equatable.dart';
import 'package:trueme/features/exercise/data/models/exercise_completion_args_base.dart';
import 'package:trueme/features/exercise/data/models/string_multi_select_exercise_model.dart';

class MultiSelectExerciseCompletionArgs extends ExerciseCompletionArgsBase
    with EquatableMixin {
  const MultiSelectExerciseCompletionArgs({
    required super.programProgressId,
    required super.exerciseId,
    required super.exerciseType,
    this.values,
  });

  factory MultiSelectExerciseCompletionArgs.fromJson(
    Map<String, dynamic> json,
  ) {
    return MultiSelectExerciseCompletionArgs(
      programProgressId: json['programProgressId'] as String,
      exerciseId: json['exerciseId'] as String,
      exerciseType: ExerciseType.values.firstWhere(
        (e) => e.name == json['exerciseType'],
      ),
      values: json['values'] != null
          ? (json['values'] as List<dynamic>).cast<String>()
          : null,
    );
  }

  final List<String>? values;

  @override
  Map<String, dynamic> toJson() => {
        r'$type': exerciseType.name,
        'programProgressId': programProgressId,
        'exerciseId': exerciseId,
        'exerciseType': exerciseType.name,
        'values': values,
      };

  @override
  List<Object?> get props => [
        programProgressId,
        exerciseId,
        exerciseType,
        values,
      ];
}
