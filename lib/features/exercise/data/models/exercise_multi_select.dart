class ExerciseMultiSelect {
  ExerciseMultiSelect({
    required this.question,
    required this.possibleAnswers,
    required this.exerciseId,
    required this.exerciseType,
    required this.exerciseTitle,
  });

  factory ExerciseMultiSelect.fromJson(Map<String, dynamic> json) {
    if (json['question'] == null ||
        json['possibleAnswers'] == null ||
        json['exerciseId'] == null ||
        json['exerciseType'] == null ||
        json['exerciseTitle'] == null) {
      throw const FormatException(
        'Missing required fields in ExerciseMultiSelect',
      );
    }

    return ExerciseMultiSelect(
      question: json['question'] as String,
      possibleAnswers: (json['possibleAnswers'] as List<dynamic>)
          .map((item) => PossibleAnswer.fromJson(item as Map<String, dynamic>))
          .toList(),
      exerciseId: json['exerciseId'] as String,
      exerciseType: json['exerciseType'] as String,
      exerciseTitle: json['exerciseTitle'] as String,
    );
  }

  final String question;
  final List<PossibleAnswer> possibleAnswers;
  final String exerciseId;
  final String exerciseType;
  final String exerciseTitle;

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'possibleAnswers': possibleAnswers.map((item) => item.toJson()).toList(),
      'exerciseId': exerciseId,
      'exerciseType': exerciseType,
      'exerciseTitle': exerciseTitle,
    };
  }
}

class PossibleAnswer {
  PossibleAnswer({
    required this.name,
    required this.value,
  });

  factory PossibleAnswer.fromJson(Map<String, dynamic> json) {
    // Validate required fields
    if (json['name'] == null || json['value'] == null) {
      throw const FormatException('Missing required fields in PossibleAnswer');
    }

    return PossibleAnswer(
      name: json['name'] as String,
      value: json['value'] as String,
    );
  }

  final String name;
  final String value;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}
