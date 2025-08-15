// block_feedback_repository.dart
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/features/feedback/data/models/block_feedback_answer_args.dart';
import 'package:trueme/features/feedback/data/models/block_feedback_exception.dart';
import 'package:trueme/features/feedback/data/models/string_block_feedback_model.dart';

@injectable
class BlockFeedbackRepository {
  BlockFeedbackRepository();

  static const blockFeedbackUrl = '/api/BlockFeedback/{blockFeedbackId}';
  static const blockFeedbackAnswerUrl = '/api/BlockFeedbackAnswer';

  Future<Result<StringBlockFeedbackModel, BlockFeedbackException>>
      getBlockFeedback({
    required String blockFeedbackId,
  }) async {
    try {
      final response = await Api().backendDio.get<Map<String, dynamic>>(
            blockFeedbackUrl.replaceFirst('{blockFeedbackId}', blockFeedbackId),
          );


      final data = response.data;
      if (data != null) {
        final blockFeedback = StringBlockFeedbackModel.fromJson(data);
        return Result.success(blockFeedback);
      } else {
        return const Result.failure(
            InvalidResponseCodeBlockFeedbackException(),);
      }
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('BlockFeedbackFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('block_feedback_id', blockFeedbackId)
          ..setContexts('status_code', e.response?.statusCode)
          ..setContexts('response_data', e.response?.data?.toString());
        },
      );
      return Result.failure(
          BlockFeedbackException.tryParse(e.response?.statusCode),);
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'BlockFeedbackFetchException: Unexpected error - $e',),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('feedback', {
            'block_feedback_id': blockFeedbackId,
          });
        },

      );
      return const Result.failure(UnknownBlockFeedbackException());
    }
  }

  Future<Result<Unit, BlockFeedbackException>> completeFeedback(
      BlockFeedbackAnswerArgs args,) async {
    try {
      await Api().backendDio.put<Map<String, dynamic>>(
            blockFeedbackAnswerUrl,
            data: args.toJson(),
          );

      return const Result.success(unit);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('BlockFeedbackCompleteException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('feedback', {
            'block_feedback_id': args.blockFeedbackId,
            'block_id': args.blockId,
            'status_code': e.response?.statusCode,
            'response_data': e.response?.data?.toString(),
          });
        },

      );
      return Result.failure(
          BlockFeedbackException.tryParse(e.response?.statusCode),);
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'BlockFeedbackCompleteException: Unexpected error - $e',),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('block_feedback_id', args.blockFeedbackId)
          ..setContexts('block_id', args.blockId);
        },
      );
      return const Result.failure(UnknownBlockFeedbackException());
    }
  }
}
