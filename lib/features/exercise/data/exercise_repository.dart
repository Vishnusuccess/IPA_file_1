import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/features/chatbot/data/models/checkin_timer_model.dart';
import 'package:trueme/features/exercise/data/models/answer_exercise_completion_args.dart';
import 'package:trueme/features/exercise/data/models/answer_exercise_model.dart';
import 'package:trueme/features/exercise/data/models/exercise_completion_args_base.dart';
import 'package:trueme/features/exercise/data/models/exercise_completion_model/exercise_completion_model.dart';
import 'package:trueme/features/exercise/data/models/exercise_exception.dart';
import 'package:trueme/features/exercise/data/models/string_multi_select_exercise_model.dart';

@injectable
class ExerciseRepository {
  ExerciseRepository();

  static const exerciseUrl = '/api/Exercise/{exerciseId}';
  static const exerciseCompletionUrl = '/api/ExerciseCompletion';

  Future<Result<dynamic, ExerciseException>> fetchExercise({
    required String exerciseId,
  }) async {
    try {
      final response = await Api().backendDio.get<Map<String, dynamic>>(
            exerciseUrl.replaceFirst('{exerciseId}', exerciseId),
          );

      final data = response.data;
      if (data != null) {
        final exerciseTypeStr = data['exerciseType'] as String?;

        if (exerciseTypeStr == 'Answer') {
          final exercise = AnswerExerciseModel.fromJson(data);
          return Result.success(exercise);
        } else {
          final exercise = StringMultiSelectExerciseModel.fromJson(data);
          return Result.success(exercise);
        }
      } else {
        return const Result.failure(InvalidResponseCodeExerciseException());
      }
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ExerciseFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('exercise_id', exerciseId)
          ..setContexts('status_code', e.response?.statusCode)
          ..setContexts('response_data', e.response?.data?.toString());
        },
      );
      return Result.failure(
        ExerciseException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ExerciseFetchException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('exercise', {
            'exercise_id': exerciseId,
          })
          // Optional: easier filtering in Sentry
          ..setTag('exercise_id', exerciseId);
        },

      );
      return const Result.failure(UnknownExerciseException());
    }
  }

  Future<Result<ExerciseCompletionModel, ExerciseException>>
      completeExerciseGeneric(ExerciseCompletionArgsBase args) async {
    try {
      final data = args.toJson();
      final response = await Api().backendDio.put<Map<String, dynamic>>(
            exerciseCompletionUrl,
            data: data,
          );

      final responseData = response.data!;
      final exerciseCompletion = ExerciseCompletionModel.fromJson(responseData);
      return Result.success(exerciseCompletion);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ExerciseCompleteException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('api_error',
            {
              'exercise_id': args.exerciseId,
              'status_code': e.response?.statusCode,
              'response_data': e.response?.data?.toString(),
            }
          );
        },
      );
      return Result.failure(
        ExerciseException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'ExerciseCompleteException: Unexpected error - $e',),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('exercise', {'exercise_id': args.exerciseId});
        },
      );
      return const Result.failure(UnknownExerciseException());
    }
  }

  Future<Result<ExerciseCompletionModel, ExerciseException>>
      completeAnswerExercise(AnswerExerciseCompletionArgs args) async {
    return completeExerciseGeneric(args);
  }

  Future<Result<ExerciseCompletionModel, ExerciseException>> exerciseCompletion(
    String exerciseCompletionId,
  ) async {
    try {
      final response = await Api().backendDio.get<Map<String, dynamic>>(
            '$exerciseCompletionUrl/$exerciseCompletionId',
          );

      final data = response.data!;
      final exerciseCompletion = ExerciseCompletionModel.fromJson(data);
      return Result.success(exerciseCompletion);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ExerciseCompletionFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
          withScope: (scope) {
            scope.setContexts('exercise_completion', {
              'exercise_completion_id': exerciseCompletionId,
              'status_code': e.response?.statusCode,
              'response_data': e.response?.data?.toString(),
            });

            final code = e.response?.statusCode;
            if (code != null) {
              scope.setTag('http.status_code', '$code');
            }
          },
      );
      return Result.failure(
        ExerciseException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'ExerciseCompletionFetchException: Unexpected error - $e',),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('exercise completeion',
            {'exercise_completion_id': exerciseCompletionId,},);
        },
      );
      return const Result.failure(UnknownExerciseException());
    }
  }

  Future<Result<List<String>, ExerciseException>> fetchEmotions() async {
    try {
      final response =
      await Api().backendDio.get<List<dynamic>>(
        '/emotions',
        options: Options(headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
        },),
      );

      final data = response.data;
      if (data is List) {
        final emotions = data.map((e) => e.toString()).toList(growable: false);
        return Result.success(emotions);
      } else {
        debugPrint('🔥 Invalid response format - not a List: $data');
        return const Result.failure(InvalidResponseCodeExerciseException());
      }
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final dataStr = e.response?.data?.toString();
      final trimmed = (dataStr != null && dataStr.length > 1000)
          ? dataStr.substring(0, 1000)
          : dataStr;

      await Sentry.captureException(
        Exception('EmotionsFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/emotions',
            'method': 'GET',
            'status_code': code,
            'response_data': trimmed,
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/emotions');
        },
      );
      return Result.failure(ExerciseException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('EmotionsFetchException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/emotions',
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownExerciseException());
    }
  }

  Future<Result<CheckinTimerModel, ExerciseException>> fetchCheckinTimer({
    required String stage,
    required int dailyPromptDay,
    int? secondsUntilNextCheckin,
  }) async {
    final requestBody = {
      'stage': stage,
      'daily_prompt_day': dailyPromptDay,
      if (secondsUntilNextCheckin != null)
        'seconds_until_next_checkin': secondsUntilNextCheckin,
    };
    try {
      final response = await Api().backendDio.post<Map<String, dynamic>>(
            '/checkin/timer',
            data: requestBody,
            options: Options(headers: {
              'Content-Type': 'application/json',
              'accept': 'application/json',
            },),
          );
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return Result.success(CheckinTimerModel.fromJson(data));
      } else {
        return const Result.failure(InvalidResponseCodeExerciseException());
      }
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('CheckinTimerFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
          withScope: (scope) {
            final code = e.response?.statusCode;
            final dataStr = e.response?.data?.toString();
            scope.setContexts('http_error', {
              'endpoint': '/checkin/timer',
              'status_code': code,
              'response_data': dataStr,
            });
            // Optional tags for search/grouping
            if (code != null) scope.setTag('http.status_code', '$code');
            scope.setTag('endpoint', '/checkin/timer');
          },

      );
      return Result.failure(ExerciseException.tryParse(e.response?.statusCode));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'CheckinTimerFetchException: Unexpected error - $e',),
        stackTrace: stackTrace,
          withScope: (scope) {
          scope.setContexts('http', {
              'endpoint': '/checkin/timer',
            });
          },
      );
      return const Result.failure(UnknownExerciseException());
    }
  }
}
