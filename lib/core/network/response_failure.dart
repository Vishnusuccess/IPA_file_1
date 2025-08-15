import 'package:dio/dio.dart';
import 'package:trueme/core/network/auth_error.dart';
import 'package:trueme/core/network/network_error.dart';

class ResponseFailure {
  static NetworkError mapExceptionToNetworkFailure(dynamic exception) {
    switch (exception.runtimeType) {
      case InternalServerErrorException:
        return NetworkError.server();
      case NoInternetConnectionException:
        final noInternetConnectionException =
            exception as NoInternetConnectionException;
        return NetworkError(
            message: [noInternetConnectionException.toString()],);
      case TimeOutException:
        return NetworkError.timeOut();
      case NotFoundException:
        return NetworkError.notFound();
      case DioException:
        return NetworkError.server();
      default:
        return NetworkError.server();
    }
  }
}

class AuthFailure {
  static AuthError mapExceptionToAuthFailure(dynamic exception) {
    switch (exception.runtimeType) {
      case InternalServerErrorException:
        return AuthError.server();
      case DioException:
        return AuthError.server();
      default:
        return AuthError.decoding();
    }
  }
}
