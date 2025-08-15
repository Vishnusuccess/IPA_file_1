import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/features/splash_screen/data/model/program_progress_exception.dart';
import 'package:trueme/features/splash_screen/data/model/progress_stage_model.dart';

@injectable
class ProgramProgressRepository {
  ProgramProgressRepository();

  static const programProgressEndpoint = '/api/ProgramProgress';
  static const startProgramEndpoint = '/api/ProgramProgress/Start';

  Future<Result<ProgressStageModel, ProgramProgressException>>
  fetchProgramProgress() async {
    try {
      AppLogger.dev('Starting fetchProgramProgress API call');

      // Explicit generic so inference is stable
      final response =
      await Api().backendDio.get<Map<String, dynamic>>(
        programProgressEndpoint,
      );

      AppLogger.dev('Program progress API call succeeded');

      final data = response.data;
      if (data == null) {
        AppLogger.dev('Response data is null');
        return const Result.failure(UnknownProgramProgressException());
      }

      try {
        final progress = ProgressStageModel.fromJson(data);
        return Result.success(progress);
      } catch (e, stackTrace) {
        AppLogger.dev('Error parsing ProgramProgress response: $e');

        final raw = data.toString();
        final trimmed = raw.length > 1000 ? raw.substring(0, 1000) : raw;

        await Sentry.captureException(
          Exception('ProgramProgressParseException: $e'),
          stackTrace: stackTrace,
          withScope: (scope) {
            scope
              ..setTag('endpoint', programProgressEndpoint)
              ..setContexts('program_progress', {
                'stage': 'parse_error',
                'endpoint': programProgressEndpoint,
                'method': 'GET',
                'raw_data': trimmed,
              });
          },
        );
        return const Result.failure(UnknownProgramProgressException());
      }
    } on DioException catch (e, stackTrace) {
      AppLogger.dev('DioException in fetchProgramProgress: ${e.message}');

      if (e.response?.statusCode == 404) {
        AppLogger.dev('Program progress not found (404) - New user');
        return const Result.failure(ProgramProgressNotFoundException());
      }

      final code = e.response?.statusCode;
      final dataStr = e.response?.data?.toString();
      final trimmed = (dataStr != null && dataStr.length > 1000)
          ? dataStr.substring(0, 1000)
          : dataStr;

      await Sentry.captureException(
        Exception('ProgramProgressFetchException: ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope
            ..setContexts('http_error', {
              'endpoint': programProgressEndpoint,
              'method': 'GET',
              'status_code': code,
              'response_data': trimmed,
              'request_path': e.requestOptions.path,
              'base_url': e.requestOptions.baseUrl,
              'query_params': e.requestOptions.queryParameters.toString(),
            })
            ..setTag('endpoint', programProgressEndpoint);
          if (code != null) scope.setTag('http.status_code', '$code');
        },
      );

      return Result.failure(
        ProgramProgressException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      AppLogger.dev('Unexpected error in fetchProgramProgress: $e');
      await Sentry.captureException(
        Exception('ProgramProgressFetchException: $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': programProgressEndpoint,
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownProgramProgressException());
    }
  }

  Future<Result<ProgressStageModel, ProgramProgressException>> startProgram()
  async {
    try {
      final response =
      await Api().backendDio.put<Map<String, dynamic>>(
        startProgramEndpoint,
        data: {
          'args': <String, dynamic>{},
        },
      );

      final progress = ProgressStageModel.fromJson(response.data!);
      return Result.success(progress);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final dataStr = e.response?.data?.toString();
      final trimmed = (dataStr != null && dataStr.length > 1000)
          ? dataStr.substring(0, 1000)
          : dataStr;

      await Sentry.captureException(
        Exception('ProgramStartException: ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope
            ..setContexts('http_error', {
              'endpoint': startProgramEndpoint,
              'method': 'PUT',
              'status_code': code,
              'response_data': trimmed,
              'request_path': e.requestOptions.path,
              'base_url': e.requestOptions.baseUrl,
              'query_params': e.requestOptions.queryParameters.toString(),
            })
            ..setTag('endpoint', startProgramEndpoint);
          if (code != null) scope.setTag('http.status_code', '$code');
        },
      );
      return Result.failure(
        ProgramProgressException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ProgramStartException: $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': startProgramEndpoint,
            'method': 'PUT',
          });
        },
      );
      return const Result.failure(UnknownProgramProgressException());
    }
  }
}
