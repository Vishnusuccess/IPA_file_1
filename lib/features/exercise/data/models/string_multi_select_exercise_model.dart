// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:trueme/features/exercise/data/models/exercise_base.dart';
import 'package:trueme/features/exercise/data/models/model.dart';

enum ExerciseType { Listen, MultiSelect, Reading, Answer }

class StringMultiSelectExerciseModel extends ExerciseBase with EquatableMixin {
  const StringMultiSelectExerciseModel({
    required super.exerciseId,
    required super.exerciseType,
    this.exerciseTitle,
    this.question,
    this.questionHint,
    this.possibleAnswers,
    this.blockName,
    this.exerciseHint,
  });

  factory StringMultiSelectExerciseModel.fromJson(Map<String, dynamic> json) {
    return StringMultiSelectExerciseModel(
      exerciseId: json['exerciseId'] as String,
      exerciseType: ExerciseType.values.firstWhere(
        (e) => e.name == json['exerciseType'],
      ),
      exerciseTitle: json['exerciseTitle'] as String?,
      question: json['question'] as String?,
      questionHint: json['questionHint'] as String?,
      possibleAnswers: json['possibleAnswers'] != null
          ? (json['possibleAnswers'] as List<dynamic>)
              .map(
                (item) => StringMultipleSelectAnswerModel.fromJson(
                  item as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      blockName: json['blockName'] as String?,
      exerciseHint: json['exerciseHint'] as String?,
    );
  }

  final String? exerciseTitle;
  final String? question;
  final String? questionHint;
  final List<StringMultipleSelectAnswerModel>? possibleAnswers;
  final String? blockName;
  final String? exerciseHint;

  @override
  Map<String, dynamic> toJson() => {
        'exerciseId': exerciseId,
        'exerciseType': exerciseType.name,
        'exerciseTitle': exerciseTitle,
        'question': question,
        'questionHint': questionHint,
        'possibleAnswers': possibleAnswers?.map((e) => e.toJson()).toList(),
        'blockName': blockName,
        'exerciseHint': exerciseHint,
      };

  @override
  List<Object?> get props => [
        exerciseId,
        exerciseType,
        exerciseTitle,
        question,
        questionHint,
        possibleAnswers,
        blockName,
        exerciseHint,
      ];
}
