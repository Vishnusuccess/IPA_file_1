import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/core/services/language_service.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/chatbot/data/models/chat_status_response_model.dart';
import 'package:trueme/features/chatbot/data/models/checkin_progress_model.dart';
import 'package:trueme/features/chatbot/data/models/checkin_timer_model.dart';
import 'package:trueme/features/chatbot/data/models/emotion_model.dart';
import 'package:trueme/features/chatbot/data/models/fetch_chat_exception.dart';
import 'package:trueme/features/chatbot/data/models/message_model.dart';
import 'package:trueme/features/chatbot/data/models/paginated_chat_history_model.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';

@injectable
class ChatService {
  ChatService(this._userTokenRepository, this._languageService);

  final UserTokenRepository _userTokenRepository;
  final LanguageService _languageService;

  /// Build common headers (Authorization + Accept-Language)
  Future<Map<String, String>> _authHeaders() async {
    final token = await _userTokenRepository.getUserToken();
    final lang = await _languageService.getCurrentLanguageApiCode();

    final headers = <String, String>{
      'Content-Type': 'application/json',
      'accept': 'application/json',
    };
    if (token != null && token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $token';
    }
    if (lang.isNotEmpty) {
      headers['Accept-Language'] = lang;
    }
    return headers;
  }

  /// Small helper to avoid bloating Sentry events
  String? _trimmed(Object? data, {int max = 1000}) {
    final s = data?.toString();
    if (s == null) return null;
    return s.length > max ? s.substring(0, max) : s;
  }

  ChatStageResponse _extractStageResponse(dynamic responseData) {
    if (responseData is String) {
      try {
        final jsonData = jsonDecode(responseData);
        if (jsonData is Map<String, dynamic>) {
          return ChatStageResponse.fromJson(jsonData);
        }
        return ChatStageResponse(message: responseData, stage: 'normal_chat');
      } catch (_) {
        return ChatStageResponse(message: responseData, stage: 'normal_chat');
      }
    } else if (responseData is Map<String, dynamic>) {
      return ChatStageResponse.fromJson(responseData);
    }
    return ChatStageResponse(message: responseData.toString(),
        stage: 'normal_chat',);
  }

