import 'package:equatable/equatable.dart';

enum BlockFeedbackValue { one, two, three, four, five }

class BlockFeedbackAnswerModel extends Equatable {
  const BlockFeedbackAnswerModel({
    required this.programProgressId,
    required this.blockFeedbackAnswerId,
    required this.blockId,
    required this.blockFeedbackId,
    this.answers,
  });

  factory BlockFeedbackAnswerModel.fromJson(Map<String, dynamic> json) {
    return BlockFeedbackAnswerModel(
      programProgressId: json['programProgressId'] as String,
      blockFeedbackAnswerId: json['blockFeedbackAnswerId'] as String,
      blockId: json['blockId'] as String,
      answers: json['answers'] != null
          ? (json['answers'] as List<dynamic>)
              .map(
                (item) => BlockFeedbackQuestionAnswerModel.fromJson(
                  item as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      blockFeedbackId: json['blockFeedbackId'] as String,
    );
  }

  final String programProgressId;
  final String blockFeedbackAnswerId;
  final String blockId;
  final List<BlockFeedbackQuestionAnswerModel>? answers;
  final String blockFeedbackId;

  Map<String, dynamic> toJson() => {
        'programProgressId': programProgressId,
        'blockFeedbackAnswerId': blockFeedbackAnswerId,
        'blockId': blockId,
        'answers': answers?.map((e) => e.toJson()).toList(),
        'blockFeedbackId': blockFeedbackId,
      };

  @override
  List<Object?> get props => [
        programProgressId,
        blockFeedbackAnswerId,
        blockId,
        answers,
        blockFeedbackId,
      ];
}

class BlockFeedbackQuestionAnswerModel extends Equatable {
  const BlockFeedbackQuestionAnswerModel({
    required this.blockFeedbackQuestionId,
    required this.value,
  });

  factory BlockFeedbackQuestionAnswerModel.fromJson(Map<String, dynamic> json) {
    return BlockFeedbackQuestionAnswerModel(
      blockFeedbackQuestionId: json['blockFeedbackQuestionId'] as String,
      value: BlockFeedbackValue.values.firstWhere(
        (e) => e.name == json['value'],
      ),
    );
  }

  final String blockFeedbackQuestionId;
  final BlockFeedbackValue value;

  Map<String, dynamic> toJson() => {
        'blockFeedbackQuestionId': blockFeedbackQuestionId,
        'value': value.name,
      };

  @override
  List<Object?> get props => [blockFeedbackQuestionId, value];
}
