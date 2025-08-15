import 'package:equatable/equatable.dart';
import 'package:trueme/features/chatbot/data/models/message_model.dart';

class PaginatedChatHistoryModel extends Equatable {
  const PaginatedChatHistoryModel({
    required this.messages,
    required this.pagination,
  });

  factory PaginatedChatHistoryModel.fromJson(Map<String, dynamic> json) {
    return PaginatedChatHistoryModel(
      messages: json['messages'] != null
          ? (json['messages'] as List<dynamic>)
              .map((item) =>
                  PaginatedMessageModel.fromJson(item as Map<String, dynamic>),)
              .toList()
          : [],
      pagination: json['pagination'] != null
          ? PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>)
          : const PaginationModel(
              page: 1,
              pageSize: 10,
              totalPages: 1,
              totalMessages: 0,
            ),
    );
  }

  final List<PaginatedMessageModel> messages;
  final PaginationModel pagination;

  Map<String, dynamic> toJson() => {
        'messages': messages.map((e) => e.toJson()).toList(),
        'pagination': pagination.toJson(),
      };

  @override
  List<Object?> get props => [messages, pagination];
}

class PaginatedMessageModel extends Equatable {
  const PaginatedMessageModel({
    required this.role,
    required this.content,
    required this.timestamp,
  });

  factory PaginatedMessageModel.fromJson(Map<String, dynamic> json) {
    return PaginatedMessageModel(
      role: json['role'] as String,
      content: json['content'] as String,
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'] as String)
          : DateTime.now(),
    );
  }

  final String role;
  final String content;
  final DateTime timestamp;

  Map<String, dynamic> toJson() => {
        'role': role,
        'content': content,
        'timestamp': timestamp.toIso8601String(),
      };

  @override
  List<Object?> get props => [role, content, timestamp];

  // Convert to MessageModel for compatibility with existing UI
  MessageModel toMessageModel() {
    return MessageModel(
      message: content,
      authorType: role == 'user' ? 'User' : 'assistant',
      messageDate: timestamp,
    );
  }
}

class PaginationModel extends Equatable {
  const PaginationModel({
    required this.page,
    required this.pageSize,
    required this.totalPages,
    required this.totalMessages,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json) {
    return PaginationModel(
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      totalPages: json['totalPages'] as int,
      totalMessages: json['totalMessages'] as int,
    );
  }

  final int page;
  final int pageSize;
  final int totalPages;
  final int totalMessages;

  Map<String, dynamic> toJson() => {
        'page': page,
        'pageSize': pageSize,
        'totalPages': totalPages,
        'totalMessages': totalMessages,
      };

  @override
  List<Object?> get props => [page, pageSize, totalPages, totalMessages];
}
