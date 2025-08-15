import 'package:equatable/equatable.dart';

class ChatStageResponse extends Equatable {
  const ChatStageResponse(
      {required this.message,
      required this.stage,
      this.stageHint, // non required, some hint stages are null
      });

  factory ChatStageResponse.fromJson(Map<String, dynamic> json) {
    return ChatStageResponse(
      message: json['response'] as String? ?? json['reply'] as String? ?? '',
      stage: json['stage'] as String? ?? 'normal_chat',
      stageHint: json['stage_hint'] as String?,
    );
  }

  final String message;
  final String stage;
  final String? stageHint;
  Map<String, dynamic> toJson() => {
        'message': message,
        'stage': stage,
        'stage_hint': stageHint,
      };

  @override
  List<Object?> get props => [message, stage, stageHint];
}

enum ChatStage {
  onboardingIntro('onboarding_intro'),
  onboardingCalmness('onboarding_calmness'),
  onboardingEmotion('onboarding_emotion'),
  normalChat('normal_chat'),
  periodicProgramInfo('periodic_program_info'),
  periodicCheckinEmotion('periodic_checkin_emotion'),
  feedbackPending('feedback_pending'),
  finalCalmness('final_calmness'),
  reportReady('report_ready'),
  chatCompleted('chat_completed');

  const ChatStage(this.value);
  final String value;

  static ChatStage fromString(String value) {
    for (final stage in ChatStage.values) {
      if (stage.value == value) {
        return stage;
      }
    }
    return ChatStage.normalChat; // default fallback
  }

  bool get isCalmnessStage =>
      this == ChatStage.onboardingCalmness || this == ChatStage.finalCalmness;

  bool get isProgramInfoStage => this == ChatStage.periodicProgramInfo;

  bool get isEmotionStage =>
      this == ChatStage.onboardingEmotion ||
      this == ChatStage.periodicCheckinEmotion;

  bool get isFeedbackStage => this == ChatStage.feedbackPending;

  bool get isChatStage =>
      this == ChatStage.normalChat || this == ChatStage.onboardingIntro;
}
