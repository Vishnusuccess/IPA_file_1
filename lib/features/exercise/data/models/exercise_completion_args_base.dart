

import 'package:trueme/features/exercise/data/models/string_multi_select_exercise_model.dart';

abstract class ExerciseCompletionArgsBase {
  const ExerciseCompletionArgsBase({
    required this.programProgressId,
    required this.exerciseId,
    required this.exerciseType,
  });

  final String programProgressId;
  final String exerciseId;
  final ExerciseType exerciseType;

  Map<String, dynamic> toJson();
}
