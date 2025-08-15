import 'package:equatable/equatable.dart';

sealed class ExerciseException extends Equatable {
  const ExerciseException();

  static ExerciseException tryParse(int? statusCode) {
    if (statusCode == null) {
      return const NetworkExerciseException();
    } else if (statusCode == 400) {
      return const ExerciseNotFoundException();
    } else if (statusCode >= 200 && statusCode < 300) {
      return const InvalidResponseCodeExerciseException();
    } else {
      return const UnknownExerciseException();
    }
  }

  @override
  List<Object?> get props => [];
}

class NetworkExerciseException extends ExerciseException {
  const NetworkExerciseException();
}

class InvalidResponseCodeExerciseException extends ExerciseException {
  const InvalidResponseCodeExerciseException();
}

class UnknownExerciseException extends ExerciseException {
  const UnknownExerciseException();
}

class ExerciseNotFoundException extends ExerciseException {
  const ExerciseNotFoundException();
}
