import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/features/chatbot/data/models/report_issue_model.dart';

@injectable
class ReportIssueService {
  ReportIssueService();

  Future<Result<bool, String>> reportIssue(ReportIssueRequest request) async {
    try {
      await Api().backendDio.post<void>(
            '/api/Report/Issue',
            data: request.toJson(),
          );

      return const Result.success(true);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ReportIssueException: DioError - ${e.message}'),
        stackTrace: stackTrace,
          withScope: (scope) {
            final code = e.response?.statusCode;
            final dataStr = e.response?.data?.toString();
            final trimmed = (dataStr != null && dataStr.length > 1000)
                ? dataStr.substring(0, 1000)
                : dataStr;
            scope.setContexts('http_error', {
              'endpoint': '/api/Report/Issue',
              'method': 'POST', // change if not POST
              'status_code': code,
              'response_data': trimmed,
              'request_path': e.requestOptions.path,
              'base_url': e.requestOptions.baseUrl,
              'query_params': e.requestOptions.queryParameters.toString(),
            });

            if (code != null) scope.setTag('http.status_code', '$code');
            scope.setTag('endpoint', '/api/Report/Issue');
          },
      );

      final msg = (e.response?.data
      as Map<String, dynamic>?)?['message']?.toString();

      return Result.failure(
        msg ?? 'Failed to submit report',
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ReportIssueException: Unexpected error - $e'),
        stackTrace: stackTrace,
      );

      return const Result.failure('An unexpected error occurred');
    }
  }
}
