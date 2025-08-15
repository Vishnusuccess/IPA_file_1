import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';

abstract class TesterService {
  Future<Result<Unit, ResetChatException>> resetChat();
  Future<Result<Unit, ResetProgressException>> resetProgress();
}

@Injectable(as: TesterService)
class TesterServiceImpl implements TesterService {
  TesterServiceImpl();

  static const testEndpoint = '/api/Test';

  @override
  Future<Result<Unit, ResetChatException>> resetChat() async {
    try {
      await Api().backendDio.post<void>('$testEndpoint/ResetChat');
      return const Result.success(unit);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ResetChatException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('status_code', e.response?.statusCode)
          ..setContexts('response_data', e.response?.data?.toString())
          ..setTag('endpoint', '$testEndpoint/ResetChat');
        },
      );
      return Result.failure(
          ResetChatException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ResetChatException: Unexpected error - $e'),
        stackTrace: stackTrace,
      );
      return Result.failure(UnknownResetChatException());
    }
  }

  @override
  Future<Result<Unit, ResetProgressException>> resetProgress() async {
    try {
      await Api().backendDio.post<void>('$testEndpoint/ResetProgress');
      return const Result.success(unit);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ResetProgressException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('status_code', e.response?.statusCode)
            ..setContexts('response_data', e.response?.data?.toString())
          ..setTag('endpoint', '$testEndpoint/ResetProgress');
        },
      );
      return Result.failure(
          ResetProgressException.tryParse(e.response?.statusCode),);
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ResetProgressException: Unexpected error - $e'),
        stackTrace: stackTrace,
      );
      return Result.failure(UnknownResetProgressException());
    }
  }
}

sealed class ResetChatException {
  static ResetChatException tryParse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return BadRequestResetChatException();
      case 401:
        return UnauthorizedResetChatException();
      default:
        return UnknownResetChatException();
    }
  }
}

class BadRequestResetChatException extends ResetChatException {}

class UnauthorizedResetChatException extends ResetChatException {}

class UnknownResetChatException extends ResetChatException {}

sealed class ResetProgressException {
  static ResetProgressException tryParse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return BadRequestResetProgressException();
      case 401:
        return UnauthorizedResetProgressException();
      default:
        return UnknownResetProgressException();
    }
  }
}

class BadRequestResetProgressException extends ResetProgressException {}

class UnauthorizedResetProgressException extends ResetProgressException {}

class UnknownResetProgressException extends ResetProgressException {}
