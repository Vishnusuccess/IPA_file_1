import 'package:equatable/equatable.dart';

sealed class ChatHistoryException extends Equatable {
  const ChatHistoryException();

  static ChatHistoryException tryParse(int? statusCode) {
    if (statusCode == null) {
      return const NetworkChatHistoryException();
    } else if (statusCode == 404) {
      return const ChatHistoryNotFoundException();
    } else if (statusCode == 401) {
      return const UnauthorizedChatHistoryException();
    } else if (statusCode >= 200 && statusCode < 300) {
      return const InvalidResponseCodeChatHistoryException();
    } else {
      return const UnknownChatHistoryException();
    }
  }

  @override
  List<Object?> get props => [];
}

class NetworkChatHistoryException extends ChatHistoryException {
  const NetworkChatHistoryException();
}

class InvalidResponseCodeChatHistoryException extends ChatHistoryException {
  const InvalidResponseCodeChatHistoryException();
}

class UnknownChatHistoryException extends ChatHistoryException {
  const UnknownChatHistoryException();
}

class ChatHistoryNotFoundException extends ChatHistoryException {
  const ChatHistoryNotFoundException();
}

class UnauthorizedChatHistoryException extends ChatHistoryException {
  const UnauthorizedChatHistoryException();
}