  Future<Result<PaginatedChatHistoryModel, FetchChatException>>
  getPaginatedChatHistory({
    int page = 1,
    int pageSize = 10,
  }) async {
    try {
      final headers = await _authHeaders();

      final response =
      await Api().backendDio.get<Map<String, dynamic>>(
        '/chat/history_messages',
        queryParameters: {
          'page': page,
          'page_size': pageSize,
        },
        options: Options(headers: headers),
      );

      final data = response.data;
      if (data != null) {
        final paginatedHistory = PaginatedChatHistoryModel.fromJson(data);
        return Result.success(paginatedHistory);
      } else {
        return const Result.failure(UnknownChatException());
      }
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('PaginatedChatHistoryException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/chat/history_messages',
            'method': 'GET',
            'page': page,
            'page_size': pageSize,
            'status_code': code,
            'response_data': trimmed,
            'request_path': e.requestOptions.path,
            'base_url': e.requestOptions.baseUrl,
            'query_params': e.requestOptions.queryParameters.toString(),
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope
            ..setTag('endpoint', '/chat/history_messages')
            ..setTag('page', '$page');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('PaginatedChatHistoryException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/chat/history_messages',
            'method': 'GET',
            'page': page,
            'page_size': pageSize,
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<ChatStageResponse, FetchChatException>> sendChatMessage(
      String message,
      ChatbotRouteParams? chatbotRouteParams,
      ) async {
    try {
      final headers = await _authHeaders();
      final endpoint = chatbotRouteParams?.chatEndpointUtils.path ?? '/chat/init';

      // Special handling for init endpoint
      if (chatbotRouteParams?.chatEndpointUtils == ChatEndpointUtils.init) {
        if (message.isEmpty) {
          // Initial GET request for initialization
          final response = await Api().backendDio.get<dynamic>(
            endpoint,
            options: Options(headers: headers),
          );
          final stageResponse = _extractStageResponse(response.data);
          return Result.success(stageResponse);
        } else {
          // Subsequent messages after init - send to main chat endpoint
          return sendChatRequest(message: message);
        }
      } else {
        // All other endpoints with message parameter
        return sendChatRequest(message: message);
      }
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('ChatException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': chatbotRouteParams?.chatEndpointUtils.path ?? '/chat/init',
            'method': 'GET_OR_POST',
            'status_code': code,
            'response_data': trimmed,
            'message': message,
          });
          if (code != null) scope.setTag('http.status_code', '$code');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ChatException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': chatbotRouteParams?.chatEndpointUtils.path ?? '/chat/init',
            'method': 'GET_OR_POST',
            'message': message,
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<UserResponse, FetchChatException>> getChatHistory(
      ChatEndpointUtils? chatEndpointUtils,
      ) async {
    try {
      // Don't try to get
      // history for init endpoint - it's for starting new chats
      if (chatEndpointUtils == ChatEndpointUtils.init) {
        return Result.success(UserResponse(
          userNickname: null,
          showStartJourney: false,
          history: const [],
        ),);
      }

      final headers = await _authHeaders();
      final historyEndpoint = '${chatEndpointUtils?.path ?? '/chat'}/history';

      final response =
      await Api().backendDio.get<Map<String, dynamic>>(
        historyEndpoint,
        options: Options(headers: headers),
      );

      final data = response.data!;
      final userResponse = UserResponse(
        userNickname: data['userNickname'] as String?,
        showStartJourney: (data['showStartJourney'] as bool?) ?? false,
        history: data['history'] is List
            ? (data['history'] as List)
            .map((item) => MessageModel.fromJson(item as Map<String, dynamic>))
            .toList()
            : null,
      );

      return Result.success(userResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('ChatHistoryException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': chatEndpointUtils?.path ?? '/chat',
            'method': 'GET',
            'status_code': code,
            'response_data': trimmed,
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', chatEndpointUtils?.path ?? '/chat');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ChatHistoryException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': chatEndpointUtils?.path ?? '/chat',
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<ChatStageResponse, FetchChatException>> initChat() async {
    try {
      final headers = await _authHeaders();

      final response =
      await Api().backendDio.get<dynamic>('/chat/init', options: Options(headers: headers));

      final stageResponse = _extractStageResponse(response.data);
      return Result.success(stageResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('ChatInitException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/chat/init',
            'method': 'GET',
            'status_code': code,
            'response_data': trimmed,
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/chat/init');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ChatInitException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/chat/init',
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<ChatStageResponse, FetchChatException>> sendMessage({
    required String message,
  }) async {
    return sendChatRequest(message: message);
  }

  Future<Result<ChatStageResponse, FetchChatException>> sendCalmness({
    required int calmness,
  }) async {
    return sendChatRequest(calmness: calmness);
  }

  Future<Result<ChatStageResponse, FetchChatException>> sendEmotions({
    required List<String> emotions,
  }) async {
    return sendChatRequest(emotions: emotions);
  }

  Future<Result<ChatStageResponse, FetchChatException>> sendFeedback({
    required int feedbackRating,
    required int calmnessValue,
  }) async {
    return sendChatRequest(
      feedbackRating: [feedbackRating],
      calmness: calmnessValue,
    );
  }

  Future<Result<ChatStatusResponse, FetchChatException>> checkChatStatus()
  async {
    try {
      final headers = await _authHeaders();

      final response =
      await Api().backendDio.get<Map<String, dynamic>>(
        '/chat/status',
        options: Options(headers: headers),
      );

      final statusResponse = ChatStatusResponse.fromJson(response.data!);
      return Result.success(statusResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('ChatStatusException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/chat/status',
            'method': 'GET',
            'status_code': code,
            'response_data': trimmed,
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/chat/status');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ChatStatusException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/chat/status',
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<EmotionsResponse, FetchChatException>> getEmotions() async {
    try {
      final headers = await _authHeaders();

      final response =
      await Api().backendDio.get<List<dynamic>>(
        '/emotions',
        options: Options(headers: headers),
      );

      final emotionsResponse = EmotionsResponse.fromJson(response.data!);
      return Result.success(emotionsResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('EmotionsException: DioError - ${e.message}'),
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
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('EmotionsException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/emotions',
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<UiTextResponse, FetchChatException>> getUiText() async {
    try {
      final headers = await _authHeaders();

      final response =
      await Api().backendDio.get<Map<String, dynamic>>(
        '/chat/ui-text',
        options: Options(headers: headers),
      );

      final uiTextResponse = UiTextResponse.fromJson(response.data!);
      return Result.success(uiTextResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('UiTextException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/chat/ui-text',
            'method': 'GET',
            'status_code': code,
            'response_data': trimmed,
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/chat/ui-text');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('UiTextException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/chat/ui-text',
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  // Report generation
  Future<Result<ChatStageResponse, FetchChatException>> createReport() async {
    return sendChatRequest(message: 'create report');
  }

  // Handle chat icon clicked for periodic check-ins
  Future<Result<ChatStageResponse, FetchChatException>> sendChatIconClicked()
  async {
    return sendChatRequest(chatIconClicked: true);
  }

  // Get checkin timer information
  Future<Result<CheckinTimerModel, FetchChatException>> getCheckinTimer({
    required String stage,
    required int dailyPromptDay,
    int? secondsUntilNextCheckin,
  }) async {
    final requestBody = <String, dynamic>{
      'stage': stage,
      'daily_prompt_day': dailyPromptDay,
      if (secondsUntilNextCheckin != null)
        'seconds_until_next_checkin': secondsUntilNextCheckin,
    };

    try {
      final headers = await _authHeaders();

      final response =
      await Api().backendDio.post<Map<String, dynamic>>(
        '/checkin/timer',
        data: requestBody,
        options: Options(headers: headers),
      );

      final checkinTimerResponse = CheckinTimerModel.fromJson(response.data!);
      return Result.success(checkinTimerResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;

      await Sentry.captureException(
        Exception('CheckinTimerException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/checkin/timer',
            'method': 'POST',
            'status_code': code,
            'response_data': _trimmed(e.response?.data),
            'request_body': requestBody.toString(),
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/checkin/timer');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('CheckinTimerException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/checkin/timer',
            'method': 'POST',
            'request_body': requestBody.toString(),
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  // New unified method that sends all parameters to /chat endpoint
  Future<Result<ChatStageResponse, FetchChatException>> sendChatRequest({
    String? message,
    int? calmness,
    List<String>? emotions,
    List<int>? feedbackRating,
    bool? chatIconClicked,
  }) async {
    try {
      final headers = await _authHeaders();

      // Build request body with all provided parameters
      final requestBody = <String, dynamic>{
        if (message != null) 'message': message,
        if (calmness != null) 'calmness': calmness,
        if (emotions != null) 'emotions': emotions,
        if (feedbackRating != null) 'feedback_rating': feedbackRating,
        if (chatIconClicked != null) 'chat_icon_clicked': chatIconClicked,
      };

      final response =
      await Api().backendDio.post<dynamic>(
        '/chat',
        data: requestBody,
        options: Options(headers: headers),
      );

      final stageResponse = _extractStageResponse(response.data);
      return Result.success(stageResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;

      await Sentry.captureException(
        Exception('ChatRequestException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/chat',
            'method': 'POST',
            'status_code': code,
            'response_data': _trimmed(e.response?.data),
            'request_body': {
              'message': message,
              'calmness': calmness,
              'emotions': emotions,
              'feedback_rating': feedbackRating,
              'chat_icon_clicked': chatIconClicked,
            }.toString(),
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/chat');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('ChatRequestException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/chat',
            'method': 'POST',
            'request_body': {
              'message': message,
              'calmness': calmness,
              'emotions': emotions,
              'feedback_rating': feedbackRating,
              'chat_icon_clicked': chatIconClicked,
            }.toString(),
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<ChatStageResponse, FetchChatException>> sendEmotionInfo({
    String? message,
    int? calmness,
    List<String>? emotions,
    List<int>? feedbackRating,
    bool? chatIconClicked,
  }) async {
    try {
      final headers = await _authHeaders();

      final requestBody = <String, dynamic>{
        if (message != null) 'message': message,
        if (calmness != null) 'calmness': calmness,
        if (emotions != null) 'emotions': emotions,
        if (feedbackRating != null) 'feedback_rating': feedbackRating,
        if (chatIconClicked != null) 'chat_icon_clicked': chatIconClicked,
      };

      final response =
      await Api().backendDio.post<dynamic>(
        '/chat/emotion-info',
        data: requestBody,
        options: Options(headers: headers),
      );

      final stageResponse = _extractStageResponse(response.data);
      return Result.success(stageResponse);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;

      await Sentry.captureException(
        Exception('EmotionInfoException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/chat/emotion-info',
            'method': 'POST',
            'status_code': code,
            'response_data': _trimmed(e.response?.data),
            'request_body': {
              'message': message,
              'calmness': calmness,
              'emotions': emotions,
              'feedback_rating': feedbackRating,
              'chat_icon_clicked': chatIconClicked,
            }.toString(),
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/chat/emotion-info');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('EmotionInfoException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/chat/emotion-info',
            'method': 'POST',
            'request_body': {
              'message': message,
              'calmness': calmness,
              'emotions': emotions,
              'feedback_rating': feedbackRating,
              'chat_icon_clicked': chatIconClicked,
            }.toString(),
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }

  Future<Result<CheckinProgressModel, FetchChatException>> getCheckinProgress()
  async {
    try {
      final headers = await _authHeaders();

      final response =
      await Api().backendDio.get<Map<String, dynamic>>(
        '/checkin-progress',
        options: Options(headers: headers),
      );

      final checkinProgress = CheckinProgressModel.fromJson(response.data!);
      return Result.success(checkinProgress);
    } on DioException catch (e, stackTrace) {
      final code = e.response?.statusCode;
      final trimmed = _trimmed(e.response?.data);

      await Sentry.captureException(
        Exception('CheckinProgressException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http_error', {
            'endpoint': '/checkin-progress',
            'method': 'GET',
            'status_code': code,
            'response_data': trimmed,
          });
          if (code != null) scope.setTag('http.status_code', '$code');
          scope.setTag('endpoint', '/checkin-progress');
        },
      );
      return Result.failure(FetchChatException.tryParse(code));
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('CheckinProgressException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('http', {
            'endpoint': '/checkin-progress',
            'method': 'GET',
          });
        },
      );
      return const Result.failure(UnknownChatException());
    }
  }
}

class UserResponse {

  UserResponse({
    required this.userNickname,
    required this.showStartJourney,
    required this.history,
  });
  final String? userNickname;
  final bool showStartJourney;
  final List<MessageModel>? history;
}
