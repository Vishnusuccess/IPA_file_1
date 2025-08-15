import 'package:equatable/equatable.dart';

sealed class BlockFeedbackException extends Equatable {
  const BlockFeedbackException();

  static BlockFeedbackException tryParse(int? statusCode) {
    if (statusCode == null) {
      return const NetworkBlockFeedbackException();
    } else if (statusCode == 400) {
      return const BlockFeedbackNotExistingException();
    } else if (statusCode == 404) {
      return const BlockFeedbackNotFoundException();
    } else if (statusCode >= 200 && statusCode < 300) {
      return const InvalidResponseCodeBlockFeedbackException();
    } else {
      return const UnknownBlockFeedbackException();
    }
  }

  @override
  List<Object?> get props => [];
}

class NetworkBlockFeedbackException extends BlockFeedbackException {
  const NetworkBlockFeedbackException();
}

class InvalidResponseCodeBlockFeedbackException extends BlockFeedbackException {
  const InvalidResponseCodeBlockFeedbackException();
}

class UnknownBlockFeedbackException extends BlockFeedbackException {
  const UnknownBlockFeedbackException();
}

class BlockFeedbackNotFoundException extends BlockFeedbackException {
  const BlockFeedbackNotFoundException();
}

class BlockFeedbackNotExistingException extends BlockFeedbackException {
  const BlockFeedbackNotExistingException();
}
