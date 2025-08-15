import 'package:equatable/equatable.dart';

class StringImpactMetricModel extends Equatable {
  const StringImpactMetricModel({
    required this.programId,
    this.question,
  });

  factory StringImpactMetricModel.fromJson(Map<String, dynamic> json) {
    return StringImpactMetricModel(
      programId: json['programId'] as String,
      question: json['question'] as String?,
    );
  }

  final String programId;
  final String? question;

  Map<String, dynamic> toJson() => {
        'programId': programId,
        'question': question,
      };

  @override
  List<Object?> get props => [programId, question];
}
