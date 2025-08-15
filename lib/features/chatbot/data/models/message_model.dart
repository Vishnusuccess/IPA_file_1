class MessageModel {
  MessageModel({
    this.messageId,
    this.message,
    this.authorType,
    this.messageDate,
    this.aiThinking = false, // Default to false
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    DateTime? parsed;
    final raw = json['messageDate'] as String?;
    if (raw != null) {
      try {
        parsed = DateTime.parse(raw).toUtc();
      } catch (_) {
        parsed = null;
      }
    }

    return MessageModel(
      messageId: json['messageId'] as String?,
      message: json['message'] as String?,
      authorType: json['authorType'] as String?,
      messageDate: parsed,
      aiThinking: json['aiThinking'] as bool? ?? false,
    );
  }

  final String? messageId;
  final String? message;
  final String? authorType;
  final DateTime? messageDate;
  final bool aiThinking;

  Map<String, dynamic> toJson() {
    return {
      'messageId': messageId,
      'message': message,
      'authorType': authorType,
      'messageDate': messageDate?.toIso8601String(),
      'aiThinking': aiThinking,
    };
  }

  MessageModel copyWith({
    String? messageId,
    String? message,
    String? authorType,
    DateTime? messageDate,
    bool? aiThinking,
  }) {
    return MessageModel(
      messageId: messageId ?? this.messageId,
      message: message ?? this.message,
      authorType: authorType ?? this.authorType,
      messageDate: messageDate ?? this.messageDate,
      aiThinking: aiThinking ?? this.aiThinking,
    );
  }
}
