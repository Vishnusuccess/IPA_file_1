import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/features/impact_metric/data/model/model.dart';

@injectable
class ImpactMetricRepository {
  ImpactMetricRepository();

  Future<Result<StringImpactMetricModel, ImpactMetricException>>
      getImpactMetric(String programId) async {
    try {
      final response = await Api().backendDio.get<Map<String, dynamic>>(
            '/api/Program/$programId/ImpactMetric',
          );

      final impactMetricData = response.data!;
      final impactMetric = StringImpactMetricModel.fromJson(impactMetricData);
      return Result.success(impactMetric);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ImpactMetricFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('program_id', programId)
          ..setContexts('status_code', e.response?.statusCode)
          ..setContexts('response_data', e.response?.data?.toString())
          ..setTag('endpoint', '/api/Program/$programId/ImpactMetric');
        },
      );
      return Result.failure(
          ImpactMetricException.tryParse(e.response?.statusCode),);
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'ImpactMetricFetchException: Unexpected error - $e',),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('program_id', programId);
        },
      );
      return const Result.failure(UnknownImpactMetricException());
    }
  }

  Future<Result<ImpactMetricAnswerModel, ImpactMetricException>>
      impactMetricAnswerStart({
    required int value,
    required String programProgressId,
    required String stage,
  }) async {
    try {
      final response = await Api().backendDio.put<Map<String, dynamic>>(
        '/api/ImpactMetricAnswer',
        data: {
          'programProgressId': programProgressId,
          'value': value,
          'stage': stage,
        },
      );

      final answerData = response.data!;
      final answer = ImpactMetricAnswerModel.fromJson(answerData);
      return Result.success(answer);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ImpactMetricAnswerException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('program_progress_id', programProgressId)
          ..setContexts('value', value)
          ..setContexts('stage', stage)
          ..setContexts('status_code', e.response?.statusCode)
          ..setContexts('response_data', e.response?.data?.toString())
          ..setTag('endpoint', '/api/ImpactMetricAnswer');
        },
      );
      return Result.failure(
          ImpactMetricException.tryParse(e.response?.statusCode),);
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'ImpactMetricAnswerException: Unexpected error - $e',),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('program_progress_id', programProgressId)
          ..setContexts('value', value)
          ..setContexts('stage', stage);
        },
      );
      return const Result.failure(UnknownImpactMetricException());
    }
  }
}
