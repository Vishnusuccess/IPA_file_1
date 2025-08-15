import 'package:equatable/equatable.dart';

sealed class ImpactMetricException extends Equatable {
  const ImpactMetricException();

  static ImpactMetricException tryParse(int? statusCode) {
    if (statusCode == null) {
      return const NetworkImpactMetricException();
    } else if (statusCode == 400) {
      return const ImpactMetricNotExistingException();
    } else if (statusCode == 404) {
      return const ImpactMetricNotFoundException();
    } else if (statusCode >= 200 && statusCode < 300) {
      return const InvalidResponseCodeImpactMetricException();
    } else {
      return const UnknownImpactMetricException();
    }
  }

  @override
  List<Object?> get props => [];
}

class NetworkImpactMetricException extends ImpactMetricException {
  const NetworkImpactMetricException();
}

class InvalidResponseCodeImpactMetricException extends ImpactMetricException {
  const InvalidResponseCodeImpactMetricException();
}

class UnknownImpactMetricException extends ImpactMetricException {
  const UnknownImpactMetricException();
}

class ImpactMetricNotFoundException extends ImpactMetricException {
  const ImpactMetricNotFoundException();
}

class ImpactMetricNotExistingException extends ImpactMetricException {
  const ImpactMetricNotExistingException();
}
