// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

enum BlockFeedbackValue { One, Two, Three, Four, Five }

class BlockFeedbackAnswerArgs extends Equatable {
  const BlockFeedbackAnswerArgs({
    required this.programProgressId,
    required this.blockFeedbackId,
    required this.blockId,
    this.answers,
  });

  factory BlockFeedbackAnswerArgs.fromJson(Map<String, dynamic> json) {
    return BlockFeedbackAnswerArgs(
      programProgressId: json['programProgressId'] as String,
      blockFeedbackId: json['blockFeedbackId'] as String,
      blockId: json['blockId'] as String,
      answers: json['answers'] != null
          ? (json['answers'] as List<dynamic>)
              .map(
                (item) => BlockFeedbackQuestionAnswerArgs.fromJson(
                  item as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  final String programProgressId;
  final String blockFeedbackId;
  final String blockId;
  final List<BlockFeedbackQuestionAnswerArgs>? answers;

  Map<String, dynamic> toJson() => {
        'programProgressId': programProgressId,
        'blockFeedbackId': blockFeedbackId,
        'blockId': blockId,
        'answers': answers?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [
        programProgressId,
        blockFeedbackId,
        blockId,
        answers,
      ];
}

class BlockFeedbackQuestionAnswerArgs extends Equatable {
  const BlockFeedbackQuestionAnswerArgs({
    required this.questionId,
    required this.value,
  });

  factory BlockFeedbackQuestionAnswerArgs.fromJson(Map<String, dynamic> json) {
    return BlockFeedbackQuestionAnswerArgs(
      questionId: json['questionId'] as String,
      value: BlockFeedbackValue.values.firstWhere(
        (e) => e.name == json['value'],
      ),
    );
  }

  final String questionId;
  final BlockFeedbackValue value;

  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'value': value.name,
      };

  @override
  List<Object?> get props => [questionId, value];
}
