import 'package:dio/dio.dart';

enum NetworkErrorType { server, notFound, decoding, timeOut, response, generic }

class NetworkError {
  NetworkError({
    required dynamic message,
    this.type = NetworkErrorType.generic,
    this.originalError,
  }) : message = message is List<String> ? message : [message.toString()];

  factory NetworkError.server() => NetworkError(
        message: ['A server error occurred'],
        type: NetworkErrorType.server,
      );

  factory NetworkError.notFound() => NetworkError(
        message: ['Resource not found'],
        type: NetworkErrorType.notFound,
      );

  factory NetworkError.decoding() => NetworkError(
        message: ['Error decoding response'],
        type: NetworkErrorType.decoding,
      );

  factory NetworkError.timeOut() => NetworkError(
        message: ['Request timed out'],
        type: NetworkErrorType.timeOut,
      );

  factory NetworkError.response({required dynamic message}) => NetworkError(
        message: message is List<String>
            ? message
            : message is String
                ? [message]
                : [message.toString()],
        type: NetworkErrorType.response,
      );

  final List<String> message;
  final NetworkErrorType type;
  final Object? originalError;

  // Helper to get a single message string if needed
  String get firstMessage => message.isNotEmpty ? message.first : '';
}

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() => 'Invalid request';
}

class TimeOutException extends DioException {
  TimeOutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() =>
      'The request took too long to respond. '
          'Please try again later, and ensure a stable internet connection.';
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() =>
      'A problem occurred on our server. Try again later, or contact support.';
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r, Response<dynamic>? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() => 'The requested information could not be found';

  Response<dynamic>? getResponse() => response;
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() =>
      'Your device is not connected to the internet.'
          ' Please check your connection and try again.';
}

class OtherException extends DioException {
  OtherException(this.err) : super(requestOptions: err.requestOptions);
  DioException err;

  @override
  String toString() => err.toString();
}
