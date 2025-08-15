import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';
import 'package:trueme/features/chatbot/data/models/chat_history_exception.dart';
import 'package:trueme/features/chatbot/data/models/chat_history_model.dart';
import 'package:trueme/features/chatbot/data/models/message_model.dart';

@injectable
class ChatHistoryRepository {
  ChatHistoryRepository(
    this._userTokenRepository,
    // this._languageService,
  );

  final UserTokenRepository _userTokenRepository;
  // final LanguageService _languageService;

  static const String chatHistoryEndpoint = '/chat/history';

  Future<Result<List<MessageModel>, ChatHistoryException>>
      getChatHistory() async {
    try {
      final token = await _userTokenRepository.getUserToken();

      final headers = {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      };

      if (token != null && token.isNotEmpty) {
        headers['Authorization'] = 'Bearer $token';
      }

      final response = await Api().backendDio.get<Map<String, dynamic>>(
            chatHistoryEndpoint,
            options: Options(headers: headers),
          );

      final data = response.data;
      if (data != null) {
        final chatHistoryModel = ChatHistoryModel.fromJson(data);

        // Convert ChatHistoryMessageModel to MessageModel for UI compatibility
        final messages = chatHistoryModel.chatHistory
            .map((chatMessage) => chatMessage.toMessageModel())
            .toList();

        return Result.success(messages);
      } else {
        return const Result.failure(InvalidResponseCodeChatHistoryException());
      }
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ChatHistoryFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          final code = e.response?.statusCode;
          final dataStr = e.response?.data?.toString();
          final trimmed = (dataStr != null && dataStr.length > 1000)
              ? dataStr.substring(0, 1000)
              : dataStr;
          scope.setContexts('http_error', {
            'endpoint': chatHistoryEndpoint, // e.g. '${chatEndpointUtils?.path ?? '/chat'}/history'
            'method': 'GET',
            'status_code': code,
            'response_data': trimmed,
            'request_path': e.requestOptions.path,
            'base_url': e.requestOptions.baseUrl,
            'query_params': e.requestOptions.queryParameters.toString(),
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', chatHistoryEndpoint);
        },
      );

      return Result.failure(
          ChatHistoryException.tryParse(e.response?.statusCode),);
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception(
            'ChatHistoryFetchException: Unexpected error - $e',),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setTag('endpoint', chatHistoryEndpoint);
        },
      );
      return const Result.failure(UnknownChatHistoryException());
    }
  }

  Future<Result<Unit, ChatHistoryException>> clearChatHistory() async {
    try {
      final token = await _userTokenRepository.getUserToken();

      final headers = <String, String>{
        'Content-Type': 'application/json',
        'accept': 'application/json',
        if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
      };

      await Api().backendDio.delete<void>(
        chatHistoryEndpoint,
        options: Options(headers: headers),
      );

      return const Result.success(unit);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final dataStr = e.response?.data?.toString();
      final trimmed = (dataStr != null && dataStr.length > 1000)
          ? dataStr.substring(0, 1000)
          : dataStr;

      await Sentry.captureException(
        Exception('ClearChatHistoryException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': chatHistoryEndpoint,
            'method': 'DELETE',
            'status_code': code,
            'response_data': trimmed,
            'request_path': e.requestOptions.path,
            'base_url': e.requestOptions.baseUrl,
            'query_params': e.requestOptions.queryParameters.toString(),
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', chatHistoryEndpoint);
        },
      );

      return Result.failure(ChatHistoryException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ClearChatHistoryException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setContexts('http', {
            'endpoint': chatHistoryEndpoint,
            'method': 'DELETE',
          })
          ..setTag('endpoint', chatHistoryEndpoint);
        },
      );
      return const Result.failure(UnknownChatHistoryException());
    }
  }
}
