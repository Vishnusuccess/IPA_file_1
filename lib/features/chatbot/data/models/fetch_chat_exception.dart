class FetchChatException implements Exception {
  const FetchChatException();

  factory FetchChatException.tryParse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return const BadRequestChatException();
      case 401:
        return const UnauthorizedChatException();
      case 500:
        return const ServerErrorChatException();
      default:
        return const UnknownChatException();
    }
  }
}

class BadRequestChatException extends FetchChatException {
  const BadRequestChatException();
}

class UnauthorizedChatException extends FetchChatException {
  const UnauthorizedChatException();
}

class ServerErrorChatException extends FetchChatException {
  const ServerErrorChatException();
}

class UnknownChatException extends FetchChatException {
  const UnknownChatException();
}
