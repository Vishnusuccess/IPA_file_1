// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

enum ImpactMetricStage { Start, End }

class ImpactMetricAnswerModel extends Equatable {
  const ImpactMetricAnswerModel({
    required this.programProgressId,
    required this.stage,
    required this.value,
    this.impactMetricAnswerId,
  });

  factory ImpactMetricAnswerModel.fromJson(Map<String, dynamic> json) {
    return ImpactMetricAnswerModel(
      impactMetricAnswerId: json['impactMetricAnswerId'] as String?,
      programProgressId: json['programProgressId'] as String,
      stage: ImpactMetricStage.values.firstWhere(
        (e) => e.name == json['stage'],
        orElse: () => throw Exception('Invalid stage value: ${json['stage']}'),
      ),
      value: json['value'] as int,
    );
  }

  final String? impactMetricAnswerId;
  final String programProgressId;
  final ImpactMetricStage stage;
  final int value;

  Map<String, dynamic> toJson() => {
        if (impactMetricAnswerId != null)
          'impactMetricAnswerId': impactMetricAnswerId,
        'programProgressId': programProgressId,
        'stage': stage.name,
        'value': value,
      };

  @override
  List<Object?> get props => [
        impactMetricAnswerId,
        programProgressId,
        stage,
        value,
      ];
}
