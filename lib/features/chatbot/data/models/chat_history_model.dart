import 'package:equatable/equatable.dart';
import 'package:trueme/features/chatbot/data/models/message_model.dart';

class ChatHistoryModel extends Equatable {
  const ChatHistoryModel({
    required this.userId,
    required this.chatHistory,
    required this.userState,
  });

  factory ChatHistoryModel.fromJson(Map<String, dynamic> json) {
    return ChatHistoryModel(
      userId: json['user_id'] as String,
      chatHistory: json['chat_history'] != null
          ? (json['chat_history'] as List<dynamic>)
              .map((item) => ChatHistoryMessageModel.fromJson(
                  item as Map<String, dynamic>,),)
              .toList()
          : [],
      userState: json['user_state'] != null
          ? ChatUserStateModel.fromJson(
              json['user_state'] as Map<String, dynamic>,)
          : null,
    );
  }

  final String userId;
  final List<ChatHistoryMessageModel> chatHistory;
  final ChatUserStateModel? userState;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'chat_history': chatHistory.map((e) => e.toJson()).toList(),
        'user_state': userState?.toJson(),
      };

  @override
  List<Object?> get props => [userId, chatHistory, userState];
}

class ChatHistoryMessageModel extends Equatable {
  const ChatHistoryMessageModel({
    required this.role,
    required this.content,
  });

  factory ChatHistoryMessageModel.fromJson(Map<String, dynamic> json) {
    return ChatHistoryMessageModel(
      role: json['role'] as String,
      content: json['content'] as String,
    );
  }

  final String role;
  final String content;

  Map<String, dynamic> toJson() => {
        'role': role,
        'content': content,
      };

  @override
  List<Object?> get props => [role, content];

  // Convert to MessageModel for compatibility with existing UI
  MessageModel toMessageModel() {
    return MessageModel(
      message: content,
      authorType: role == 'user' ? 'User' : 'AI',
      messageDate: DateTime.now(), // Since API doesn't provide timestamps
    );
  }
}

class ChatUserStateModel extends Equatable {
  const ChatUserStateModel({
    this.dailyPromptDay,
    this.introSent,
    this.calmLevel,
    this.emotions,
    this.stage,
    this.turnCount,
    this.askedQuestionLastTurn,
    this.lastHumorTurn,
    this.greetedAfterEmotions,
  });

  factory ChatUserStateModel.fromJson(Map<String, dynamic> json) {
    return ChatUserStateModel(
      dailyPromptDay: json['daily_prompt_day'] as int?,
      introSent: json['intro_sent'] as bool?,
      calmLevel: json['calm_level'],
      emotions: json['emotions'],
      stage: json['stage'] as String?,
      turnCount: json['turn_count'] as int?,
      askedQuestionLastTurn: json['asked_question_last_turn'] as bool?,
      lastHumorTurn: json['last_humor_turn'] as int?,
      greetedAfterEmotions: json['greeted_after_emotions'] as bool?,
    );
  }

  final int? dailyPromptDay;
  final bool? introSent;
  final dynamic calmLevel;
  final dynamic emotions;
  final String? stage;
  final int? turnCount;
  final bool? askedQuestionLastTurn;
  final int? lastHumorTurn;
  final bool? greetedAfterEmotions;

  Map<String, dynamic> toJson() => {
        'daily_prompt_day': dailyPromptDay,
        'intro_sent': introSent,
        'calm_level': calmLevel,
        'emotions': emotions,
        'stage': stage,
        'turn_count': turnCount,
        'asked_question_last_turn': askedQuestionLastTurn,
        'last_humor_turn': lastHumorTurn,
        'greeted_after_emotions': greetedAfterEmotions,
      };

  @override
  List<Object?> get props => [
        dailyPromptDay,
        introSent,
        calmLevel,
        emotions,
        stage,
        turnCount,
        askedQuestionLastTurn,
        lastHumorTurn,
        greetedAfterEmotions,
      ];
}
