// program_progress_exception.dart
import 'package:equatable/equatable.dart';

sealed class ProgramProgressException extends Equatable {
  const ProgramProgressException();

  static ProgramProgressException tryParse(int? statusCode) {
    if (statusCode == null) {
      return const NetworkProgramProgressException();
    } else if (statusCode == 400) {
      return const ProgramProgressNotExistingException();
    } else if (statusCode == 404) {
      return const ProgramProgressNotFoundException();
    } else if (statusCode >= 200 && statusCode < 300) {
      return const InvalidResponseCodeProgramProgressException();
    } else {
      return const UnknownProgramProgressException();
    }
  }

  @override
  List<Object?> get props => [];
}

class NetworkProgramProgressException extends ProgramProgressException {
  const NetworkProgramProgressException();
}

class InvalidResponseCodeProgramProgressException
    extends ProgramProgressException {
  const InvalidResponseCodeProgramProgressException();
}

class UnknownProgramProgressException extends ProgramProgressException {
  const UnknownProgramProgressException();
}

class ProgramProgressNotFoundException extends ProgramProgressException {
  const ProgramProgressNotFoundException();
}

class ProgramProgressNotExistingException extends ProgramProgressException {
  const ProgramProgressNotExistingException();
}
