import 'package:equatable/equatable.dart';
import 'package:trueme/features/exercise/data/models/answer_block_models.dart';
import 'package:trueme/features/exercise/data/models/exercise_base.dart';
import 'package:trueme/features/exercise/data/models/string_multi_select_exercise_model.dart';

class AnswerExerciseModel extends ExerciseBase with EquatableMixin {
  const AnswerExerciseModel({
    required super.exerciseId,
    required super.exerciseType,
    required this.exerciseTitle,
    this.answerBlocks,
    this.exerciseHint,
    this.blockName,
  });

  factory AnswerExerciseModel.fromJson(Map<String, dynamic> json) {
    return AnswerExerciseModel(
      exerciseId: json['exerciseId'] as String,
      exerciseType: ExerciseType.values.firstWhere(
        (e) => e.name == json['exerciseType'],
      ),
      exerciseTitle: json['exerciseTitle'] as String,
      answerBlocks: json['answerBlocks'] != null
          ? (json['answerBlocks'] as List<dynamic>)
              .map((item) =>
                  AnswerBlockBase.fromJson(item as Map<String, dynamic>),)
              .toList()
          : null,
      exerciseHint: json['exerciseHint'] as String?,
      blockName: json['blockName'] as String?,
    );
  }

  final String exerciseTitle;
  final List<AnswerBlockBase>? answerBlocks;
  final String? exerciseHint;
  final String? blockName;

  @override
  Map<String, dynamic> toJson() => {
        r'$type': exerciseType.name,
        'exerciseId': exerciseId,
        'exerciseType': exerciseType.name,
        'exerciseTitle': exerciseTitle,
        'answerBlocks': answerBlocks?.map((e) => e.toJson()).toList(),
        'exerciseHint': exerciseHint,
        'blockName': blockName,
      };

  @override
  List<Object?> get props => [
        exerciseId,
        exerciseType,
        exerciseTitle,
        answerBlocks,
        exerciseHint,
        blockName,
      ];
}
