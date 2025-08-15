import 'package:equatable/equatable.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';

class ChatStatusResponse extends Equatable {
  const ChatStatusResponse(
      {required this.stage,
      required this.message,
      this.lastCheckinAt,
      this.lastProgramInfoAt,
      this.dailyPromptDay,
      this.secondsUntilNextCheckin,
      this.hintStage,});

  factory ChatStatusResponse.fromJson(Map<String, dynamic> json) {
    return ChatStatusResponse(
      stage: json['stage'] as String,
      hintStage: json['stage_hint'] as String?,
      message: json['message'] as String,
      lastCheckinAt: json['last_checkin_at'] != null
          ? DateTime.parse(json['last_checkin_at'] as String)
          : null,
      lastProgramInfoAt: json['last_program_info_at'] != null
          ? DateTime.parse(json['last_program_info_at'] as String)
          : null,
      dailyPromptDay: json['daily_prompt_day'] as int?,
      secondsUntilNextCheckin: json['seconds_until_next_checkin'] as int?,
    );
  }

  final String stage;
  final String message;
  final DateTime? lastCheckinAt;
  final DateTime? lastProgramInfoAt;
  final int? dailyPromptDay;
  final int? secondsUntilNextCheckin;
  final String? hintStage; // non required

  ChatStage get chatStage => ChatStage.fromString(stage);
  ChatStage? get chatHintStage =>
      hintStage != null ? ChatStage.fromString(hintStage!) : null;

  /// Calculate target time for next checkin based on seconds until next checkin
  DateTime? get nextCheckinTime {
    if (secondsUntilNextCheckin == null || secondsUntilNextCheckin! <= 0) {
      return null;
    }
    return DateTime.now().add(Duration(seconds: secondsUntilNextCheckin!));
  }

  Map<String, dynamic> toJson() => {
        'stage': stage,
        'stage_hint': hintStage,
        'message': message,
        'last_checkin_at': lastCheckinAt?.toIso8601String(),
        'last_program_info_at': lastProgramInfoAt?.toIso8601String(),
        'daily_prompt_day': dailyPromptDay,
        'seconds_until_next_checkin': secondsUntilNextCheckin,
      };

  @override
  List<Object?> get props => [
        stage,
        message,
        lastCheckinAt,
        lastProgramInfoAt,
        dailyPromptDay,
        secondsUntilNextCheckin,
        hintStage,
      ];
}
