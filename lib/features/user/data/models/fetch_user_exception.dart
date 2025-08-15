import 'package:equatable/equatable.dart';

sealed class FetchUserException extends Equatable {
  const FetchUserException();

  static FetchUserException tryParse(int? statusCode) {
    if (statusCode == null) {
      return const NetworkFetchUserException();
    } else if (statusCode == 400) {
      return const UserNotExistingException();
    } else if (statusCode >= 200 && statusCode < 300) {
      return const InvalidResponseCodeFetchUserException();
    } else {
      return const UnknownFetchUserException();
    }
  }

  @override
  List<Object?> get props => [];
}

class NetworkFetchUserException extends FetchUserException {
  const NetworkFetchUserException();
}

class InvalidResponseCodeFetchUserException extends FetchUserException {
  const InvalidResponseCodeFetchUserException();
}

class UnknownFetchUserException extends FetchUserException {
  const UnknownFetchUserException();
}

class UserNotExistingException extends FetchUserException {
  const UserNotExistingException();
}
