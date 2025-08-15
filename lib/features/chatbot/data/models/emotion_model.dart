import 'package:equatable/equatable.dart';

class EmotionsResponse extends Equatable {
  const EmotionsResponse({
    required this.emotions,
  });

  factory EmotionsResponse.fromJson(List<dynamic> json) {
    return EmotionsResponse(
      emotions: json.map((item) => item as String).toList(),
    );
  }

  final List<String> emotions;

  List<dynamic> toJson() => emotions;

  @override
  List<Object?> get props => [emotions];
}

class UiTextResponse extends Equatable {
  const UiTextResponse({
    required this.moodCheck,
    required this.calmnessCheck,
    required this.feedback,
  });

  factory UiTextResponse.fromJson(Map<String, dynamic> json) {
    return UiTextResponse(
      moodCheck: Map<String, dynamic>.from(json['mood_check'] as Map),
      calmnessCheck: Map<String, dynamic>.from(json['calmness_check'] as Map),
      feedback: Map<String, dynamic>.from(json['feedback'] as Map),
    );
  }

  final Map<String, dynamic> moodCheck;
  final Map<String, dynamic> calmnessCheck;
  final Map<String, dynamic> feedback;

  Map<String, dynamic> toJson() => {
        'mood_check': moodCheck,
        'calmness_check': calmnessCheck,
        'feedback': feedback,
      };

  @override
  List<Object?> get props => [moodCheck, calmnessCheck, feedback];
}
