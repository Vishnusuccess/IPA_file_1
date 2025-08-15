// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

enum ProgressStageType { ImpactMetric, Exercise, BlockFeedback }

enum ImpactMetricStage { Start, End }

abstract class ProgressStageModel extends Equatable {
  const ProgressStageModel({
    required this.progressStage,
    required this.programProgressId,
    required this.programId,
  });

  factory ProgressStageModel.fromJson(Map<String, dynamic> json) {
    switch (ProgressStageType.values
        .firstWhere((e) => e.name == json['progressStage'])) {
      case ProgressStageType.ImpactMetric:
        return ImpactMetricProgressStageModel.fromJson(json);
      case ProgressStageType.Exercise:
        return ExerciseProgressStageModel.fromJson(json);
      case ProgressStageType.BlockFeedback:
        return BlockFeedbackProgressStageModel.fromJson(json);
    }
  }

  final ProgressStageType progressStage;
  final String programProgressId;
  final String programId;

  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [progressStage, programProgressId, programId];
}

class ImpactMetricProgressStageModel extends ProgressStageModel {
  const ImpactMetricProgressStageModel({
    required super.programProgressId,
    required super.programId,
    required this.impactMetricStage,
    this.impactMetricAnswerId,
  }) : super(progressStage: ProgressStageType.ImpactMetric);

  factory ImpactMetricProgressStageModel.fromJson(Map<String, dynamic> json) {
    return ImpactMetricProgressStageModel(
      programProgressId: json['programProgressId'] as String,
      programId: json['programId'] as String,
      impactMetricStage: json['impactMetricStage'] == 'Start'
          ? ImpactMetricStage.Start
          : ImpactMetricStage.End,
      impactMetricAnswerId: json['impactMetricAnswerId'] as String?,
    );
  }

  final ImpactMetricStage impactMetricStage;
  final String? impactMetricAnswerId;

  @override
  Map<String, dynamic> toJson() => {
        'progressStage': progressStage.name,
        'programProgressId': programProgressId,
        'programId': programId,
        'impactMetricStage': impactMetricStage.name,
        'impactMetricAnswerId': impactMetricAnswerId,
      };

  @override
  List<Object?> get props =>
      [...super.props, impactMetricStage, impactMetricAnswerId];
}

class ExerciseProgressStageModel extends ProgressStageModel {
  const ExerciseProgressStageModel({
    required super.programProgressId,
    required super.programId,
    required this.exerciseId,
    required this.blockId,
    required this.blockStarted,
    required this.blockEnding,
    required this.isCompleted,
    required this.positionInBlock,
    required this.allInBlock,
    this.checkInNextIn,
    this.exerciseCompletionId,
  }) : super(progressStage: ProgressStageType.Exercise);

  factory ExerciseProgressStageModel.fromJson(Map<String, dynamic> json) {
    return ExerciseProgressStageModel(
      programProgressId: json['programProgressId'] as String,
      programId: json['programId'] as String,
      exerciseId: json['exerciseId'] as String,
      blockId: json['blockId'] as String,
      blockStarted: DateTime.parse(json['blockStarted'] as String),
      blockEnding: DateTime.parse(json['blockEnding'] as String),
      checkInNextIn: json['checkInNextIn'] != null
          ? DateTime.parse(json['checkInNextIn'] as String)
          : null,
      isCompleted: json['isCompleted'] as bool,
      exerciseCompletionId: json['exerciseCompletionId'] as String?,
      positionInBlock: json['positionInBlock'] as int,
      allInBlock: json['allInBlock'] as int,
    );
  }

  final String exerciseId;
  final String blockId;
  final DateTime blockStarted;
  final DateTime blockEnding;
  final DateTime? checkInNextIn;
  final bool isCompleted;
  final String? exerciseCompletionId;
  final int positionInBlock;
  final int allInBlock;

  @override
  Map<String, dynamic> toJson() => {
        'progressStage': progressStage.name,
        'programProgressId': programProgressId,
        'programId': programId,
        'exerciseId': exerciseId,
        'blockId': blockId,
        'blockStarted': blockStarted.toIso8601String(),
        'blockEnding': blockEnding.toIso8601String(),
        'checkInNextIn': checkInNextIn?.toIso8601String(),
        'isCompleted': isCompleted,
        'exerciseCompletionId': exerciseCompletionId,
        'positionInBlock': positionInBlock,
        'allInBlock': allInBlock,
      };

  @override
  List<Object?> get props => [
        ...super.props,
        exerciseId,
        blockId,
        blockStarted,
        blockEnding,
        checkInNextIn,
        isCompleted,
        exerciseCompletionId,
        positionInBlock,
        allInBlock,
      ];
}

class BlockFeedbackProgressStageModel extends ProgressStageModel {
  const BlockFeedbackProgressStageModel({
    required super.programProgressId,
    required super.programId,
    required this.blockFeedbackId,
    required this.blockId,
    this.blockFeedbackAnswerId,
  }) : super(progressStage: ProgressStageType.BlockFeedback);

  factory BlockFeedbackProgressStageModel.fromJson(Map<String, dynamic> json) {
    return BlockFeedbackProgressStageModel(
      programProgressId: json['programProgressId'] as String,
      programId: json['programId'] as String,
      blockFeedbackId: json['blockFeedbackId'] as String,
      blockId: json['blockId'] as String,
      blockFeedbackAnswerId: json['blockFeedbackAnswerId'] as String?,
    );
  }

  final String blockFeedbackId;
  final String blockId;
  final String? blockFeedbackAnswerId;

  @override
  Map<String, dynamic> toJson() => {
        'progressStage': progressStage.name,
        'programProgressId': programProgressId,
        'programId': programId,
        'blockFeedbackId': blockFeedbackId,
        'blockId': blockId,
        'blockFeedbackAnswerId': blockFeedbackAnswerId,
      };

  @override
  List<Object?> get props =>
      [...super.props, blockFeedbackId, blockId, blockFeedbackAnswerId];
}
