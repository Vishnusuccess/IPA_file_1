import 'package:equatable/equatable.dart';

class StringBlockFeedbackModel extends Equatable {
  const StringBlockFeedbackModel({
    required this.blockFeedbackId,
    this.questions,
  });

  factory StringBlockFeedbackModel.fromJson(Map<String, dynamic> json) {
    return StringBlockFeedbackModel(
      blockFeedbackId: json['blockFeedbackId'] as String,
      questions: json['questions'] != null
          ? (json['questions'] as List<dynamic>)
              .map(
                (item) => StringBlockFeedbackQuestionModel.fromJson(
                  item as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  final String blockFeedbackId;
  final List<StringBlockFeedbackQuestionModel>? questions;

  Map<String, dynamic> toJson() => {
        'blockFeedbackId': blockFeedbackId,
        'questions': questions?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [blockFeedbackId, questions];
}

class StringBlockFeedbackQuestionModel extends Equatable {
  const StringBlockFeedbackQuestionModel({
    required this.blockFeedbackQuestionId,
    this.question,
    this.minHint,
    this.maxHint,
  });

  factory StringBlockFeedbackQuestionModel.fromJson(Map<String, dynamic> json) {
    return StringBlockFeedbackQuestionModel(
      blockFeedbackQuestionId: json['blockFeedbackQuestionId'] as String,
      question: json['question'] as String?,
      minHint: json['minHint'] as String?,
      maxHint: json['maxHint'] as String?,
    );
  }

  final String blockFeedbackQuestionId;
  final String? question;
  final String? minHint;
  final String? maxHint;

  Map<String, dynamic> toJson() => {
        'blockFeedbackQuestionId': blockFeedbackQuestionId,
        'question': question,
        'minHint': minHint,
        'maxHint': maxHint,
      };

  @override
  List<Object?> get props => [
        blockFeedbackQuestionId,
        question,
        minHint,
        maxHint,
      ];
}
